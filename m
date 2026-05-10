Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BADB27B353
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778405434; cv=none; b=FORqIuvkD/cg2y18p3htlUIszXY5obbIVPxsbV0jOYPEMnHu9Hfh8XRi9+BtaDBCcCn1VFmECnddHIJMngA5aoT8Kiz77XGMaQKPLCHVSdKIPyaLwAioG99jTrV1zhQczJtmYK5pP7+bi1KcirhPiXhTtiJvkmqcqmXlS9qc+GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778405434; c=relaxed/simple;
	bh=jA211BGGegwvw3leSmcqWHNU/jn2u+azDnEnL8BEulI=;
	h=To:Subject:From:Message-Id:Date; b=TTShYBxvslhsvLn0KpWirS0MiFuZ08liILoq44yBh7RcUIs5p6LTIUkSR0levNLKxiW0LM+5Bs+3kxvdDwSKOzFUW6zdS1TGpPz2EinQkStK10TXWFlwXbX0UYndsNtCxAlcIDelyjBMN1tyVlxWo1tq+/GsaKUQ0axPDyLTFZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2ih2PYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2ih2PYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B518AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778405433;
	bh=jA211BGGegwvw3leSmcqWHNU/jn2u+azDnEnL8BEulI=;
	h=To:Subject:From:Date:From;
	b=s2ih2PYQxaqtguKrPeUzky0+yyWWFSfmlaEIFX8yMWA40lPb4coL5IwZEs3kp470y
	 uaZ1mLjUro5CcY65rKPdDZ5PqwBYaxqS0ZncZF+KEeJ5PHGTQjrn0y1B6CZkEsILwg
	 O693le9ALhL9gbnGC63qDExmokXbYQDXnbA6KO0EtQI5nzFxfJkSEySppPYXVMA+UV
	 a2ulDzX4EJDo1EiDNWHgmwDwaT6dcqdIBtKqP4Hk0xQmEcOZfWYebxFwBKZ2sHUpF9
	 hH4jMeMcgtcZQaBlH4xl6haoF6D3ChKQkMdCpespNfnzCAMtpTNp9kx3R1wUYaGsRP
	 3dU+68JWl1HPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E6ACD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840543368.4916.1730796108118021602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ac3601759d53204b8d2f030d6a66d99e14e737a197a863c66d9d74ee55d3e0
Date: Sun, 10 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778405433
