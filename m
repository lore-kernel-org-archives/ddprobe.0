Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6132EC0B0
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787748634; cv=none; b=T19ExI+QOPPLDQZFHwctj6m6fR2vy4nfADD0zekRE3ktq2kJ1+bhFn6v6QUoXLVr4Eoy1k+NNHSSBRIAfzQ30DGEF0y1S1+Dk2ENVOd/SSvKsioKPPt+6aFeG+gffpA51G3HkVt8o9TcSdWkCn/JOp1AidUXUGcd74UJWO7SA6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787748634; c=relaxed/simple;
	bh=JOrmKoVdMm8SD0lUtk9rVZAjpZfev6/PWaRT3xuB0FQ=;
	h=To:Subject:From:Message-Id:Date; b=ftqF2v9TRiV0ASvdJNHT3RMUNVtjm4ToGKWnNvRHxoAI1/Q0Bf6fNk/e5JbgSMV+gTWC7PT947nC3md9/NfBwlHZf8s3njVnbNP5PAlokfJfocT1UIj1pmwkO1Jgdj4EUn6Lrp1ovVGSCI6Weg/Kf6gc8vK9GTDzg/QmfR3GLG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFXJ/5z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFXJ/5z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3A9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787748633;
	bh=JOrmKoVdMm8SD0lUtk9rVZAjpZfev6/PWaRT3xuB0FQ=;
	h=To:Subject:From:Date:From;
	b=OFXJ/5z72DB6CV+VSR2rSCZN4YPAGvvEc0gm1yEKHTBsq/WrjJjNbItw0m9UJodIh
	 1at0nrqqh7OLZIGjH/pSKyHTJYSOID1THeNI5jEhd2svsaZaYDk/d3I4czpe3nqcyL
	 /0bHSbGVSMU6IfROFsuuSx+pEAlre5atTmqzT8YroSDtkNc91bWUHZDKdumlsz9iPp
	 Felb6X38Pp1zvpLTTeIM7d6Uo9zlHmpGHcO/uSh0V8mGMj7OInS5MAA+8a8PP4B3SC
	 JxNfVLm2pCQJgdbIcMMil+2F8n6Au2FiACDEte/+cDidpS3VqD0M6ASFrKrpMYsEES
	 25D/uaXoGP+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A67C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774863368.8762.7018307571032266120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1f1187b4ffb2cbf5c57b48b7880219945f3c8bbcc229fb8466edef75e6b804
Date: Wed, 26 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787748633
