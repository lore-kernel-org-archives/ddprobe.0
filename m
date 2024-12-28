Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1EA14659A
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735430154; cv=none; b=c2MR/A0YRIZP6ej3IjqR4DnisbPRWNaIsOGyVSBWmIyD88yzJ+fhPy6da+BFrNXg1q/zgNlewMwvPI/61Z9Q6nNuZpBe8/0twMo0xEiJ5ev02BmP6LMfrKGDDy6wKtMNtAhi4CsrqPD2HtoZaHlpMYGwTA5pCIEwhOebAgDjb+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735430154; c=relaxed/simple;
	bh=VKztHH7JQXacQ7d4/cT9Ylbm2EHMwd5CVJB+vvRApco=;
	h=To:Subject:From:Message-Id:Date; b=cNx5LqZ+lLbm9iEz/8Ea8vPvH7KGfgLK+Ahzzwq9+i3VrW9+jvRDky4qFe4L4zKwHm4spfemknN1RtKxjdG5uLWbfnDA71opdbqxqpvJZb8gyuAP1ggsK3IPANkW+tw/VhrntjO+ksQREmJ1EXrdLPO3Polo71eDknGhTHziZqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rueopyj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rueopyj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC309C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735430153;
	bh=VKztHH7JQXacQ7d4/cT9Ylbm2EHMwd5CVJB+vvRApco=;
	h=To:Subject:From:Date:From;
	b=Rueopyj+Ba7Of54eG0MAIbCvqrd1odh/4JvwX5ZBBogp34HiIiwYYYsNGZ/pCr5cg
	 pE/D+GnPaIaNpKlFE1Y3QPFY4sRMh2TOGZgQzqyDmnfEegLiFaR8EgSMQF/C8BZACY
	 iukCnkY8OKGw/fqj4Q0OwOhizmj0Br3gvXFyPn+dpYgLBj6h45hrP/Aa6gjsOPVRKt
	 KVO/GQkBnH+P7cpp3Zokyf+Hg3MJpK1VnLssi9L8Hj3jQsdI2MA4KR9L3mIWSWvISe
	 nqfvicEmBTK7TYtHdmjCjqXTAGRFAIiXSHoX6HGDIHzGb93QghOebEaPAk6nmJKOoh
	 FtRuZzZ3+yBtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13B4E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173543015365.5625.1566027685339986631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fd1963fb492ed45d04adc9aae61f04a789758fe999c5e32a94f83e531736a2
Date: Sat, 28 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735430153
