Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DD51A285
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764739374; cv=none; b=PFvCBHgRb4eqKO4eAv/3XseHV7WOelP6oLd0CIRynZVishx/6QQKJEmyPUTpZlzF5DrlpcK6CWD2aNge+QqswshWYVuMvOM/ErpOlUD11UZpbm6R8WL+cxfAD5GPYBO774IQ7kR4h1tYhGudTLZwXoCgT/tiVj6aWLsJZUGHymM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764739374; c=relaxed/simple;
	bh=DoW/flH1zse8zO2O+NHC6byRT/4gyIgjc5oUD/yJCGg=;
	h=To:Subject:From:Message-Id:Date; b=uVKmhLdVy2Rxviqp0iqYW9T0xPdMqDScrlcd2HNtVjW2fMdWACgGFJAnk/QFEJWkwfvCOLI5AkppqfDaVxS7WD6BxqFBsgCPBcEZv5tUEqudDZgVxVs2fWqepiL7nJZCgjLAv0yNnslqtxyjLGmPTsaPE50md9fN6q3h7e3dwP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uqgydrar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uqgydrar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C63C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764739373;
	bh=DoW/flH1zse8zO2O+NHC6byRT/4gyIgjc5oUD/yJCGg=;
	h=To:Subject:From:Date:From;
	b=Uqgydrar6OGbeDM52Uw1P8LDyePe7JygQiTdLfGRl4kTeiUZjynOGCjwBPRt93MUM
	 JQyh60Jo1dRV3n+YyWFeBTURS2Rvam1Gr01ubz9zZ/jqTtPVqBggeZ0QQMbC+R0oXX
	 MEMlSs9Zup8JQrP3H+0Sm4Ie+kSRm4SOIC7J8SKbadN1fetzQPkkQmeDC35AJonKpl
	 huITt67k/gSeS5uyeZp3HJbZ2z498Uy8EVMuezojNxvZFESWK77GRPqNRE8ygMBp0/
	 ssTQeyGbMzITvpSU4CItBtQt6Zs5sCnLTTaIlmtIxLvMPeBH0HdtYcx9WL6aI5rqUa
	 xK3QFlLwZ5tZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B06D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473937358.19040.6508417983532155489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847720fd61f94819140d4e617b2832324ae5c83a4f2ab155c651a00f70cd6563
Date: Wed, 03 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764739373
