Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD2530E835
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772478294; cv=none; b=Uc5wOp3kjfQpj0OlWu2Vdv/ivjSxxUgxElFOKB7btL8svdb/rfFzl0JJ+fgmLj8xCwoPG/uyPrBIiDq2+fOcgvYZbcmafjFWipbTcJRndWCzhzRbaNn649udpTmgK2KvOvjt/huYRLu2rSuWf3z445On3qe4tk6yAEIAQwO8RLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772478294; c=relaxed/simple;
	bh=9s0VzNpiPvqhAGsaq6ZzJ6JPLsZ+SSvh2TCTzUO+en8=;
	h=To:Subject:From:Message-Id:Date; b=s76fFmElWga/MAwCJRB3y0I0bWXkA6sbbZRDRRG/AjsxFBNotSw1huwQpJ/Y8f2Y4091/4XH/qUzwfFlbvU/h4yGfZjcnFU9JT47TkIQvuMCBlW6UrGkaqG82aqC9qwDB9awMXshd9r4i4p7UciaFpaLqQPFXbMlPIgO4B93z2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ+9s2cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ+9s2cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE760C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772478293;
	bh=9s0VzNpiPvqhAGsaq6ZzJ6JPLsZ+SSvh2TCTzUO+en8=;
	h=To:Subject:From:Date:From;
	b=hQ+9s2cGPgEeTjuE7b6io0htymI54tugE/ohAczNiR2hmDa2hyCK5R/abB4LnJ3bl
	 9uCPQX70MT6P7cybYRxKY4H0lkZ4xTvMtp3hElCkPfFvqhGKjBk4OII3u2MPv2HaRm
	 O+3Vfq3Vu7XLUk5xxelfPN0Tbl7vzM5DLdtxM6kYZprzc2LbzhxNEs4Uo0GPBdNFcO
	 WWWyBJAhSEQ/Sq2+oq7I82TNN9EAuXx8ujd/8pm+6OjBIamnNVWd7QK+M67chqtgVk
	 F0v69Fph+SqlQznGF/evsyNYweCUxaMm3ckcpEKmiruhuFA1qjpcsjS5UtfoeJF8f5
	 Bi+akeC3RZbhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986FFEB362C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247829361.1333.17855651121767791421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e73cb700e86b6f37c141f14e0321f00813d4e6ef03ed74dac33f0ff1f3f7437
Date: Mon, 02 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772478293
