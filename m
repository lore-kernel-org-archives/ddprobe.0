Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C3414F90
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743927594; cv=none; b=KnVyTKKre+cyvikxWFIvcSePTk0zG1PNw6hsYKMptgLyxYJ/AjPaB/E5/vXYR5tBkqyfW/FzyYETz0lv990g19vJZO35ji4mcI/NJs/I0yXZxj5O7sCST3zpeY3a9xAxS6sTI+3w9p6524OyxPTFzF6O952dzNlcRz2O9P5Jor4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743927594; c=relaxed/simple;
	bh=w17pANprTnf7/0Y5hrz5AkSTG99ADQs9UQPkmrv63Xk=;
	h=To:Subject:From:Message-Id:Date; b=dzzDfIi/yTrEjQ8kb+EORjmSfBVJjyzXMO55FxDXj2dCW9WLvBdKkErsEvov1edQIoU3I0FaVhJo5TlGTHCaylfMl0k8CCqy/0MPt5DBub962Rwuv2G4BpubGh64x4Mj+54rnFDZszjSSoFda2v+5PAsBkQHeqKEwokOUwDtVwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khyZtpR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khyZtpR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63A4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743927593;
	bh=w17pANprTnf7/0Y5hrz5AkSTG99ADQs9UQPkmrv63Xk=;
	h=To:Subject:From:Date:From;
	b=khyZtpR68mBzVdgLtYuRBRAwSw8eZ1FkALE91qU0OFOTGCaxXAVkPzCBXQOPYUbUW
	 M9CrGh5O7qVgKNlM5RCU60ICBE5wVlhkFxPKnF3tqMQbWEFY6LkrUec0o3NFLTyLzn
	 CpkgcAbrgxuVIRGgV+jgL/vwLr7zfx/2aS6+0ZdfEhWPTwHSMlOKfyNEiBlTTDRVh4
	 Wc7Rn+aYlhXgeNdDzAi9/ZMvQBawrILeDR6HPr3Q2m5ulkA4CUCudrtRnpaVSIf+Pt
	 TOfLOAvOuDJYJaT/9OzC5RgWR6339INxTNtsafQleVAtOi7ggL+ikTuaenLXhb4gf6
	 aFVS0N9Iu49Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9C2C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392759361.20535.2087567263681024547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dc0769b28a2c2553c2a90fb3661737f8a05c4e120f45ed460e13ff4b931ef73
Date: Sun, 06 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743927593
