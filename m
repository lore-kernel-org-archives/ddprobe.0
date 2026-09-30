Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7BE1B808
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790726434; cv=none; b=RcGN6pcjg4QWhP4T/cxFVcdkMurlK9Y3X8Xzzw5ASc+3iTJFUHKhZIIExtQzJt8FxsAN1+JoXShyaGdAvEsBCOwVd742O/PfARZJkBZv3g0YmQiZmyCBM9y7RyPf2TdHPvl0zTkYNdzxDGM5PeexpwoVO23M+8Qhp3rQbrnopGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790726434; c=relaxed/simple;
	bh=fuq/bHM5EzCjnge8Gk759aROB3XO0g2fxYQ2Arc7N0s=;
	h=To:Subject:From:Message-Id:Date; b=UXcCVNHHvl6GdXPB5Is4JarvC5Vg6tUh0Og8QbMPRL4nBUjMtUbaNjt3FSKbo/fphKeQ+SAnSikf9wxXChnmvW4AoC4theRbaMdwBYnb60ABlw5313CZ09Vjgl2Kq87r+blP6Hm40b3W0Q2om2wpYvHVlk4h98K4nSZ3tVXspR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncPo5dfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncPo5dfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85BBC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790726433;
	bh=fuq/bHM5EzCjnge8Gk759aROB3XO0g2fxYQ2Arc7N0s=;
	h=To:Subject:From:Date:From;
	b=ncPo5dfqY7JwR6oWhqyC55wKeJyaUC3AgAmqcvpA7W99laDTuyPgVXwaAlU2judH2
	 J5P6o8W9hlDM0TMVDY2a1jZQOKKCAZWJIFHeDxjgsAVEHfvM0gShrvKfu1kcm3zJmm
	 dh1I37PvHMMJvFuICknozktAhxT5avnQM6ib1ksUu89T6ip/lPRRvJ14NbFRCrZDKp
	 72Q+SzXSzt9SrA7NiAU/SaRvxTlwfEgpJUf2YC8a0p3amToFDansWcibomWBR2ml9O
	 jDRtMOoTh7Sf8VWfia4SXDmAFKJNcMFdFQSYMvTX7Pkuf1rRz3Y2P+caw/ScevxtiO
	 RA4I9B62KSdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CF7CA5FA5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072643371.10799.1618692000811859852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4994aa6aaf6123b5eee4a6fcdfeb456e34ad48bda002f546f12ad5ba5d52b5
Date: Wed, 30 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790726433
