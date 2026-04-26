Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338422CCB9
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777223854; cv=none; b=JW/L5fr0bMGSbN+FoUA4B8zTKM30vFX0+mJOjcU1C/MYMYdt6UBBBITYh5i/4i51d6satfbJcUNATd+VflrVwFQ2RhItfav9rsCFRsRy45E6lCo1oTVxwe2BRt8r53tlVrsk6G4+GiF5jc1d2sRMSPr0P2rku7YcDnALPXo91xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777223854; c=relaxed/simple;
	bh=KNOoyAoEOrhNk08G72w1FKl0EZ8TR3ie4f4bFBLVEVk=;
	h=To:Subject:From:Message-Id:Date; b=a3Rf5pZ8DnCTFa6WvDDwLFtd40zsZEj2iPfTDGDoGkh8FmHphIDQiO0HJ8Ec3naDgPojs1DOU3V2Cvws8X5uHIhxyav8iC37TwerLU/34hQaD4T+RcvANkPXyjGJYxqT+81ZncDVW8dAvi/K0CjZ3YRvKprCFBBLO5EVtwwRVI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvsVVHPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvsVVHPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C490CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777223853;
	bh=KNOoyAoEOrhNk08G72w1FKl0EZ8TR3ie4f4bFBLVEVk=;
	h=To:Subject:From:Date:From;
	b=pvsVVHPPOCODESZXRQEZPnwX7vYITF4U5HsDOEWSNsivE3zr05S9vHCJIBVzNuVod
	 IiAMIEbsD7//W5N3DS/vB2RVqZE8iNHpJ+socKBoLl/bOjo3JKmjiWI4+/vZ/G/T0N
	 y3yS1tNQUN5s+D3TQfpmNgQTofhRSIK7A1ngssLJc8I2qr6Dttjmd53+5tSRXVAO1t
	 X9eYhOXkYtumKBW15J/tFvvajngXMmrAXto7I6v4UeYpyOSaFj9ZX5uqQ3Ue0gNCUE
	 rh95ZsNxe8S2mADXhcVTBItSjSRmBaaUNk9Mz7GIM/Ffb2vah3qF/bzpE6sje+85RM
	 Giv0JnBJaCxvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BBFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722385368.10064.1341222884066129107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a3a83d55f26037dbc0d67ae46afe70d1403015cb411202f1ac7a71a9bd822b
Date: Sun, 26 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777223853
