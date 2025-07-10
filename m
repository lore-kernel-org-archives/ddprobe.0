Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C279D38DD8
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752175193; cv=none; b=giyUfnaqbjF28eNScDZrP54LOnX3LPwx2Px+Fx9eP1+XmxaTF0BVHKUAAuF4J3ThmavNv4ULOSuEvDaZsos+HwK3jZj+xRqUI/a7R6burtwsjf2FEwfIMOPRQmTjFA8vkD/jR63oUGC0HkT1bqhiF+KOo6sMPq2t2WHFaCO2ayg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752175193; c=relaxed/simple;
	bh=yUCBpPjS+LOplFTKMWehKUZkVDV62VT/ZC2UxPaHPdk=;
	h=To:Subject:From:Message-Id:Date; b=PD0WU/PIfYs7eeHRxDDJ9Hq6yW88cSuL6Qw06fz22EAbVg+3AynQz5wYWos1OXCIBv7vTBZDtFN43OFIQT10JMFpuaGUFtjaPdh7wLf1pIU6GKEzLym+u+RcJhHOghO0x4B6nXxRjl6cKz6ZlclAa0xPAqd02yXdRXVrt760Xa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni7XCW3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni7XCW3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBABC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752175193;
	bh=yUCBpPjS+LOplFTKMWehKUZkVDV62VT/ZC2UxPaHPdk=;
	h=To:Subject:From:Date:From;
	b=Ni7XCW3t+LUH04Fc7ylfH/3Vh8Ncpb2rrCQBBhHyoqVSHOvge6pPuaJHoYGMEcC0P
	 4AmROj4vWV1R9XVcqid50xvkJnjwpk6yc9j+wxuDwlSpXLDeerABVJEu1yUqUYPNgH
	 dMysIYHmAglxw6aoOGgQTVLAevuLfklVooHfrxk8YlgFfP/nzxAuXjbLqemkokEXfb
	 IG8IKmUJ7YiPDBKEkDkQhXMeCs9Xg2SI/2A2FB4af56NlpCPt+U8XIkTpijMijdROO
	 y2h68BSr9OXB/vUn340JiLGTHOitJ9SG8mlazcuRt5Yvr+8iAYOV7bkNi6saWDphAd
	 OPsA3zqmVYhRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F346C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217519357.27905.3073615747164070702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6bb342b1a43190474deeefc4624e68309f59b6395ce0e1faac2ea89be7c869
Date: Thu, 10 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752175193
