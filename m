Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD8C84A3E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737585354; cv=none; b=o1D/GuTozGziA0bbu/qlWEltRaQIo2yfTWkq4RsvAM4rqSpguR2mqzz7RPhhXRFRs5Yyh1E1QJOdWKy3ts5K6fUW3otkVvAhoLSUqFFLvEVGUxpGUYGtLJvMv7ukZL4CBypaJJX6j2Gak9D+Rg3BA9n9ahyuFaLQ2h900a+k+dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737585354; c=relaxed/simple;
	bh=qscEPBiTvPPlK3gyXcs2Na4Nmqk0+LOkpoTfAFcaciY=;
	h=To:Subject:From:Message-Id:Date; b=IfDz9+gPcywV+bsBM5bgAzwALrSUeRSGPYKwrvxlrFisUB3e7i7R8YIDnc8iATXPiTvFY7JHJcxkBnfaMgvRKO0DSReWiL9WNYXLXP3oLB3lQpMsZQ4rdJCg6nr6nza7BTWm3nH/UxokqiXWAlXvGKlKYtpOTH/HsEuWGKBwX+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GyrDwKe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GyrDwKe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDBAC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737585353;
	bh=qscEPBiTvPPlK3gyXcs2Na4Nmqk0+LOkpoTfAFcaciY=;
	h=To:Subject:From:Date:From;
	b=GyrDwKe3f+HUSvBMdTq7VE0u/kTiboRoITqfbJDeqaD+vAS1W7wbwO2IqTCL7iQ61
	 hxdgERTnnBb0mttKl+mjmY/PrlrJ0Q4XV174Z762MvlwgvVZ+3uHmdTuiHP7IpthVo
	 s94QOMUaXqHL/oPHNh+WyZBMScUqoLEQ/ynmUGTuzR+uAxoK482H+K3dkNMFX8L/Kg
	 YH/rYkdX4Ss8kS48Nsz66Is0Xq8DPnsSp7H0LzQVelOTQB9xT3NgkuPEplXxMvABlk
	 WgVmopm1OSzxBeaPCxKHHN5OfpswHg9bOfHGBBdCGirsFE8vBt/Z5R/2ZVf/GUYRDF
	 gTd8DxNoD3S5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB91C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173758535357.29187.16843202039364502188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1eb6962916078cf15bbcfd706dc177b095e0a3d24ceb3179cb08dd2d7d32ee
Date: Wed, 22 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737585353
