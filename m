Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A34B81E
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752334194; cv=none; b=hasNfUwE/iJUH5Bs+1ZFkPQmGchDJRO0IuPfsAClJM8tVetvH+1U8eOPhA1aDanfaanMlXBI3IC6XckXky7q61KF8EyGBoLyoZClvFBG3nOZxBxRS6AiZg85SzixrSF6wamtEkgTnF1R5RiSnw5nhzgJLRA8QBrpTpWWbKBX1Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752334194; c=relaxed/simple;
	bh=OUIHQemmkZMGaQ8rbt/z3zr3ltyBz2C3yKiUTIazLo8=;
	h=To:Subject:From:Message-Id:Date; b=tB56VxMmsMpyQZkGBhXfo02phVLSzPQ5jyvdJ9s4vMGZvX/SzZ409w5J9frz3FTYphQkiTHpE9KGmm1ACwcfGbsfIRAPyVS1sm2tYXLsiIRIE97SI8PABy1K0yZxfQYnICalN3a6H35VU180aoiGhrB3YB/n+NuoPNH3GMe0vzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5zzAfCB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5zzAfCB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4467C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752334193;
	bh=OUIHQemmkZMGaQ8rbt/z3zr3ltyBz2C3yKiUTIazLo8=;
	h=To:Subject:From:Date:From;
	b=Z5zzAfCBt2+PyMsThrPc59HhdLYn2Z7DMR+7PVhkPduidRs/kR/BM0l9Q+eB/jgqF
	 2tm0sw+ugG/mqDIhgWhoskLXZeaJr/fr8bv+eFqja0xQ1UtR3nKOruyu1L3GuwZ0fZ
	 i3XQn3RVDZ2YdeohEYjAOVsS/RjdCktvHMf/nVFk9vRtph9esq1T0gyzAmpOMYrmnu
	 /Zl8PO/Qqw/Lz0h5KimJlJQYdfHSYMPINgktKPASVXyTs9W9rW1eq+Jfq79ej3zbG7
	 AvRb/xnrs02d4iwyymzz0QHNs3u/yBZ4zmX8wq3cBJEcOPuzxLSCb8VddsMgHv2w+W
	 hjpRaOTz692Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90618C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233419358.6537.15555945908208602756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c9c5608a378a5d527eedbd964038016bcd114293357ec22e290ddffcd0e40c1
Date: Sat, 12 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752334193
