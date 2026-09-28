Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382014E433A
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790611834; cv=none; b=iv1zbnkDGhxG6f82Jr1vwknlv7+yl3pAgZM1VJSdtGA4OaYXfty78k2vrE3Dgq9uqKvDaxSGerYocJVFSBnTdoVyrBqOolAQotHlhuSXusvW/cA7/Etj2w2Dy7WKOKYDSz5qEtGqEpZBnSMtanklwRWHrcc97wrUAlOgecuHHf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790611834; c=relaxed/simple;
	bh=fdH5JcRyCmuFFl0r2dguDZboagxXOWORI44gZGFWL1Q=;
	h=To:Subject:From:Message-Id:Date; b=nFSBm1MZ5Z7th1xT7bnJENDS4tr92L3jtR52o8tIhrX+NrNzJZ09eOAHttxi6BXVE6d+uI99IK7h37kscCB6FefYJfxy8mbPtx6id3XrCbz+l9CgOq0reraMcA8vjjAmgdexp0gdo25Hh2EKSGB6PggEoctefMjKKmsvEofz1F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mxri+CKG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mxri+CKG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3153C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790611833;
	bh=fdH5JcRyCmuFFl0r2dguDZboagxXOWORI44gZGFWL1Q=;
	h=To:Subject:From:Date:From;
	b=Mxri+CKGp/zQYpzAxSHmdvScSmShyvi/Rg/iIxxQ36EJgmY9QclLNEQFOeZ5Gw1cP
	 KHHgoyHDpag/esoxaf0x6SMutiA6YceNbwsNxiVdN1D8wrIR/jzKWcsGhn/RO+aY7e
	 2n6pmRtupKyExrXF/DtfaFU4a4+5FxDsoqFb/D9jMHzEwIRkYbyXvuS2KGopHE6VZo
	 tVlikPOgTgR/gGdaPIoTr60N6ScI7RPBVBvXZSoK4OYQj8mn8gGkv1Fkjgx1z9P4tx
	 Q2TnfCXHdsPRhyaSe9wxA7Zase0gAt1Y4vHRJ1vouGtdyAfJjcf+fAlAmLn2wJkeoc
	 GdcN6+kayqj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09B1CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061183368.17591.8604562480450182343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39296c9c28385a252b24b1a50ce8f2825a8245cd27d2b63149b2422ac98b98d
Date: Mon, 28 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790611833
