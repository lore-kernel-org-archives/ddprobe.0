Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2CC85C77
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716656063; cv=none; b=iJMXJEI28L3ushkcpHatPhJSsCn7k96rrkl1f5DprAIVvy250Hvw34TGw6wpIrcWMme9wecXLDuyXHd2HcNgIhMEiCRkhWUZjFvIRmPBp4jrkil3Xyik5/40hiLrBpWjqe+K5okY3eat5IlYBHAaHogXtccnI8dGS5cQKiHoxI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716656063; c=relaxed/simple;
	bh=EEnRBA/Hxb4jQxppwr16oX1CdntkiLlyxgue+8Rs3Lw=;
	h=To:Subject:From:Message-Id:Date; b=AknPP4LfkD1Ctcpoho8LnCg5oiB07hxe53zcfuWYYqf8qOxOZXfGoh7wizA8XYZC2+BoQlK64BsF7rysmi/oKreGR0kQPZou0aitcwcbkv3psXXSsxOE76MRsJN/w0TbmSKJXrCZL+QPzZqXVNb1xb8xvJwU2WSh1YKGWqzCJpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEFObbsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEFObbsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE362C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716656063;
	bh=EEnRBA/Hxb4jQxppwr16oX1CdntkiLlyxgue+8Rs3Lw=;
	h=To:Subject:From:Date:From;
	b=AEFObbsACtE93cU7lP0s+or9HVE4VE0lG/NDb06EeDjs6hrmF53rsFgp7/1K6nBBm
	 yA8zq96/FWHpG0DrKdcUZAe9eHnGYgLHpAKOt95Jv8r6Ra/775m5LnU/4jytIk6LcE
	 pDmXcyUUlQf6SYOgaoq4EB5G6OPcZ4qjZfQJ/r+heeguY6S7A31QNEESKr5y+DLSvH
	 mmbZFVQUFwuDYe5N9x4NF5oKmpV/hJS6PDalVYwrulEnL8lzbOfKDpdgO5eZ3I4saJ
	 nRPQ6DhPc24tqqB/eV4lwuzd55jA5G4N989HhweHJ7bxQ3iQakPettVMevq/NhSmwA
	 h1GxQX9nDNJPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8E2AC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665606287.10665.4536211646621218644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0168e5dc0487ab82106d92f0576d6b637878beb68a05ee3945b34b7c0e61df1
Date: Sat, 25 May 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716656062
