Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D852980A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763907714; cv=none; b=pi2Qxl3ssQPoM+/MI2halKv2kH2H+5U8BcoxAbcCtBpltJH9/oD0u7UYguOUQn1qEoB/LagQ2coabhc714dlWk1sZPy4PSgRXlz7R80NEr2UZWSWTLBhbZOFRy5MVl/bZWJWmkDObvWGloExdPJM6FHteqsTjP4z1sfrR5l62mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763907714; c=relaxed/simple;
	bh=ruoW98J2FNPDuDaHrR7CGLWookkodb4mdGDDSMGOJEg=;
	h=To:Subject:From:Message-Id:Date; b=aLN6LwL3pa5krG1PFgXs1cVLohYihzE7ll148+bkHl4uhH2qeCkPhvhq+cmry29/75SABUudgy7P4/ySgRbPohctjhfAf8RFNmgCr8bM7yODZGVXknHVLNbFzRFYs63wLryZC/v68Z2VUwYTvQK3dZbkm/o2Pe2MSdRwOnzt1eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZk97zDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZk97zDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30D7C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763907713;
	bh=ruoW98J2FNPDuDaHrR7CGLWookkodb4mdGDDSMGOJEg=;
	h=To:Subject:From:Date:From;
	b=dZk97zDR35Q048p/Z1TxqamETMfHGjHyb5OfEo5g4N6CQfgkv7ZZwMQdSwgCq3n5R
	 erLVpFIRCQ9aRmU5ly4xuJTad2ZTrDFKAOpf36ZWcWbeyw/ZXJ07Y0LXSMP9kb/jM6
	 lZTJLVTvRJ5RQiKXBAY0+R49NRKVcbaKZ3VdFIHAaZ5BBibhSsxoVFKV2wasfjLIVx
	 TD1qMMiAk1ISgDNpv5QUVPh6gBfaT3KqMgbcgobsgFLrzRApOblOLbEmoatv/LhOwP
	 Bi/fSrP5Mi9OZGygvGnlbt96chvTMl1kAYsXsjriPX+IwB6Nsx3dL4n9V1UW0B3NMC
	 O4bv2IMgqhP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94483CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390771358.1593.3242277290500707145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45955fabea3d5343283ac4f96df72d0584c88cf512cf3d32d5b2e9e6cd89ecd6
Date: Sun, 23 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763907713
