Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6BB18A94D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721043863; cv=none; b=JCqGFcWLlxUSLM6B+TVHI8Es7ITwy2GwKC2om+nasUiUojdAgJs2fvTykRdkivlvfLCvn9M3BCc4DiH/Sju98dlM0uBEkqlXqRwtLOSy3tVeckmnbMywAiAmEXL4tKHBB88BV1hrB1JbU8C7Z5SYUsSEWpqsGEacHz/+I50x4Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721043863; c=relaxed/simple;
	bh=otEuypCbKILB718pJFAE/gK9093iCn+IThzkP4JD/rQ=;
	h=To:Subject:From:Message-Id:Date; b=PQokLGcjLgSrH6x+iHC2oGrHOcnU+IkfgC3Cidi519QeKAiD4Lc4AESupwdSPAplyVarOWDGlejeIylwp1mchp7cdTAbuLSnJqzf9a2b2isQDwtHv79Q/iMMvrjB5USnouU3YIi6MxCccaVQwRk02ghmXI+U4ge90p+7P5/oHe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZwpT3Av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZwpT3Av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FF1C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721043862;
	bh=otEuypCbKILB718pJFAE/gK9093iCn+IThzkP4JD/rQ=;
	h=To:Subject:From:Date:From;
	b=VZwpT3Avgggw0wSchAuateV8C3ZZzusovtMoKHkilghdzPNFv85S1tukKsyfRBRM1
	 zenrCkbJgkIGlXK1Ac6+PpJsMUvaexrJ4JURWBOMuJLHrZJHITMR+Cm9dyEEn8BBEi
	 rtT0vbf80qhHwb9tYeHDi6ZGSuyOokNsgTznbyQp/cIHfMXs19Z9/Tj6VC3AJ2uJKG
	 2DqnveKkbMIrw4pmNj1qrdV0CSLYSvupX6y8AfFK/S8FSUl7lkYjXGCxHl7aRkCkQ5
	 ho+Zt5SL2dGqbUhTsVZhp3jwnsKiR1IrrNc9VUxjYWduE070GdwG1lzXuY9BxA1NFX
	 V48Fh4VbuXQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C770CC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172104386277.2037.14628367235431582428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09643a51ce84d6567ba5c66aa58e172d551573614c086aa96a8f8e187dafbc74
Date: Mon, 15 Jul 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721043862
