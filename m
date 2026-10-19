Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E0A501F2B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792415434; cv=none; b=iXB+5OwZwmd7dTpxvEhtvcIM1zTB4ubvWSKIAlJYKxIqrC6iNLsDHsRrNrvT38uOFRI6q+pHFZSV6QnLRoCymRIot9quZvUBz8gHCGLDzqw6GzZh24KDd5dbqR3bnMIjFSBvyoVSAka4gtRlpANeJldXdZ9jnfVQ9RCChHCqij0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792415434; c=relaxed/simple;
	bh=yhTBPSUc0N92Aae5pzQPuprb+gtCrPYnxlXX0213yLg=;
	h=To:Subject:From:Message-Id:Date; b=CFlF9US50tEddUKMCvonUs9qoFWb+1GNbgqOB4gElHlWuZJFCsU5Nh3w98PKkPWUtOkP0UxTS+7+51Te8yuVZRenbD6H8j8/pK2eWFdOtLBSo0jyZvjxn8eB6+YA+q6GUNMbifyMU1e7WCoBGXjQAtZ0fLPitBhWpBtDKGUARD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYTaxG3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYTaxG3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 028A6C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792415434;
	bh=yhTBPSUc0N92Aae5pzQPuprb+gtCrPYnxlXX0213yLg=;
	h=To:Subject:From:Date:From;
	b=CYTaxG3NBFWe1hWsHB6oMoFWP1ITxOIrppl82JOA819z+oQaXq1c73B9W3qiEfC+U
	 cO8rcgPufo47OLuF28B3nhGltxv0lRURDFxqxSZ48C7kMP3HGaG1WV4+JXfxbJZrfF
	 r+2mCzYyjNHGJPUSRl8tpTi3IRC9Nnj34vZ3sat2l6A+DIsqa7NaFnmcqisKmIVahJ
	 Fwbmin4lapJpinDFrdQQCSnaAnsWdbMDjLGMP3Z2RXJk44/eAJhHJ65/kSUBqgzBrr
	 gp998K4skmpIjc4IbTiqhfvL4N8Za92AkI0Ajb+w8TBx9Fx6ATBOrLX1CIeDYM/Mug
	 gyClryXoohz9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90CDCCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241543380.30392.866715712404619412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19924ef28f7d3e03a753e3c61f16add65fb1f4cd48e6bda89d435f8357f0772f
Date: Mon, 19 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792415433
