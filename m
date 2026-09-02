Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5057A2367B5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788308434; cv=none; b=Pa+NqAhQj9gwSaRw5jx/3IJt1BUdGfIsrcW+fMFo/OX57BuKOw2vq5/TbsT1k+pp5uGkGDpH88ux2tY9J7kpd2aBgZO4LqbTtXvNXFNXhSpo6DljW7wUZagqZSmBh28zNUMgQZT3h63/HPu8Lb+6YxnReNGuRW2ZlmKu6NLy4D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788308434; c=relaxed/simple;
	bh=OynGJRleSPfSjN+WLfxqmtHlHCHGITu9vUcHOZMGZtA=;
	h=To:Subject:From:Message-Id:Date; b=LLirQ+EaPtoJbzBorAnN5pojCOhWiYHwQFh6yVPA6DnCEiJjQ4fFEorNNJjjHJhplGrU5RqOdwiZvKaVbO/2vp6c01DTQFxGPNslAXUcWlsS6suRMd63ah92reEqq/WjdtE1hK8vzPxBYM9+OpQpIlpsb12M332XttK0/EG1Rjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vJgomje8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vJgomje8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD288C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788308433;
	bh=OynGJRleSPfSjN+WLfxqmtHlHCHGITu9vUcHOZMGZtA=;
	h=To:Subject:From:Date:From;
	b=vJgomje8ZEQ4ABm07m1np8lYzeUfd3zOqCT7Pw957j0vYAyiK4hWnaxe70UL4wx6c
	 QOnI+sCdc2r84ojYkL/Nr8lNt+kyCTbAX266JgGznram/bxJsPO9/WRiLG/95bXZC2
	 k+R+wdycQrQOCwPD+LcO2we4SWlp2QvrF7u0pni0z0+vT4cw72aNKsShi8DeuG8mYH
	 8EywHHlVEKgXFCJYSNfkB4U0l/8lVuL7y6nRNXFH0Wlrs7OxY69PdIcTNZ3iAPXQUq
	 yhOIY7ktOZin1edL7sZQzKRf5hoaKdTOMMCz+2ehLRmnqAlBnm7JQHA0IKmu/pEAwu
	 jexmgHd3KEOUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE01C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830843369.14666.12077123871821706890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59c3dbbceba198802695f38c3784b79a5d42e70b5cbc5c5a841941c11ad1885
Date: Wed, 02 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788308433
