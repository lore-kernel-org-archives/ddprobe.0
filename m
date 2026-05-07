Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FAB314D2D
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778128054; cv=none; b=EeRTxPxCXQ9BGEXley9VUYsku+uyiY4Wmth/AsIu5DqvFopro64PIgNMDqvFZ405U6iHASe+7q7eQbFKyBnJbfkVWLPnOGKEkpVjeCc3c6kUEEvmHXiH+qa8am3IcdHnnL5+UnobgAhv8IKr9ud2pl/JYUAYFaKEQww7n4OvHf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778128054; c=relaxed/simple;
	bh=NthfW3Nf1qXsH3f2BEPSgtQmQrl8L1q566oodEGGJUs=;
	h=To:Subject:From:Message-Id:Date; b=sJ5dJElsIuDWgZ6CMx43nixtu3UgnGU2ZPbkTP+4u9OAwrqP8D+MxC8mX4EwA/dFiNTVLii715L8O/GP3Maqkrlu43Q9nFi2hmgS8o0aNtTXsHntriWu9pzydOy2UAhht+laeQSTvdXhLpy6x+bQ3CQEA6uPLtvTkQ9SCsmkT+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJs4Iuoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJs4Iuoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13FAC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778128053;
	bh=NthfW3Nf1qXsH3f2BEPSgtQmQrl8L1q566oodEGGJUs=;
	h=To:Subject:From:Date:From;
	b=lJs4Iuoj4K4osbgxjjno5bqkS1RWld1Z7ifQbsG2hyMalgJkI6MZSb83NS9qQJHpv
	 hfrKmNIFztv1uNbYkSpp+nrWEsB62tTjsj6BnKBLAJbUH1vhT844/l8Fi7XlMEIpDI
	 pQFzj0EmNglfODDGlCtFbedn7Q/3l4Xs5yPSazu5Pm0+hYopyeFpzTLjfZHdM7lLlJ
	 yIaZs5uXcATD9rQLQoPnKFJvIUvitjmllnbM/Ev5/MovXvnzTShrrQ85TyIdlkn2T2
	 6aUrZUo2+NrzztcMnF3HGJA+HQ4QbiN8ciU2Or3ZfI/Om5PB9XFj9RICNwZNmv0+8o
	 raKRISSbSqxUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1D6CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177812805374.30772.7033239363909116109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6059ea37944b8c4d4722d3095252a83c0df3a5152b3cc908ed1938191bb862e8
Date: Thu, 07 May 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778128053
