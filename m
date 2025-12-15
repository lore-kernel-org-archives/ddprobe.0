Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D792874E0
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765782773; cv=none; b=RaIXwaNuYT6koLIV2giQ0Q7l1GkOthPlqB0R62FIs61ypRLyTY/+RYFB4iIztWwWaA9bk7gG7PZzhuXT4AjoTjH+a/hpoL0Vf7N3aESzluCQX/rFI4KVA4gBbIKLR/wQfiirtU2EQikRtWJM5lT4LvgUZptxb+DEVsQnNa3IAs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765782773; c=relaxed/simple;
	bh=fpMGq2PirLFeUDXRjuT89pl9ap3c5SwKX1Pr8W7Y5E0=;
	h=To:Subject:From:Message-Id:Date; b=lY2RVukH5USRBp6DJBuUSMo7PGFCZSm7cCOYIiqaO4zehKMU4n82kI8nev+quXhMwmFYffhrr2OxNCiQ05nA2WfFk+5TucrpT0c4vXXNVWrvooaQ6QEZbU6oEOKBpPsHtZ/aiYIesJjrkTtVzhs9Nrmmlft4xeV/otD6noqecTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/vMwMHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/vMwMHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA18FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765782773;
	bh=fpMGq2PirLFeUDXRjuT89pl9ap3c5SwKX1Pr8W7Y5E0=;
	h=To:Subject:From:Date:From;
	b=D/vMwMHY5jb9rrwQ8/qUIzG2BG/M3dD24HLEU35LVzo/AeugnTeDon5EWJKCKj29V
	 t2VdRk8d+XTiVgMMO6Muy3XDuQaRNxFEvHio7bDxtdp20lkh7Zl+CXSr7h8+rjkSha
	 7pzNUFd3gJG139ahm3G+Q2bmestoDNkbEMJ/ecscw1pevJxvGOu6UhgDIPEdSCYzjI
	 rU2Ro891MRkcTZnkHIwc5gOVGR4MJQI7+s+euiq8FD6C5ZYVZyl1/TNDT5srvdvg/i
	 QVU/sF5XlJvSqMfd/4IkpJ019gRMzm0x84dOaS23LNmQOcCg0AoVt9V5YYM0EF66hw
	 I9xFdcUUNovUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A0BD41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578277358.30775.13071694979784452046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19887d015ee37385294bdb8c09adbca8208f96ef59ab4f6100a2d8757d8c5359
Date: Mon, 15 Dec 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765782773
