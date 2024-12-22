Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA9A188CC9
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734881754; cv=none; b=guAHIfzn7rFivDXeKx6y6MqWimaXKDzUpTc5EbbQ+VhhtmKACxauG7qikNIFCmsMPAgBRg5xYjZKRQ6hScPCOFbhJv2s9/186f7FFOwb0gd6imz42w7cClzwDRBZLPLC58rEfcU3N4UstQe4rQNUyIB9VxbKnYuzMWyd5zPj4y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734881754; c=relaxed/simple;
	bh=MILMzTl1GIZJNuccDAEnUU3SpN+n+TkwgZUTLbDYdfg=;
	h=To:Subject:From:Message-Id:Date; b=iuKgv7HJazAQkDgBrpqsLB11dpYztpNDTueOW9Tef48zPEBX+7BMTvQpSXSJsLlX4Jx5UVOEFwZ5FC9EHCqpeaEX9i2Kz8vs4g022BUds5/0tLV/zdJJNoizutoMliqbapyXrKbFtF35hAw6g8yMojWiFlbEG2rsNzEU/an5Z7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcOUb92f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcOUb92f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F9CC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734881753;
	bh=MILMzTl1GIZJNuccDAEnUU3SpN+n+TkwgZUTLbDYdfg=;
	h=To:Subject:From:Date:From;
	b=tcOUb92fSo8cJ8ySEGji3kWAxPXq8fdMrZuJda9G1b8VdLv5+c56xnNAaMVWOMcSu
	 +rVK5MAmjXnMR1MwlwrcPSe9UW6xIWHGSwM+m4jyJKWSCaFzSkmDclIqBGcIqWLu9T
	 Hi8+pRpMi3vCYqXNaot3fWF4i3dZzH8LtefjP0aP/UbXa5IwjUo0jTIkb88zGtMpAl
	 9FTRFbIOZGSYIdLxKpVP3PrMhWRm2u1+eSIyns8PuBeGgCIpg+M9ophiofZZ4xTPCk
	 qVsYcoC2MVksp5hbaaOOsqW/m5JcS4CPUCPWb+srJ0pq1dNjmNHBitiHunk3n717O+
	 8pdlsvnECAZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968E8E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488175358.10710.7886292788613235173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f7bd1b2949ed9f428664cd7ac4e738a668c541fc3afc461f0f4e5a0f7829007
Date: Sun, 22 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734881753
