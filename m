Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F790A95E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779338434; cv=none; b=GBp4GlOosdr+GjEMy+ajYqc7ex0HYVIsIXbFCN/JyK0+Bfh9wganri+50g4sq1GgzgpGdgrcLznCdKpX3paHpiwi3v228AaRgaUnJAG/F1pHA1riN4gDiPcaRvP5c8FTPxmbL/ZzZO34jZrDgYTBQCUom9NqlIADflZpdQYzObA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779338434; c=relaxed/simple;
	bh=nBNopg/guDCEXD8mMOCjNvT6MxUF7OU7xsq4TMQIrpc=;
	h=To:Subject:From:Message-Id:Date; b=gGcKIyMCV/phNqVgw5E57tZdhXOSnoJzTvUFlUHo9/5ZqrFKYcV1kO3kDUKPGtoeHf4cxhclN69xsyCLl//clg84XccVbocaPPpZUZ+PVvABLxc69gv23QDUMbzZ0GbYGgYUmS3JT2Q5l2RFV9+Sd2ZyegjIXiFZ8LNWEuydoz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7B1nvZj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7B1nvZj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB39C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779338433;
	bh=nBNopg/guDCEXD8mMOCjNvT6MxUF7OU7xsq4TMQIrpc=;
	h=To:Subject:From:Date:From;
	b=C7B1nvZjBHJK0fLjK24hstLU7dHuyc779SYXnO7Gk8DMl00Fl961j57QR4o8qPtAh
	 WhbWQbqxmp71PtnPOdh+K27mVH4pLocjEpROW7uk32OBRnjOu2QYgxSHv52+dqjk2X
	 VxL9HtIOxaC+zKlQ4d4pxNlraEJZQuF/bfeXS9CTY3B35VccIup0BXeCIGerYqHGwK
	 ziDjpQYSAkayEJh1zP2v/716Fp9sH6t12f33unBuA9v0sPfqsYH0I6c3VQTekZ90L/
	 dr3ETxdtbVNMdifpHPt8PdBfuOAyKWLW6XCIt00cye93pSK7DsViCTN87rKlv3Bkp5
	 WC3Nkz0g3GjPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C36CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933843371.15227.3687778091023677509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01e52b032528d6b271139664622ff901b861f42a6a5c83546e85db82160e449
Date: Thu, 21 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779338433
