Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9614174A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743940194; cv=none; b=K/MWkZ6VLC7mJBpYt730pv4mIJuf1zYooFptCNd/SCqv+5j/CykxYk1M+4oB614DMChFWjXAkVFIbd9sUe96f+3NrU/70pYJbie+qZbME/6Jm2ZlrYN92W6JrhblyYSAa5SsGJ1qarY++L5PJAHJbJEdhel2vXtZmEBOKWLlpAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743940194; c=relaxed/simple;
	bh=xHHKsAyKrhlMBTw/2FAw3dy2R/iaNJxt/Jiq+P+se/E=;
	h=To:Subject:From:Message-Id:Date; b=OuJ+uVb7cUYRf0lluFm4GMv2z8UR8ytQ/fjhdQhbZMk7vbI3ye/njypgY1U7vXOORmO6Xz0MWP8Bv/GSZ/ceG3w2DHxpE3SJq93gI2CaU0SrOpcW1kP4RPXHEves1ZWTiE6Qre67y0pEujqG+1cSfTC5KQWA/SZAX5To3G+PtUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPcjxvjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPcjxvjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D9DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743940193;
	bh=xHHKsAyKrhlMBTw/2FAw3dy2R/iaNJxt/Jiq+P+se/E=;
	h=To:Subject:From:Date:From;
	b=BPcjxvjsa2toJeoemHeb056YhJbf1qEcvdcwa6mT7RimaDT5vt30BacPVEIQArIJd
	 mKrCXqkSZVpwu05RwHsG4spIE8Y1m3jCzUy66JeCCpjUpd4TX1t+vnDc6jJ1zi8MAM
	 DDMwRxiIUcVqFTjEgMHgE831RHz2of/RA/ctTWDMRBREwY2Odq7iRi6AaEzF1uWAfF
	 erIF0jeOgmnTs6WP9ijGjfDGVA6Sd50/NTAU3Rs6VReOA+UZdgrmV+25KAyRM0ZFEj
	 Kvq+uyeHbhR+UcIpKnCVmdM9pfMQi9+H9ACc73WcYNP+BL8FqbVHM901MnAnz7O4Bf
	 S+Z8wk1fn7N2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D91C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394019359.23006.14575006806371296013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb287e6d831ec9cdaa2a7ea71e48df982eae5cc2f413ce0995d741817bddd4a
Date: Sun, 06 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743940193
