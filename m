Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FA822B5AD
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756418395; cv=none; b=FZx32CTiL4P4LRjuGrhzdc08cw2r2CNNc1NC+J+gTxWdmDSzrox8hSajDjwSlnxXGB6sYTIx3VouE+IQtTEjoEnjqVBxl0SX/OqWBYpuukom+OI2/h/kvuyRYlri3xb/JXS0NFNZyzuPCzLpF77qp/FSg5qwKWbeKpsdMzRDEws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756418395; c=relaxed/simple;
	bh=ale+ZoIGEoWRdXUki6exrpW1vtEstwx75RhGNrEIPk4=;
	h=To:Subject:From:Message-Id:Date; b=GrFc1QkD/pFnzCJahtcVG2hceTm2eEwknANwmpwxFmqkBMAB1A5qKYUziiKGhWtRFf/lkrPlW5Pf8G5Tr4MIcazmklTRi/zry8fx6FFbS4yeAlalR1LOJ3Y/8u3HotS11Tu8ZOUZ9g6vjf4n48MD+7gvPYNY/Qd1Yf+MvJBsmpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtTSAELB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtTSAELB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B4C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756418393;
	bh=ale+ZoIGEoWRdXUki6exrpW1vtEstwx75RhGNrEIPk4=;
	h=To:Subject:From:Date:From;
	b=WtTSAELBaH2mJmm6Au5uvfYs5Ej1Kx7DoNreJ6bwHYTMTvUWlcdubtNWlepCV7Zqu
	 Lv1wnzHrOSohHs+0n2z7ZPr/u1r3nOoliedaCnqvpgHA7clR7f0xCIlCzoZLmpZs81
	 JZizU7Mr4hPBCUDsRKE5KI5h5nQg4o6YmF21JNOkWzHd7KvMteufcatr4K1hyMM2d/
	 x5KQh12dZz5JuYieAe1Siusg+/88sjIdchNmHZ2PUR4YVHN6dzPwyfcek+oZzCLn8O
	 QeYmxetJRazW5yDIt2mbJ96nMEf3wWvlSsmt1UW6EYYKRQr26qD04+41piWm1BoKqM
	 6jh/VoGDLIhyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226DCA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641839359.22257.2642085567921028313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fe383695e7d5f87e792b72d27ba1ffd4c797f3666ecc7271eefa33c28db590
Date: Thu, 28 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756418393
