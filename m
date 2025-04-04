Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3382E20ADD8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743789594; cv=none; b=T9CjV/SOsqpzeFeZv17g6A+Os/Uc8DowRKNssJaGhhVOh6vO5Dc3Rm+4Cdrz3ni71Gr/Vu8WNFrX853azoH9f7+/auegPv/81w1hTr0Pu+q6Dn77INLB3KEFzdsXZ8TKVtiLkKZBDF08Vb1l1fQR3Rq17yTK5URCzRXXEYcgc14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743789594; c=relaxed/simple;
	bh=VTeujSENOMAIURggVFAA8vdYJhk0Mugd6DU5vh/u92M=;
	h=To:Subject:From:Message-Id:Date; b=OsPDbTDGKl75CBByr9j6KSe/ZuO7wtT2moNpTgTn0h/fhILIBsTWLaYNUp0H5k2nhuU9qcbIhb2uzeYtxhb3MQdoKocmuo1YfXMwtUYXT0YwG3Lh8z5X5fyc37Yhw7+a33klqld91vWcUu/1IxE1/9gaiIeEq6AEzWtsj30v51M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCr0hI+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCr0hI+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470EC4CEE5
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743789593;
	bh=VTeujSENOMAIURggVFAA8vdYJhk0Mugd6DU5vh/u92M=;
	h=To:Subject:From:Date:From;
	b=lCr0hI+SpnbWs9mvHqUjOA/1wzjUs+A0uMpHGXVQkeKEqmZuXPKsSVGmNe8B3+AAt
	 d8hyTS6OkNLFYrQApOIA18eZ+6/O/yw5l/ETzEOwxcCkhmPfQD5rX7mq5fDN1YXIP/
	 pqLKM5Q1jFkRE3OE7yEBnujhXEpY1Mymn5rK77f/+Nsu9NMwrz1KudG+rS39J04CHZ
	 96l01K+REY4spginLuf+mBAyUFo2JjFaN2Qgfx0HMbyw0/48GUdqj7r/FxG+bRiXY6
	 UbDebd2bp+n2vCeXpPG/cHKvHldFsov2jBd6T6XmKzT2oqR8x90qmau1KiJUSKNMuI
	 xf8pQszTRWZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94714C3601A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378959359.28382.7484667835272924969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c35b1140cc7add91fdc83cd7b7aa57d5b3d8f5eaade303cccb6c6d4b1348fea
Date: Fri, 04 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743789593
