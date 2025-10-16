Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA471FDE14
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760606993; cv=none; b=C9mV+HhoS5JPPXFum0O7uCSRfaMmf6zvHofOWXW2bjMAhxhUOJt3gxk0GYHimLUc0ggjexdGvc8OSYK2NoRMtjHbiyhB2P8FdpkTgO6WVM1r+ZuSc39aWlPILmEvQ4x0/OLGmoLID5QuwRAcgWYMUeF8+84Z5AkXq9vgZ0eBJho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760606993; c=relaxed/simple;
	bh=IweuaGSoGZu3DetxT2N9R21oCU7p7yWedEdWvYh4Dos=;
	h=To:Subject:From:Message-Id:Date; b=IYrtqu8B4HCdmdj2gQcPy3qtdZWm/gm8A9G0jGBNFoSWQ+rAm90LU3NOlOt3Kj+kWKQlN2cYfUzIcJG0b8hCP6PhrZlb0acYlCaa9XmUWAfb1zkTr2bkVdTSm8BRKeblQ8My4mJheXTrj2llvigHqUGjPj6tsDoOu3ChxBh819M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr8o7pn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr8o7pn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3896C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760606993;
	bh=IweuaGSoGZu3DetxT2N9R21oCU7p7yWedEdWvYh4Dos=;
	h=To:Subject:From:Date:From;
	b=Kr8o7pn5Ypcpqnuq++2lm1CO7TiRdiTdPi2gHobwBuN2cxf7fJ/b0ze1Z6j+jkSqj
	 dizGC4rF2otXAWDTbHNEgmsQ9ZRgAIGh7g079GGC/ZoqaLr0C40qjUvZCgqy0h3nhl
	 KSg2qVLVVsuR/RA6d3LCSBS2/Wx354r4MaPLrgQjbw3SMxdwiqiwOqmlzCwbly26Xc
	 mSGf9xELnSaaiFn1vZ+Ss0xOdF9rRSXod0083h6eA/evrL3sgxeVlWYy/HQba3+wpV
	 4tS1CB5l7+7IyvZWxRvszXu3+ALB4brnw39qPStmnokLmpL1jwKc/n7hhv6datRk1q
	 IpzLjbSBof04Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B75CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060699359.13971.5503802579941517065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d616a33a0319210f5a023c44e9f68109ee27e73ed24e27e9723d60c527dc9a
Date: Thu, 16 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760606993
