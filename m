Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F7F3812D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792163434; cv=none; b=BleGHT8zpysRss16/ggTJuCKLWsQ5nDRj4uXZ1W34Oge8gHZ5wnPJ/1713q4xyFFjFXnFRJ8K7HV1JwP5YEcvGWwZXLukrDs2f+mH2zHGlCWbKGBv6PLvGmaE9VMeBs0SqKRTh80YWGI45T9aGP3e+kPVb5iXo5j9QrtHIiDdRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792163434; c=relaxed/simple;
	bh=9WSivJ4pVx6e9UNmdS+jh04CRO61eSP6E3QLCLMAum0=;
	h=To:Subject:From:Message-Id:Date; b=eOuMTb9StiJqjxbG4JT28u3JLeE3dTP2l6OsD9tMyqXrjnAklbDLask9PrJp36Hzm85qb7PzS562sEmS0w6Fz4/KdhQQLhzsRr9k+IQOT/Ce4+I9n3Ao3kT1dPPPKSBJ4oA6sPvw8rPJaXs10buim26OyOOWOpP/7eAMoZO49G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieP9Q4+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieP9Q4+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FC8C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792163433;
	bh=9WSivJ4pVx6e9UNmdS+jh04CRO61eSP6E3QLCLMAum0=;
	h=To:Subject:From:Date:From;
	b=ieP9Q4+PBDCShC8MUcc/VCzJ5hTP4yRLL1Qv8fXN/72dXrrkhZ7stOG+jdEadiTPD
	 0jcuLUZ08PnoqXatOR4JmMVIrHynOlka72GEW5GW0kifiDwy7VND7qQTJXmAft7uRW
	 U3eisoI5bwriiffg8ukiTs+NuMo7tv7E7JlVeS96MTIBwI5N7aS0pNdtnJl4QVvYlI
	 zaOMMXoxoavnQPnz2mdFph4w6muxhMpc4dlnzZdffA26HMbBFV3UOboD9Cjv1IayyT
	 Mgnqb5vksdKrDupO4w09xFRu4K/Wr+p7rviOfQt4eH75/Pf7EzcbieXq7+uWAcUyBN
	 1oBBV7roEBOSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9CDCCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216343369.23595.7046861340808944083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e91038ec23c5db65a889d597bb97257f111e8a36af1e4dde5c9b8b044242aa
Date: Fri, 16 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792163433
