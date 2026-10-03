Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD4237A840
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791007834; cv=none; b=FDFjpvIVAwa0K12JNeNk0FGV584kYGVxHnWTl2dRrUf69TQ4Jy1lcbC8PqnRn6T+9YsnIbhcZ78OfNXBLVUUwP4y7BRwgUDsguOc4tqLdutK7FDLAzZ02m4vHTDhzUWSebj37NBWTdeR9rsbiDMPiT77tlSSNcTMrWEBnpri3xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791007834; c=relaxed/simple;
	bh=E/6RhAP3oKaGYLdcG2X5yV8pzkBHoHSFY0wSLpCqZLw=;
	h=To:Subject:From:Message-Id:Date; b=iNS2uuH16ULY0uKYMZi3gfMSs9UPh25pHW7zGFFoj0f3cj6epBznut8WOmG3OBgPv3uDMVCPWEubozC8PGc0ncsC+rznwQfJtFBJSy414K63kB+VdxRBBe9y4LT9GDZnWwSed9WbC4hG/2dLE8AbyS0EtsJhyqnBJ2vabcyVroE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKQHw+3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKQHw+3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC862C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791007833;
	bh=E/6RhAP3oKaGYLdcG2X5yV8pzkBHoHSFY0wSLpCqZLw=;
	h=To:Subject:From:Date:From;
	b=SKQHw+3+7sSBNbBPbg7wlkxxCHQHBs4P+YhhhvodEU7GhCW2fy9MJPgwMpmknuoya
	 MbuhPMruuVI8MmafqLP+1mXTE3ADGb77bOGPy1a5MYDIe+fzTpu+veor4YZ0hj973l
	 WRVAMUCS+z3opjZZg2tbJux5KSjjlq6vxQqzt46FDwaYpLMh00m/ZoEu5OusNEG8+k
	 jjavg/l4gZmE+nDFSNKlvWDB/BDpqxvqfZ4gDR4lZUnWX2F2eW8qeiLWPD8bAJJkAu
	 u7eh1uRoFUdvP0SczGcmTVECaGNqPluHYL5+ocbE850iagFlSlFxDf+kghVKb9Tiol
	 ccGlztG8Bo8kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3CCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100783368.27031.13295359811108658834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04dcd9e6a3e08f6423642630002cb18c3784fc81dd4c6e7792a4364586e29864
Date: Sat, 03 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791007833
