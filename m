Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF0A1E991B
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761366594; cv=none; b=PFnHagY3zaaQ/icv5zzzkFm3JcmY7OKHL5GSL+KPcXiYQGqx+tZ2dTS24ncTjRwBcQmI7abcqNYGwvTJodV4Ae7cCCHEEN1JTt0rz7/MVn4bTqBEN/HwWCIhEWky6kz37lkSG3FN5vYWM6caKwiWdjicIH2TuoEgrdfJvImSMuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761366594; c=relaxed/simple;
	bh=Xv9juW48/BLc3WS0LEkop2SCiIO2nyoJv/Jxc8aewos=;
	h=To:Subject:From:Message-Id:Date; b=lrJhk5PPN6WGsKAQ4N6a4+mcUmcaKaosxyQRjNAhpz1I3Vi7afiK7CC//+s6x4IM51HE+ie3ovKw9oKJHnZNJ2tEhloNYNYHecRPPDwsvLWHhO4qMwo1HcWjny+D3kol1ykf5iKeQ6BL/wBZmps8IZJuKMr34cU9+L4tIq10k9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FroOQcko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FroOQcko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE9DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761366593;
	bh=Xv9juW48/BLc3WS0LEkop2SCiIO2nyoJv/Jxc8aewos=;
	h=To:Subject:From:Date:From;
	b=FroOQckolnYrFKvc6SDtKNJTJSvICgXiRh9jSYWOViDdZhDYLn+mM+mbq8AxSjnRr
	 Zdb1649902llTQdn95XB9VhTxOrO+9r3wVE7y+2e4pV+NBcUyMUobCs0yAo7lFkDBq
	 9n+g3TDgpvqSPuJtOjy+bPnDorUIEOx4iyCbV979fMao0noL8cL/5JNJ5qXJnpIb4x
	 X8Se520M/w1e8vCMRFJLD93SH6XL7bWZ+aFmELVySahVje9DwHfhNcJg8seSHerYF7
	 Kw5l5NEg3/w97Bv6Uid5JvyKatmAn7dkNuAvbBCcYmn3hIjWrjn7GLa2aTJpGfJmRJ
	 kbFiXVWM3Dacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9749DCCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136659358.31268.17218416446409873906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1822d4f184d724b5e54dac0dad49b5c4566f2cdd09c07575a7dd10de7f301b4
Date: Sat, 25 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761366593
