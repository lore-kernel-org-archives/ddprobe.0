Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42633EF66B
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788554434; cv=none; b=XeXUS99hjoHPwj04/QhDwhXwCrGhPZDtYSTySuzTg0/XMTZlN/veTXa2gIV9CIanXpS61xJ3/l3CjJvVGYSRbr0txg4aMkUFYvgDf6rlwpaFfdhoKsKVhU7+RsSVQAQGlJ5lFQZAEdwnnW2Y1++ZTJ0j9PetXXiRiL3CT3g6k84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788554434; c=relaxed/simple;
	bh=LqXTYV8YQmGlCOX25cPPv7a4BmErV20bGHO270BDRWo=;
	h=To:Subject:From:Message-Id:Date; b=oJGyRr37PJFy+rdnPzHgLiUNVVJkyUHs+1VRTF5v9B44CTVT9GBft8y2GcLxVcghiI8RPNPlvvKvE0D0W7fxlHNE6SvSrX8JZ2xICWPwLhncTIWSq5XpO3SG2qEt0UTxcPKD10jJNOCbXfAkWcHM4qqLjVOq9Ys4leJmLJFhep0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anTFpzGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anTFpzGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD85C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788554433;
	bh=LqXTYV8YQmGlCOX25cPPv7a4BmErV20bGHO270BDRWo=;
	h=To:Subject:From:Date:From;
	b=anTFpzGramcTKipmAxqmZ2lPyAAqSg00qq+OBa/P8i3ptzYTDY4gvXTneHNCwjOx5
	 zV9CzjuyrMI6EB/q33nIh1Mqn2LR6tdHp6bjSAuHOMmSjRk1yaPmL3B8w5EoQQKhdd
	 UvOWIglCdmi7VYYlH1SJrWwkRMk+HVHZ8HOplx9WL5pYH7vt4LE2m4zkhCWZ1pfPc9
	 HVWL/rnhveCu2TtlnJUbe1PYA+qAxGi3cpA5vdAFaZ/a8zlcL7nIA+Svoh2x4PJmPG
	 k5vkkxFayd5OZTgaBDAqefvblCRriL6kT6sORQLrWirJ+81z8Vh7MPZpGy9Q+JeCEr
	 /ff5d6Is8bJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48E0C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178855443372.30175.11957254147280015396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b133a94ae137cce27e34888a8feb91ceed38e402375b1ea0df42a8505de0e99
Date: Fri, 04 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788554433
