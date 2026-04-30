Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D4B301471
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777518454; cv=none; b=q6/yi/pTkggGcOdBu3wVGl4KAOGDILlcLJZOA46KIZFGLTG2MwPEdsLWnsAlJEh45jf0qSe1buMXSoI1XYV0ncDPQUfiyiGUFnle0hfvt5+c4taJfUHHVe4lEltcc8+5MMUyntRAhyvNT7uWNtZ4weYDbHzwXfVJfV52vImc7PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777518454; c=relaxed/simple;
	bh=8N6QyMI9bAkVg0QdFmMc3OCBgvsI6XB8h3tBmtTr2J0=;
	h=To:Subject:From:Message-Id:Date; b=BeBwbfp1iEyov0CdwajElyENUldv7YsT/Dr9JBZyrWk+3tCrT4v8ksQpsv7PRxIZCaeYOEQkOIYRU/EZir1Ul4YMmqllpWo0Im5WUiDS5wIlXiBGlymY1j64nX5BypyIdH+37oZXvL92Bb0pZmzviIYQ6s+CKigzFo+Kr6UuqH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FB7fgMVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FB7fgMVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02ECC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777518453;
	bh=8N6QyMI9bAkVg0QdFmMc3OCBgvsI6XB8h3tBmtTr2J0=;
	h=To:Subject:From:Date:From;
	b=FB7fgMVFD0g8gN6jMONIKtKXXlgSwGwExNzPiGG1uRlZ0ttypA/HI/HpZauF01Uhf
	 Z26K+IitI+AwosXgRB5q/A6chAKOBy8ns/Skzu3ZH0QMU8DvwFKcA+/QC1aTrwd+Vu
	 K5Jxk0zkFB/Ih1wc5+zsBKcoYfcKVTejSqACK1G8fFxCnv8zbvcFLTpqZT9AmLGAUB
	 hXIoJsjlzg2fXoWKEzCD1doZdwR6xVBOTzhuhPRyryIJfKL/ood9jqK2fjWo1apUje
	 P6949H/mt2kWeAuGG2YxS0pLIG37W6uiO4SgZ52gJ4kAx8qeOnuwrzHIz4QoCpP0n2
	 AJJGL0Vj5DA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC62DFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177751845368.20741.5011322332692809795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedea21a3e1ab4d2f73259ddf4963e80f89c001ab4ee1741148e57967cfeb787
Date: Thu, 30 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777518453
