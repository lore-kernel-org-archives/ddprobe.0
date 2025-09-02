Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263E81E5B71
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756791594; cv=none; b=YfOBAv05Q+KZcThcnpGoT+cmVsAr2OlEMUEcDTBNQlO/Ex+Uex/TcFjXZLTmaQRlJZnWTsdTxyueAPmjdQ9lKpueUfetUge8XubJHZQtWEm8Vu8+QPIWyziKLMpMRoNFZHuIwCDGhuSgGKvj/cIvwo98/ZF5rA/CDaAlN27PzGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756791594; c=relaxed/simple;
	bh=3V2p40wYxh3m+2eI4pKOJYQ2s+lG4Isi0WTFLFbgRiU=;
	h=To:Subject:From:Message-Id:Date; b=c1euHcfQJfJakpeOlSuLGesDDhM8BvJx5CTgaAkTZz7dXm+JaVI2icQjmXxEZZMRGwDYbMLhAgdLG30gEnbrh27p/7sz0Xm4rcyvHggq7Ez8SZByiQwg4VVx2kdPsIz2SGp+ITMdpru8otgF4x8r1kFHjJHCBtKoG/Zs1bAASpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olQxH9vK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olQxH9vK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756791593;
	bh=3V2p40wYxh3m+2eI4pKOJYQ2s+lG4Isi0WTFLFbgRiU=;
	h=To:Subject:From:Date:From;
	b=olQxH9vKnLBrlGnXAJhzprRdhRYp30pDhtN6LErinIr6LVumMWunVJ4pjQ0NhhaKT
	 TXHuATWORHfW3pBEICg72zTKqlrwMWytyGtcF80LKIFmN/P7+jOvLk1fcI32RR+t+O
	 zdBYzQf6RPKb+Hx4fBjGXEIxGrgmrflmvL4snNttedXARo5expmLkOOhbsp6P/cZ1w
	 6dqNWuEVieHdje49y5BroGm7cMpuUT41+WsNdQCAXYLHoMw4uqEjYyZX1sJp2BN5DL
	 WwlSRyeO3ZsJdMS++szfs6r72efsV4DwpBSN5GoQc80B7/biqdEdvHp2mBJ8Ka/RVh
	 QYmXzKttk+uUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C3CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679159357.29176.772620378477963730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5ab28eec31939e4c34a51365dfaecc53a0418508fa09345f068c33a8eff2d3
Date: Tue, 02 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756791593
