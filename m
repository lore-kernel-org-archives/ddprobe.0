Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8EC313E00
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786227034; cv=none; b=ZPd/KRTiH/mRUEyOHaeuQ6FuZWs40vqUqKbt6uCt1ACt2Z0oxf81VvmnBlAWtVw+yS3I844hAdxsIzQz5iEgeeRtsBgcYUKWfkpJMNOkmb/FXj4YewLVsnozKChnf1cbcntc1hGc1nLLbeiQ1yleRINQF1kUaUo5eB9gN2GIb/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786227034; c=relaxed/simple;
	bh=oubu97+642k0eKw9avTVTmrg1LPddAlzRwQlW/utxDk=;
	h=To:Subject:From:Message-Id:Date; b=hYdii56NB30N8FR9ESBj/GcqHRvXKeX3vZ97lTmhNhC5XgzlqTlERFusi3jMczZP2+eiPJfEQregh9aYfILMhgphh9OnaCHMUdnxTrJikQhMsyYW4idN/HtP1quavosONKXpqrBXDQ+HayVu0IYgpYHWep9HjFCHj13wSDjV7Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOZaXZX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOZaXZX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9498C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786227033;
	bh=oubu97+642k0eKw9avTVTmrg1LPddAlzRwQlW/utxDk=;
	h=To:Subject:From:Date:From;
	b=qOZaXZX+v9FMepJMi36ZrxHqOwMSml2gC+WFmPiUsix4Xvuvs/jGUacYpIAzpgRE0
	 WCPYSXH7wgRwbeOV9Qpc4id1Rh4+CktRX21vfE28S47fNjpf5HEAlI8u2xcB7siIsj
	 e37ccu0aWjnQLlD43CzB/MAmjztHg6SzRxyEXUs4FCIBKzXkIR40KdfGjaKOsDGCb5
	 I0qLwIZgaR6yaS1Jdm4HBZLQ7JAVKo7uaW2rfTWhD/HxaTiZIIjuuGyQUSdKTe+z0n
	 DymoVCCw562cqC9qBAIKadEqiHBs/4Wyc910b3GelP8m2sHiB2i26/DszvAI4nXIKY
	 Nq/21W8Wni/3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D9C5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178622703368.19330.6694161296831140525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50077bffb844b60e70990a06ede6da60e9e086d68c9fd69c79a14acaba68be99
Date: Sat, 08 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786227033
