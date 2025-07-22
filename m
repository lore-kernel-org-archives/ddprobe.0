Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311682D3EFB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753191594; cv=none; b=PF0EGeLpbt/jFDboAQ4KKCxztq0aDasXUj6kqz3ABlqPxcXoBXRiDTERD21p55xpRsVkhH542XQrsmrfm1/YO42Rgr8ZwqfgZiJTLIXI5dfy+BmTT6u5WnTb+FVf3WyWN+cYixGE+qhNkNXcvKEGD0EX/9bo20eHqBzVUYMbeSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753191594; c=relaxed/simple;
	bh=hfB835C6AOGj9UQvBity8yf3I2R2Bz98CUpgVupulJ0=;
	h=To:Subject:From:Message-Id:Date; b=gCMq8Df9T7XIKaLEr7hF6oe9bO+2bqwRvB1t5kvrPkKGvDTBdUNZKJQRZeDVmdwc3XLUFzgdFmPfUHvBhJTeEZ6ArQ/HhrHo9gClyPr2y+i7JSyJAlnLu+yshgf1tmH5qZo4SejlBZisb2xxuTW/Kpdq5iYObFewHATZFc582Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I67fhyIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I67fhyIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2479C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191593;
	bh=hfB835C6AOGj9UQvBity8yf3I2R2Bz98CUpgVupulJ0=;
	h=To:Subject:From:Date:From;
	b=I67fhyIwd/JyTBcoQ73Av13frvfjrhpMRcUaHlfGsLhlqXF58D5CmLSww5Mzj/Qdg
	 pu2sLdB7sqEUPf4BFZDNmlmQZgcES3SZbcwaV8Tjm8/uqejleOo+oyS+Z7b8CbQzhc
	 Q+kuT2XO9I1ot4XdrmQe5txgVDeAl1sXzf7QpcygnXqxWiyI2JVto6RMWY7iwOPtXu
	 P+PG6MmumNZ4vqqo9weiskNhRWjUtg2eZUz7D50JNbUG0f6vhNPPXiCv+HIvgSCueO
	 A/Gcq2wB39LkZuSG7wDW8Qlg2++LzC/v32aKvImixGPiTuAHXrNAacHq7MuoldcGs6
	 O5tA1/5h+tWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A8BC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319159364.28891.7214340832478963538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ef26345c16fdb32e5057abd7dc712cef07d28ee57c34aeea7b8a7d806b84f5
Date: Tue, 22 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753191593
