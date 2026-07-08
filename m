Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E6282F00
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783538314; cv=none; b=OyivwptnvRyV26AMyStiO3PBTHa10tia93MksEbT00NOaFKLw2nfIVQqSTsS6mpHkMA8iGFZpN10Dy9jbI0q0UcsQPWZbu0H1B9jODXGVQSoJBSi09myhhnC7FGLDoJpZrmaKr4pCKH+j8YvwDx3SZ/JzaX3YUZK210NRJrbHVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783538314; c=relaxed/simple;
	bh=U69Qe7C/Bj953d4weabalKb6SPfG2R8+FtRi7w59RGE=;
	h=To:Subject:From:Message-Id:Date; b=TB9SBNRfz622pB9tqvxYfWdTRwG3CT1TsRtkIP8GAgkp4GvgjQ/rxcMTnc5o07PCa5khw74ES9bg2bubi7dnEsJLVl0CI3tvXJNHo7xe0aeqeoLR5yCJ67Cwng878Cmq9Mnikpv8HA5m1qSHaGcRFLz1AWronle6Syjaz95+J9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX2zLXab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX2zLXab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC20EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783538313;
	bh=U69Qe7C/Bj953d4weabalKb6SPfG2R8+FtRi7w59RGE=;
	h=To:Subject:From:Date:From;
	b=SX2zLXabJ9iZqNYx53KH3ktmdCUNZtrrdJjK8An2U0Mrny+y8sCYqd0TQwyHglUqx
	 Pc+KWgaHesjgpHpw8r8UzoyH55/u23+3cUlsgM9LwFNFmfGvpVWlpaL8bUFtclnnzX
	 uCgvd4+pRSKYD1Il6TzYBc/4RHZVC2PMsBobdcsb+Bh9C3h+QQZakxwZSXG7KwdaIB
	 V2bGGEUeO/+KiCjxsOks+zrCpyznOVZaTp95tlyX2zW+B2ox17qkhvfr1atlubP9Gr
	 6nLbVrzuXdggphxREFe7vrTipbk5jOF5gnzE2KsazKv1J/N5Khap/qcsZmoj+OdXlI
	 R+DmHOQofW4hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB6C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353831368.6834.10508622161210148800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a5c7081ef6e7ef088d2c966ee7080acf2731f0d3ff46c5031e9490124c3fc95
Date: Wed, 08 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783538313
