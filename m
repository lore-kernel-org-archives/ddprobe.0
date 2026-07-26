Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD1F372EEC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785068434; cv=none; b=tCxWSdSGSNALV7zX9PIsYM24SZYdQvCVEpNzbuZVpNsRrXotUE3JKiaCbXbjqBSDVrhQZGOu5CRz3NKBYGMzpm0JvWHufpGVbYEhWfLsSTtKqgI+6CU/GwKgG0bRPJW1CL6DMvBe6RIau0d94o4lKW0Jdc5BtqRNxqBOdUfq6vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785068434; c=relaxed/simple;
	bh=8YHaq3k7nUG6jud6jo9TYZMFECmJNbNQr/BjvRAaOIw=;
	h=To:Subject:From:Message-Id:Date; b=XNo+Rmar0sIdF46L0rojepXoKm3HSbXix41GQ3UhctFbnsNCdcsf8xUk//poE6WZgm4buU1g8saeF4hMzxYD8YuC0CAihk3zMwpCWMOJTGQaniaMM/3R7Q6YyInqoIOf+CNluD0RiJfWHdWLBDdrVO/87dUC0+Jvd2+p8gfFg0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6imQBba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6imQBba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9D7C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785068433;
	bh=8YHaq3k7nUG6jud6jo9TYZMFECmJNbNQr/BjvRAaOIw=;
	h=To:Subject:From:Date:From;
	b=S6imQBbapGslSzoCyznoUQC41+GjZtTza1qgfixjyPXJJAk4EDDZ2HRFCbXcVlt+v
	 3AFFsvEJTthkUTSicf1klVckOmP3vWWqXqO9Lgot1Wv5ZnE+8Vbsv2scvB+M3Tg/gL
	 bypq1i5sVDOg6w64mJCdAo4i0zhK4uCXGLNdHgJFbwFS0+4wwDtPtCQtTiOJswC6pH
	 n/1HzHA4e3EJTNIK3sl+/ZolDPuB4c8j87My/NZ518SNq0vgv7ghoIvl6mtsJ2bnvG
	 QpKuwRaVwwgN5Ci1CM2fmOS3uu1RA/5pyHpjfqj/mGnD6MeFiPdl/SC0ahtCQR2Ijt
	 7RjEXCctslcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE78C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506843368.17881.15423058174652153034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0682907a372107d64d6a9708d094c97a57b42a720f051dcde104a70fab20cdb
Date: Sun, 26 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785068433
