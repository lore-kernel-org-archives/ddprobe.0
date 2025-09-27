Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342F628695
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758985794; cv=none; b=hLBbAtAL7e2im9Q0mDU6DKQPEus3lSQtTKP7o6w2IKmq8qWUyB/U15ReY6M++Tettx6waH7Y+V1GMgLFW1sI4YUaAJAI2pqaWTTwYPqtmVyjv45fOPA60PMguMD1b0raCJVoPy154091bZBKLc3tmL8yNL7YA7fcpj2CnjU7C7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758985794; c=relaxed/simple;
	bh=kelgl6hPJIQVOtDm06J7dD/VlM/sF/IXAI1lXVM5g6s=;
	h=To:Subject:From:Message-Id:Date; b=Ppb3DpNjdfMB49K34j/GYpTT4LuriPYT9YRKzmVdweVEIDvEm84UcEogQX0367n+Ba0H/8w8K8nNz+3C0Xr4YCWM0WDtx0qSJPGl0gjxHUXFLdFkTDQjjAfTWfcLW+ZsA1A8ZkHh5bFVqvJceIg5+bUL3w4QKHqna4L14HrEI9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTsyya6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTsyya6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7960C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758985793;
	bh=kelgl6hPJIQVOtDm06J7dD/VlM/sF/IXAI1lXVM5g6s=;
	h=To:Subject:From:Date:From;
	b=ZTsyya6Vmsr/YIyzP2p8ncxP8B4htyDG0x7LEwvUCN7XcAR+8PQrZZF9uj3lA9wkx
	 4ClNApON9RyUWNCSNkUI0+EkXFcGOYVIoz/847O0y2OTOoCLaOf194RCGcqc3UKSbW
	 vg2R+E7NCKVErFCxGCIlCdSsDZXcHZvaZpzMQhJIEBLWKjEBH9M7avsRa8I0xkmtx4
	 sI6PjdJW/qY7Mv19Gv+1fmB0o5+uL0VzsVQLVivo3SbiCDOjA2EBIsAeHZc4v8IEbW
	 vmrYZ2PhYpBS4svjUDNbI7CrAFqVPjlB6Q3xEzY5A2C5JGjMkleQ2OtTmBI0hr0Drt
	 PGLSLg5RCKfSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92567CAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898579357.7478.7469398407180165886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b545e3a3b9fdeab91c3dcd32f4a6e24549462b803e3818bfef5cfcdb344255
Date: Sat, 27 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758985793
