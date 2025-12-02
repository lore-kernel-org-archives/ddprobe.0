Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4330B3016F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764663174; cv=none; b=eJPuNdWfmTWK2ydxw+FKhQuDsjJN1Pr5ji8DjOzVZAwTSNydDk3K85Ue+679PA5Y4waV1deLKNLacJ1ThN/YewTPpw04qwhw6CLgUBuCFbnDhX+PmdmeknKrXp8Zsv32MHFAz6mZ9EeP8RG8XKB5osj1dxXdoewV0uMGw2TuodI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764663174; c=relaxed/simple;
	bh=0ibOvh0Qe/iS6qpNmMuRdxIDIsuS3s95nziDTSmyCl8=;
	h=To:Subject:From:Message-Id:Date; b=abPVZrnpFc/b9ACVWyB8LKClSjGkNzue41GgrL7CcWI0jD3mNlXwhrPULVJejFT1WUZBynLIv8Bjtmpvlx6H7sLuriXfcVy9TU1iQUUEW3J2BxdebB22nfja13shBwDoo8QTmD2rdVquWi4n6S5AC5wMu6K0498SDPSFBGZoXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhNJIksF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhNJIksF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A2BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764663173;
	bh=0ibOvh0Qe/iS6qpNmMuRdxIDIsuS3s95nziDTSmyCl8=;
	h=To:Subject:From:Date:From;
	b=QhNJIksFlICAEh9cvE015WvUFVZn6ULpzO0wzzIsc3ldPwHMyXDfu9HfWsYcFSNDC
	 BenivNor5yxNsf3KC30+mcdJ9iMBfUJXrDHKjatIVt3ZexJYgGolG7x0L3hK1gFnqP
	 iL6D2RV4ihv/5PV1/jZ+6yqGzw/FpB18DwzmgV5n4lKgo2rfH17NXglrxY/P4Bz9b0
	 8HmCRG0UspIi4t2c1ioSJFQsSKrsSO0GCc1vae+2384TZWjmQ5kkBFvx6eBG/Skuv9
	 sx/5ZJrD3jLUAi9EB0qlC3Q3Ua1ViPIqdkiQ+01qVXiEJP55sHv4A8gamRQ1LNKUAT
	 xrjCDWkfhdZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AA5CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 08:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466317370.8788.14179693021477522593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eff9fd153394dc5dec1a3ba3d18eb7cd143b7e854e6bfa06550e0516fe9571b
Date: Tue, 02 Dec 2025 08:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764663173
