Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362EF199924
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737439554; cv=none; b=tlWHMtzs3n3J9IZhxuJu8YFF3DljeSyZ4EU0i9CV0qfZTFlxbNk+NdRbsq8mgF3O9eX0XNY5AIdQNYpW1kJ/VRgbyXOjCXe6JYqxKdZH2S5qOaXx+xNzIuyoaewfxHBg+XVGFYllSXEehuDvqcwVySEeHex0nCJsN502Ue66KsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737439554; c=relaxed/simple;
	bh=LoHumJCmmYawibux3YsQvHTx/8gqsJ7EPF5CftMwnvk=;
	h=To:Subject:From:Message-Id:Date; b=vDffELuO+80IPSiIjptoA9+C9SMVHFiyG9L9clPVzcfe4OF7tfCyYhazuI8/EACrV+HITsugpEKKUw6I0FIkAnmxDwzaQ4VOYKu6PkCeLcsHVfos5iJ6XuaHMW6o4pBhNcxhYsIVphtoe5SafYCnIsLSotOcVugwcYMtJLDLR44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tn3g3RVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn3g3RVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AF5C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737439553;
	bh=LoHumJCmmYawibux3YsQvHTx/8gqsJ7EPF5CftMwnvk=;
	h=To:Subject:From:Date:From;
	b=Tn3g3RVF7IaZR3eGKNvEMt5tve0h9Bi8j4fg1QCieIER0K0Z2pQWunFT0oGrUW/Sn
	 QoNPK3d3mO5h/1r4lu2VTOGa4YJ7Mz4jDMmH8K0xO4xdn/kxPG3fmnoopXYekBfvUj
	 jQ51FuRMCLD6X+NcPRE63wLOl841JEojGKQTh7YFFh0SRCIMoMvZJUrLNK8sV1Be9H
	 rKVbnLQ65RzYO92ugCbMocKytYIZ5QU7rXH2Oyw3Fajvxbf5tKoNd1zPzBcD+iqw/N
	 HIOyn+tasZscn7O42dgfHYyAdRCruI802oRzzGWMUDZKpO6Bi/k0yOXTP5+KyjiWrE
	 ZqBxO93CDJYjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A705C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173743955362.24299.3631142413018828894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14d0c4c601b939e017beefaab8709a64f19c3658072bfa3684f0a863b758a8d
Date: Tue, 21 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737439553
