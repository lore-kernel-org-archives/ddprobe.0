Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4EC4EDCD0
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790614234; cv=none; b=Mqei6xwPSf4TDUXpuIKvaMG0yXYuT1dnCVsCsRTCPDXN9c4AAZKW3zEa+/CVm9uRg5Be3eEj8Y+Rbj/jyYGY3C7Hh0iCORoghR44PMtCJKeRaBslKNFn7cYIgnPBHO3lo8RQcs4bDIYYB9OZJQKBvcgb/2azMTUYKrqmo6xnj5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790614234; c=relaxed/simple;
	bh=9U1I0dE+KrGfkSOg+aH+L/8ru0077DmMkCCsvYKdDww=;
	h=To:Subject:From:Message-Id:Date; b=ci8HPoZlk1cgWa4glTupEM8lbih4xdvf235wDwgQHZB3ANwYZaK6I0i5YwljpHp+VyzAIxm3fumEpp8+ZbqQOS47dgjnCCk0BARYHCC9kKTwtR4MksjgOjS0Nc/pxFfhbaVgm6LqwD2l+llRRL59afuRV7mfcCIr7Yxs4YTSXOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkdJDN23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkdJDN23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF959C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790614233;
	bh=9U1I0dE+KrGfkSOg+aH+L/8ru0077DmMkCCsvYKdDww=;
	h=To:Subject:From:Date:From;
	b=YkdJDN23Ocr/Gqb0imKzZ2ak6SDF9zjZQlFUNX9zpLBBgW7dDg4qLDtZZSV/O1s1F
	 hBhqlkoN6JrZ/I4ucHNieTBkTehZocENp2FUZ1Zjiq6h3TuFBV2AyCTDhLa9EolvtF
	 MRDxzoSBjkjbDIRjaPPMNM04roQL4wqTSO0AeR5adjsNDPEFNgiQcSQEvsT5p9GCm9
	 HCmPV0yRHbOyi66qYQyk6ehfmlELzLUjq9zssB76E55rm+8Y9ajMbQjAVr9a87KU13
	 779TzJJ+r60vhQ/okoKybuoerW4lTsmy+xj8A/K/7Xxy2WWddv0Iee5UlGCe2ZopuF
	 wx7gf8Evh7P2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC638CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061423369.27351.692243670602578862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ceb21d2444641f4f44643c4690f86bf8229ada3e19a7b82f139670734dffd7
Date: Mon, 28 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790614233
