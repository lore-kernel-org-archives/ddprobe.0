Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD3F2F8EA1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784167714; cv=none; b=pEgrnDGIY/QaNlrb2v+XVMNPVdnPjwVcSx/F0ueKiLorzSbp0CjY76fjcoPDriQewrPq705PmMVGCqPo3ZlesTzH0zI1qCTdxbm/Yr2g+1DFvf5k6NSe7z8dtasE0tuAgGYqCy99OiZUFHsdI43rULnbU2w1cBJ+Kie2e1msWZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784167714; c=relaxed/simple;
	bh=rDmjb/iuLYXHwo4fkWe5SnqrhqpLPjpblMC3Zg3cXi0=;
	h=To:Subject:From:Message-Id:Date; b=UaFN6f/gLpkd6EshZCvP6KUgNGoTyHmBAorm3d72APTCcjRVM02baNe/k16RYCC+eIMhzHh6mpXAkchEb2FUAwmjpKfHZr9sTOneGRUou4lkjju0kTZ4zR7SKJhu+oJ4wPmAvLIfzjBXGlEAftt9sGTVXyG4S+iEnL+8suUHQrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgfEssgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgfEssgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE8FC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784167713;
	bh=rDmjb/iuLYXHwo4fkWe5SnqrhqpLPjpblMC3Zg3cXi0=;
	h=To:Subject:From:Date:From;
	b=VgfEssgktP/5thj2R8/Gcjzao6EdkvaflqCnXnO287/t6LLrmx25nsta2CDHAYw0f
	 PpLexTFIatuWIxY53C+dIwOoo62W14atRr77HqF0G4X4tCFCnYq3w78h0SLAVLs77d
	 8xvfDJfl563y6PbxoY7dMicTndBq6ceQhItTW2VLmOYPpAjPrGKMDSf4wQDFCv6eHH
	 uSB9j5CHxwTyzhAQSxhTgfTOBowMfQoCtLQwIJjbgCpKO6rggodygRbzj44fiMLv/o
	 thQT0wr9Sz2vbehsDLiljgsIq4+3ctHmoVOi8Ny9K+R/lZiDofFZkeOKRmblXCOHGA
	 0I3vi2LL9F7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E65C44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416771368.16161.4104510905466259234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f23433206dd0b9edada7d7c1e16b9b31d0b4839ecb1ed1c810fc547e1c251fc
Date: Thu, 16 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784167713
