Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074AD270EC3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777470454; cv=none; b=jKea9tN2Jr1+ExY3jePARiEcNJ2S1pnfvVqkZmMJJaW3qPhXbvXPK7BlgZ6LtpWJX+c0i8xtLKwCpGvEZwGDzmiFaulqWip0M8p/LW2dOTRdx0YH/uVNJtxAUCngceKXTQb7aWXarZaFeNG+NzrmLUIApckckGvl77daBhlwon0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777470454; c=relaxed/simple;
	bh=DevL4V2K3AUH8newTtC4350urhI8xtI4D938KdC8+VY=;
	h=To:Subject:From:Message-Id:Date; b=tSDZh8wlJeaWWk8DkRBQv/PVIRipxmGJJOjExOQ3et1ZVTsBs977Sd9XdN9qF4mR89R+rFOW3zVNMCGCYeYwq0TN2hLmS+P5GfO/hqIQFlCOkqRGoae2nmEIHgF+0T0Az+GbFr83Jj5nA7lHhYR3C9V6671eFyLmjuSkwTGEnYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFP4DTQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFP4DTQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8181C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777470453;
	bh=DevL4V2K3AUH8newTtC4350urhI8xtI4D938KdC8+VY=;
	h=To:Subject:From:Date:From;
	b=LFP4DTQoKQIDliY2X+nvHcZnjLfzEfY+nUCvG2O2vaK7eVqj4DhG3p8y6hMXA/qBY
	 IBltKkuCNUSNoNM0ImSprcno6s2NXn4wFsm5dtQvieW8fg9Ufcctcp0KsFkJzXvgO5
	 bIsaOdROgkmNd5BW5Vpzkc/1mRUAlYTajLd4/obxaPGPUOzSsbxiJWXxqv5oSOKLKS
	 pD4JcI2exVx/CyVaf0Mt05FmPiR2AD8Cu04lyaSZKY/eS53jgm4PZexb4BDkZVnPu4
	 gpH8lh/i/K/ZCUca8u8WcSU6BVU3am4zqK/EQjNk7v6sVqarZ+692ZsvCTjs1xhNzN
	 xBm5ElT5htVGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB1CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747045368.24110.6556676529781603403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15e48bb583edff7ae3b6667177d38f27b6900f49a1f618c6e21d8bff4b82035
Date: Wed, 29 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777470453
