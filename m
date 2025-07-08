Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8332B2DC342
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751983794; cv=none; b=eb2ydM124PMIWivXdgUeFUHGZwm0cKx1AlP2V9QGS4OoW7e66+w+kOdPlHSFZ6oLI0UYdfb1Lmjk8c3MpW8eC6jD/vG8UiwMex4YrNI2vXJ/k1B6Q+XBBAs7Z8QKVh4RyVQ47mZephpmGHCpeYqvIu/KvfZvM8pWv3Whg5L+i/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751983794; c=relaxed/simple;
	bh=wTnoOQ0Mh0cJI3kxT9enAwlACAvHccrI2jB4y8pBN98=;
	h=To:Subject:From:Message-Id:Date; b=LaUwer7tPuMtAf91WiHMPXKz0j8VP5fxowyhjpUz3fUWd2bdz+/pn3+6dlTUHUKF1LfQWAWCKmSRi5vHByFoY6lvSzCzVCyaYO1VmStowYug3/Wia4p8HxC/WvIx4PFuBtmZio2tNi8wIB0CkwiTqmRweAiDJmBwoIGOKp4jJoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mO38kLlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mO38kLlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD4CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751983793;
	bh=wTnoOQ0Mh0cJI3kxT9enAwlACAvHccrI2jB4y8pBN98=;
	h=To:Subject:From:Date:From;
	b=mO38kLlUemz8h41Ds5dBdT1QN74pT1Hr7yng6tCzAmzvmei8/BDej5Q29VZoSn1Tf
	 6D2ljr3jAbTNOO/q1U4SDJMdpQCgQK3dlOgDe20aoziWCqYnilnC/kd2MtPXsWLDLW
	 SfLB0EAuEiB5yZrUIJPHDbDBbixVv5VyQUQaYQ2pDNgQIPBpDM3gstMKYZFIef51Gl
	 FxWii77z7ROhm9VJS4UjSk/GvgUjpFLu9VC6mpkRlxnaYZ2rQ1ktW8siM81gXlF4tD
	 BCunplf794B6UuQH/DFOk+2W2I0DSvJa5+wpgze2MlPduJRy1IknFUOgOLFAJT4LBw
	 JaTcp0dB2Zr1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD7C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198379357.2468.14145067068919540096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4b40a8195ed9762100f3496d8e3d3a1bf1504170f7c1211e2eec9af4e242b4
Date: Tue, 08 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751983793
