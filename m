Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1188D40DFDC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777135654; cv=none; b=F5mA0GcR8x5ywAWzdBAzki7RRnwRvWnIvJKVyhat/NCpe5WNelBLF2CY/+sHiy3HUNKYcl8XXIOI8J4heGndCfkaEuP1pUX4Af9DmlfS/35Y5m0EwiHfiUiZOoRDz8I6qblVYxUiiNayCqrppCYeaJBvqc9oSFrZz0kz5+W5WOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777135654; c=relaxed/simple;
	bh=6idkkX83QatJx3UdcHXGusnVy62mnF5JRva2S+IMb4U=;
	h=To:Subject:From:Message-Id:Date; b=iLvvx1OAn1D7Ir059+nryF6wMNXcgMPMIZcJ0ZNs6E+GoqIC6zMyMM1enDtkSLHkpi+N3kbk4MW4Wt8J0VB+s95HIrcU0TogyO8SrI66TBF+QR4xSX7anXWExuZoGQu/nYG+sCwafdwtPMVlXCjZlP8OAZPgn4eR10tK1/VFxVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qL+24rEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qL+24rEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB597C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777135653;
	bh=6idkkX83QatJx3UdcHXGusnVy62mnF5JRva2S+IMb4U=;
	h=To:Subject:From:Date:From;
	b=qL+24rEtfrQtKk+RB7fRwrsifSo9pfvMXTPhUzwIZlntd0JE1KQ0NSy8uQ0IP+pNG
	 Ej7bZ5E3m+mhmM82WO3bthJUfU1Dj34mBX3M/bU/t719YBFjWMgpAjztlFpxYRcSW5
	 IDr2KjeAKU2GXW8voOqfnwrX1OOqa5k5S+3aFTiLmK8SbZw3nckVBTyGuG6LceSqUT
	 473NDsRxqmwAfnhd4AVQTIbeBmrl5/5jBWtsiMBEIQRuXly2CAz61NaLS19Y+u9UhW
	 iaIdG7MiZJBq9fwaGQr6R/S4OXZ9rzCYan2NzcogH4FFvU5u/ykVH65539ksUXvOVk
	 uygDXMWYWa14g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA454FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713565368.28147.1642128234167334233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02aa4d3e499f21125ee9efa38e23e9597e77bb1b6244ab948336cb0b41ec8e76
Date: Sat, 25 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777135653
