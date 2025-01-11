Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF1D24B226
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736580954; cv=none; b=YL7KSHfSBhNXRyNR41Syp4oURrGhefKviQxVt4JmZYoeSXQNgrIst+Nr4nKzoWqOkisGWFQQV3dwJ+9BraedVsjBCYnr09Ei/IEvTEXZEzG37ZJPHC5cXJeZzCgqueD4Vs8WyReU7rJQJprjsQ3PWxr8jmHtTMlaJ0H7wcO4EiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736580954; c=relaxed/simple;
	bh=ZmiQYPHhdOnQtsCBBR5c0e3tjJra2ymOL1xdPPCgyOc=;
	h=To:Subject:From:Message-Id:Date; b=WP2CFnWyjCO/eelqgwmdC0NPWJHuf1Ff2ZKunrWP8Z9JUQuRkkHjGZIRMGXg8TWEvwvvCjoedFkkopm1GnDdpj46QW6ti7FUBNQ5rmkRKW5r0fj9+udMNjH9CTpbYx1OKHEXx9V+kXOOTIFkoxbNituJXyIaNpX68UIrO7vQ9lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8nk/ZFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8nk/ZFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30E3C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736580953;
	bh=ZmiQYPHhdOnQtsCBBR5c0e3tjJra2ymOL1xdPPCgyOc=;
	h=To:Subject:From:Date:From;
	b=n8nk/ZFwJSaBVNQGSvGVkh5/MvXL/PN3gtIh3xwyw7Y1eG8rDGJqp7chgdsCf3ReF
	 iZAj4ZKESlr4tr9GYRg/iyNLrFsvq55iiohYjXMNu/hVeCDc5VW9sMSiQS+C2Twej/
	 OXdVL4arUMrQeP//8GMa736xCeEcGQIcXOQSLu3IAmsXelEq7WZWSlmqIjuGXsCdcU
	 N9OZiZQGAalKlBPCKPar8LLS4iIQnZGyAEsgb9Op/LdEuUuz4vQJlMi6jcHc6PNvWK
	 hgzdD7oe2Hkeln/4X/9io7JczA5vAdAhRMJ1ACopCd6/iJqzcszqxPHA/6Fviel6SC
	 u1tleVGEBd9bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C5E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658095359.2815.13175894311678548736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4920a1080696eb14041af74aa913871c88bf09d279ce7d4ac4cea3488031b460
Date: Sat, 11 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736580953
