Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359721AAA29
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749520794; cv=none; b=bK3S3tvsDHStwnFfUB0F6RtmRL3PdNny5/D3vA/U1IhrD5oyRUXMXAnW2Sowv0ZDnPBkVpAIu9wSACw2idrO9Mxu1QlzYPPhqZPF4b8yjLV+XNly/Fw5IDD0VLHuvqrnkBazbfgaQ2jlG6vGqsNYA73H/+TzGyoSXR/13Ln+5cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749520794; c=relaxed/simple;
	bh=9c/dRWQ9OLz9DZs4iZN4yiNSUXdi8cjJlJpzV3BKEx0=;
	h=To:Subject:From:Message-Id:Date; b=uzj5iTar87EsUGhhsOleG2KZ3PtBMMTFMo0Avd01zA8rJZJwsUPoGnJe2x+OuoPupL8zb199CCIvozYUp8IblDrHZKcJF5olZOFjOYQOAFofcaBhZLilaEtv+st4K4tpuMuCrKUYZUVJln3BEsrAppUuibisBlMBlVq7kJP8NDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii7lnujw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii7lnujw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EAFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749520793;
	bh=9c/dRWQ9OLz9DZs4iZN4yiNSUXdi8cjJlJpzV3BKEx0=;
	h=To:Subject:From:Date:From;
	b=ii7lnujwxnX8xSgPp7ju7jtnzjbO0bb6xLA9E3SAQ20eNpuzInn1WMJewBGOMxVO8
	 yV8UH75Y8AkLU5G08nEp/X25g0B5L1uZ8mw+0Ifd+HO6yKTqIborNYZbcA22euBMla
	 70JEYPM9ncruZiqmjezWBup/ia+QgSM5CU2WmD73K66zbvfjsttgDkmwJiQxNtn3wJ
	 tBhOubbhyZGb5oW6+BNURzTgqe9o1oqQcgpcGETR+D3Ke9sNISJ5URrNIir8BMyFBA
	 IdbIIZkwLvRZ0DJcH0b4Qe1/uYShZ+tGzSp/H1/9YaSssvll9W2k4UxOiRRuGCLbFC
	 Nimhc3d3qVQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C71C678DA
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952079357.18894.1287564753912927105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3371b77c5f02a829e85dc63fe8efd79089b101a0937042b698743fa6fb064c
Date: Tue, 10 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749520793
