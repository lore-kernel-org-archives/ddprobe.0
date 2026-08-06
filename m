Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41958499F01
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786054234; cv=none; b=Ax1GjWwElGAx6F6AzVjHMdPJZ6TZ4f5b9hOdxLOsmcRoTJ1+On/8zkGIQU4yapGXK9E6WhWie9sRIyiIY/CkIZbEEA2LwRDsJgcniPROKjwDDx5ZMXYrPPcyRDV8SeIZcBj5UzGjwAd+rsJ4LoovTrdqZA3uztzqIvxyB1JxAq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786054234; c=relaxed/simple;
	bh=3rYZovaw+nj07Vx6wVNPOer8dFi0rq4HSI+U4rvYtIU=;
	h=To:Subject:From:Message-Id:Date; b=RhDz3E0X6TCHrBEF29lpXAGCw08QhliGBC7j32UZWxGEbbgKTLq1agT/bkzqeBp6nKMcwjt/yTWpANk9ByAFIqY/PJPlBHU8Efoam0UdrmxBXik69RW2k0jml222K3lBQW1KochP7cPd+f0uZbtXDcnhSaVRoJCC4tBxzRq7uVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaPk4aXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaPk4aXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDABBC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786054233;
	bh=3rYZovaw+nj07Vx6wVNPOer8dFi0rq4HSI+U4rvYtIU=;
	h=To:Subject:From:Date:From;
	b=VaPk4aXH6HwE+TEcFxY6dC7Fr6lBfecdj++A+rVTnZdDjLd8ugLGLVdt+ObWlM4HM
	 X6Aio2IurU3am4WelE29BPyiuM4qa6wz4U1G6fADf3iOdjC7EfIKOVUNoR3GBU6OMR
	 0PKt4VQI/FtZie1lW9zDA4+12K3KRynzmPmb79rxwkjyWhh8nvox8rsWnPzpcmExKd
	 O1zNbe6rDFKv5IRcl3MAyT/qCPWax/CSNDGk7udVhAQ15OPOLsfLT+aPXVjMvOV+hN
	 VzWvgV7z2LfSCtc/iOWCn9WPw2wB/tn1Np95kJytE27HKMNgFEG4mf9Q5QnucLX8hR
	 lpq2C6gAaMkHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DEEC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605423368.4738.15041105045301885353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e519716568d03e9cc992fb9acd28d8c16072eb2cbb8810630d6c29fde1f5d73a
Date: Thu, 06 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786054233
