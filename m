Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173BD30E823
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755872994; cv=none; b=Ch4jWYom5kdASoV0KQhJeijZLEtFvVJbcVcxgSYwf4j8tk1Q3Gzqao6T8gqUtjR2cx9eVp2JZOaK6DvFQd0aNkP0lQdvZPbRrycJggFMfhg8cg8U//kmO2feJtvsd/wbkpU4XRrY6sQOEOQQeIxnFiq0urNjLy3TcTHHcJ9NO1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755872994; c=relaxed/simple;
	bh=TILshaezAM1pkdaBEM0TmnAFxtgAK3qYpVxlle/Fd3o=;
	h=To:Subject:From:Message-Id:Date; b=B9HdG++rTQea2rQbOPEcoopToieo+Uq38U5LBdV7KHwF8DF/PBt1xZeFdDGUI0JOXArzQjYM5aPbHe4U2phC/oAcLuPbehzxboO6Vclf1zOPXhdauwLvwrpMbXhK221pyQHY19HSNQJC6abL9oDS7TQ5VmLuP9F+7h/sHz2prf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pln/yyUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pln/yyUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB6C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755872993;
	bh=TILshaezAM1pkdaBEM0TmnAFxtgAK3qYpVxlle/Fd3o=;
	h=To:Subject:From:Date:From;
	b=Pln/yyUy/vRnAfhjEO29iJS1p6TWeayrPGsHvsHQiyL+gYaZ1wOycQ+kI0qYw5/Xt
	 Y7GljWFl5VBUnFvPScvfjMntElScvVhBZK40CAEyN21PKCay7xjy6u0upo8XMkAGdv
	 kNLWMMAwLDNljPOA1iXa0ztevu1IosXKJlQ//xxpswY3Bo8Q9JagRiK+Hnr+v77CVw
	 D4knVhsN+sc/nJjdKFe6x07NVcsqzT0Pi9Cl5yRbKKSFJZMvGvHbrGAAKDxSi98T2G
	 HsMAll2C/wHnFTLFicYXJQLAU8/RyyqVMoBUs5bO2aZhY/Q0xeWiV3sICmogmcDwnv
	 RxccW3ldIBOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A9FCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587299357.19131.5209356528459121985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1d2235b82b5780f0457a563cd7f5a4f1835e6d4b5e9957c6ea46da58b4e98f2
Date: Fri, 22 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755872993
