Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E1939E6E8
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944294; cv=none; b=ly69CvaPDv/LaS95WsUOXsTgewOhB/0gWXUpqr23DU5uTe9E1l+kU13USbW1mr37iV9NfHe8hEOTw9nU1x7UZaanR2mPDRYQcc5I1vTA4UqxXauDkqA/XRk6ndYFkcxa1vf6yPbsWPAJbmCKhJw4ZAq223UV4JAzYG1r7Ij00+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944294; c=relaxed/simple;
	bh=pWQzXxudDM4MFmCW1g7Z/PvIIhPKw5fRryWKB2K1Er4=;
	h=To:Subject:From:Message-Id:Date; b=uo8phMnWtAeLky1SYtw1+ISP8le/WGoD/gk6LLxigSfgrcVx7Xlyp5w8b/xIeEq3133/bNxnsaiD55O6vyOPSLMm2vbA33aceEP2Wi/Yzxe497YTk9iJcUtXzbthyrcK02Zo9pyjpta0n3rPmQzJytj83vm6Cu2kQgbJHusBtnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP4exiKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP4exiKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAE4C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771944293;
	bh=pWQzXxudDM4MFmCW1g7Z/PvIIhPKw5fRryWKB2K1Er4=;
	h=To:Subject:From:Date:From;
	b=rP4exiKY42L6fCX0dNCCG05vPeRj2mEJJprbtGqRL/Nk+vXuxBEAsXf7qddtdBdfa
	 IYpOEI/iK4iHqBfOR/9LkNpYLhobupKbGlWKZXrUmT6v0dPiADipk/vGtcTBDTo7B7
	 JM1seruGjda84aBtB/GlRTpXH4aDZuCzxFGbjWp140lKyxReZoxeojIk9MI9wGW92U
	 U2DerWn0us1QPlT57hGd4P8oJIuPJXlwupkHexyMVezNcIDbgZgnALAHdZvMhMJ+SE
	 dVyz2/m1XFnQmR6UCG3TnJOkhFVqrF4Pbhm6p4zub2xX2y6QTtcEQ2FgAG9ZMdrYZ0
	 3Yy74c2wiI6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD63F3C985
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194429362.31170.7944629749503074121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6785debb6fdb06127063fa4f3a6fec35b7dbec2f0e2629110c37d9d520f4eb71
Date: Tue, 24 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771944293
