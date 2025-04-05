Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F1F1D52B
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743868193; cv=none; b=txXiadPkowZgZEWhKEHWvTJH9GNuLTd+nDUpyYy/x1rOFaRFE/Xv8DgLgPd2+SGYzJcE5Ktm5G4VdaWjpfjc9C6fxds985FzwJjBQKOWaf/3HBgNmjRTyW62p0HnDdbQEqcrS/HKl7sGQpswsoXyF/381oLdJNKOct3IZA7Fsto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743868193; c=relaxed/simple;
	bh=E4JJzWoZtWi49HyluAVit4m9wiW9rP8KNZ5354qcL/g=;
	h=To:Subject:From:Message-Id:Date; b=Q4zC8oiviswID8ZZdpwTBNC4PbkixHBKqaDDvq/dWvZXD4cVnKfaPuoTWdvI9ref0Clnd1bDaOezz94h1ynE5c3h1kJLCF53UYve9eEkyQ+R5Xgp14xfCUsnKc7Gw7mF8mO7p1xlqgVLycAaNzcWUv5TL1ZzCo3vpOkRY4eoi7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTG9RH53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTG9RH53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDD7C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743868193;
	bh=E4JJzWoZtWi49HyluAVit4m9wiW9rP8KNZ5354qcL/g=;
	h=To:Subject:From:Date:From;
	b=fTG9RH53OfpSgP/chr+hBelxnTZrljMTd5H95IBtx1DCbPMpg2jHJEC6qJtxZm5Kd
	 HFzGxPQdirp/sEBWhagmLOoKoQPM5GtvpkY0NaqlkeoGc2EJoGvZagxIrvP4LJ04ZY
	 ihpdZ0HHaaVhFX0do/vStyXVMK8cEu4ZM3SMJnVZXiJ3bY4jvYKy1en9FQvzwpjd3f
	 uyb7nr5Jb/zKyTlim+9vcy6/Lm9YLlzZPJkzGQ81xP4/pEMFSJBLM03TIrK8x2T8VP
	 H7P5VjUsV1x8F7bCo0nvHkJVk0hITujwFHndtNnSX0ERld9yxs0XSNLa+pGwqmuUK8
	 68th9F2LQ7icA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B45C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386819359.27863.4123955660529904356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9830dbfe7c85029fcb1c9f2683ecceb13c73c4cb556f9587e4c584a276772f83
Date: Sat, 05 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743868193
