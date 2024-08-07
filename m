Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242F41E515
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723028754; cv=none; b=EvBLbmNRpaL4Gb7W0VUgX487Kv95B45QYS9rgPipuqso8IV9jdRnUzT9/bqtvluwB9XDu68JvsqsIVbRWuTEY/U9Vy7kQGVIa7w7kN5mM7yc1GiMtYZcPHnQH0uQhf5OJAqm9Fkv17PwisOZdPt3docTdVjy1eriC5KM17yaksE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723028754; c=relaxed/simple;
	bh=qTisHDVyDqCrSGkJlV9tEXXkpUHwHpjBYsXJEkvnWFU=;
	h=To:Subject:From:Message-Id:Date; b=dnNdh/xt7DbjRfZqcMtS2Cz5ooZRmuUSgPVuODOafQi41KbOG0lh5Im466oeUYHk6qPFqoglzHUaG64cZ/sdC2T0aHbXf9Cz2mtuZmGCGuva4nfG3bEgWS5Je8as1iTtE++WZVrR9U7r5YhraTGH2R2yzImbw/+rgF43o2wSx8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfP9x20v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfP9x20v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64A1C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723028753;
	bh=qTisHDVyDqCrSGkJlV9tEXXkpUHwHpjBYsXJEkvnWFU=;
	h=To:Subject:From:Date:From;
	b=VfP9x20vscShntoluSqioNFySgJf9QPZvICz5BW6jOD6jwG1Hd0+OOYkyNNhidcBi
	 Oo1pLUMGWCkz3eXkbeJ30SU/QGqJ0gldGQuo+zMMKYV0iIM6T89Y52ZbNmJT+2EBeW
	 8QD/vW7YDQByeMKxMDFdPjXtN+wQPeCFWccgqTrTbVn3ctgs9ImeltQgvpnhV+8tzJ
	 cQdty1+ionkoia62eUO4kQsFHtWbw77yB/yUiX8MfzNz7uQuAY3EGV6K71he1xjqee
	 AYvi0//r2eV21PJohFDz53ZkaQAqZWH1ET5nuZ76RcwT02qfT5NRvrERglBZxj+GKS
	 mLSSzp9yVT36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A680DC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302875367.27704.6930767033944537482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825b58e4d99e8878c4cea51bdef5b1903118cffc2b9d2dcdda98acc89c43df6c
Date: Wed, 07 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723028753
