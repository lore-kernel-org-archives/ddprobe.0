Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A88119A
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743038394; cv=none; b=GO0np8hKN9o/gZL/J1L+KcDqm5u4XY48/Zik/jX0DcMR3wI6ku//8T2A4amWRQK8V9LJS4CjdfwtMQKFOBEYyZRRofmWRUO16NFFMRIyCCc23x0bIU1NTERq2pCziVej5H0nJJmK2jwBs5Cyrsq0gh5hn95dVVdhF4OdNCBHTAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743038394; c=relaxed/simple;
	bh=VL6EAErjFPFrYW0l2KqmtG0d4BODS6GG0qw/Phe4wy0=;
	h=To:Subject:From:Message-Id:Date; b=iz5kq3nH/YDtWn+gmuMVV9ljQDaOnaJRweN39royCtWzCqzH7ztDB7748PbcZF/sEmApl8M5Yxe83kQNWQmq+kVDP+pIPOjCAa488bxgyotlsPLiUZAHCpabejCN3tF9/nK4PBVvpW6RqBFONk/RYHcVd8thTk6WqcASV1fKo+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTwkJwFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTwkJwFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF98C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743038393;
	bh=VL6EAErjFPFrYW0l2KqmtG0d4BODS6GG0qw/Phe4wy0=;
	h=To:Subject:From:Date:From;
	b=qTwkJwFDTzlICjALXabA+35tbCSTzMRiVcqhvzsZC6kZNW83o6wRrkFZYWtgf/OTi
	 FqYqaWyemYqDlBS30UhmAGUVQ6Ls4TjDsYfHFRxRPiH5qiq8bh6+RtrQRqSnDR9xw+
	 m8614asceNZC+sysHAiJWKEPK+OYa433gx1wgbP/g3GhVtW2TtUAd9UN0k+Ty4czRO
	 q3XPwyH0L+GSxVKGTKKwrh33JWDfmUHazZfZiD+y04HiMSGNlMC1G9A/FoGqysK38q
	 vBHVuvFOcUw/fKFaQP3TSI5702vnSolly1+wjg920riFOAWyXvu7Fy3YzJy9LhR6g/
	 atbX62Vwd2o3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF35C36008
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174303839362.22367.6227437875761061783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506a9a202c5f188b4783df76d2b28c803f686f3e29997809dfeebc8d1c1f6a57
Date: Thu, 27 Mar 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743038393
