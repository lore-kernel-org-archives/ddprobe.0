Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA751CAAF
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715512343; cv=none; b=qOa2yOeZqaFB6de/x8SUf0SOh7VwmPHpi9ALIdWDqvI2iz00KwJLoDj1ov7cOl8kvGSREXYuuEafGqBejWr6D8j6u99wLQd8i0HVTVOf2oBp0loOUdZ7331mUbloEPnfAegmIMxniTkvDSshiLVBuX1SeWU3W14p35xPQQzUhdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715512343; c=relaxed/simple;
	bh=fUyFJ9ZIrgS0vJ9HVxnIhDF5rZaT6fp5SyrrLmRtO40=;
	h=To:Subject:From:Message-Id:Date; b=k4awXJTX5TUtKXHMU3ZCciBs4EN+16iY68d7mjTHz7+1nbqvOOHCGrUlGdUD2oQ6+JGViWtxwIdShAHaNlkVvn/fPLzsHts2fslEHAyETUIz0JsKp9Z+dsbBWRLGX11c4DU4QmvgLcc5cXPR9dCOV3DWIaE9ydIqqAyZDH0YxG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MML7TA2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MML7TA2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7ECFC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715512342;
	bh=fUyFJ9ZIrgS0vJ9HVxnIhDF5rZaT6fp5SyrrLmRtO40=;
	h=To:Subject:From:Date:From;
	b=MML7TA2Jmz8I7ONY03mQB9BfRi/+ngYAkVq+XW4fwr/nSTQC46n+gCucXpn+35olR
	 uUnWwpzJp3q/Wb9E6bDvUAvZ+0wb+RznAh1g5S8J5coO5zFrKD7V/FCBFK/zxoNg1H
	 Zb13I+Rc7vpjdIbmvEjvQdiCUn32lf9njcjVGeQq1DP3pQWib6NCXGpoaIH4j4gzgZ
	 2PoHmWBpyYkwv9H8cY66ZDWFwSuFQqxVu3ddh4+LW9WISVabOdRH/M9hHwuA3TFWwt
	 W46OjedJE/QRx1tCvlz0amm78Hq+E+PSYWJPmK9rq1pO22pYn3mAeeQ/WM6rayrcTV
	 lg0xncWSQfNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD023C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171551234281.22878.11223614193848083667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d4f974da679057e4708d016134104d345734cc5b75bc3179913d0c15ae99f3
Date: Sun, 12 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715512342
