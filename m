Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A701397
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792109434; cv=none; b=uo5GFk/1yVLVvPgYZlhgnwPX8udaGGTOo49oVBZ8IhIlwk48SuDvbb5mj5qes9R4XLkYPuVgmrDwBP53HJ5zlrn5b1Aqc7J0KsdqGLKz1wFILWAhIz0T0G4GrN/e4/v6uTNOVyYNAd8REcUIahBQSI84Oh+LVRIBCPj+96rUBrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792109434; c=relaxed/simple;
	bh=ZPecvmF2gmPrPVjmRNtVutJGnle+ZKaUQKoC9O4Y8J0=;
	h=To:Subject:From:Message-Id:Date; b=utaf5RizzRaysCXR3r4bXit3eZsZP9h+k5W9MoByvKDQlPh0AmOtZWKy42jjd/XrBERzOmA71R7/VJHgAwNjmbmwPUtqUcS0WcNqNjbxeMwUqnkZIajHbdooNLc4hzlzdatFHWLQrnrT6jYeyerVQANc9inmw6eLbRdUfqISkWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDBhf0aS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDBhf0aS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD16C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792109433;
	bh=ZPecvmF2gmPrPVjmRNtVutJGnle+ZKaUQKoC9O4Y8J0=;
	h=To:Subject:From:Date:From;
	b=eDBhf0aS09vszOanKmwMvjQ8JDJ0OcL5j4MbA8Tq3+wVRat1EUqGjOSTXahep3/U1
	 vLxzxn0yes381dJc9pL7xNRS+CynbV6YBgiF+yPrgTWlTaFxctRNBTbPix2IPF/7Ph
	 CtbyoNbwDLOtOJT95qXspWuWeDIqs8El8Tut2uqa5U9GE+3V1RxgzUA40kk2c/ia6O
	 iuW8aMo4ITlbW2mb037HbWXn8duGBcFC6Z3TmfWVMbhhWkXaw7wAazoJP4ItutTEK+
	 p8N7BXmpaT8A/ZlcTBbZMSJMmBHywAs2vJv/n2Qs6n+RKqxuXeoEtThjg3vyQgxNlO
	 unp56ZYSI4gnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D17CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179210943368.14601.932534505087016222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb03ddedc18bb4e8e7de56744209acfdec2e877e900f487b0a77541ac9e8951f
Date: Fri, 16 Oct 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792109433
