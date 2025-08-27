Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170BF314B8F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756279194; cv=none; b=E0jjuPfV4J058rbYWI+zJLMJ3HG5SMADEQLCcp7vLxiLZmRpecwovnRcoeCsl9lDhThweoxdZGAuU3x2OUyUG+hjonREqdcDuCnK286SuBnPSQi9/DSEw4sNKJwSRv8rKyWSbPe6LvcH8apuvcqTOwH8ErmLl+JUqSeaD8F9LIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756279194; c=relaxed/simple;
	bh=3ufthKlPgC94BZOmBf52/d1B6BaqqIJ3p6P1c7M+dms=;
	h=To:Subject:From:Message-Id:Date; b=UYkOQedmdbuXra2Vdu+qet+Xow/XLnq5gPfsR/BMqNvArNAWXFANCxn7+sLZGArtObe4RozUWzMGPp4kvoHccvA4qvPXibqeY7IfQMoJRih9tJxH6/1YxJyCalF+AJrljhWRVjrBRUj8rZzRUPpxVMkT8mV4cPWYp5esZQbenxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLUr9JUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLUr9JUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756279193;
	bh=3ufthKlPgC94BZOmBf52/d1B6BaqqIJ3p6P1c7M+dms=;
	h=To:Subject:From:Date:From;
	b=LLUr9JUySEjJ0xHnyUtje3zb9RoEzJVxd2ipG+6QweF83rAfovAqussCJ/ltyIFs3
	 jOxpcgVS+UH8zTA+vgC2Gd1FcL2HRplFoEURdp+NhpfMKUP/y4+BYTjrHbcEw6Dp2X
	 5fVN8DqQY8Q+DTofrUSi/LZEeaqOIArjFy4KaK9ijRNLbU3GHKtkpcg2hUPiRVmjYo
	 KlcMIZup4Yvtqe1UF4AIFDiNo2Ma8o+74Z1apFmEfv1fWVKeGCMbW62vIEktETyRnG
	 FuBml/Un6bihIO+z6ReDGzuvE0dLWNQujJsMprYNdLkijAhxrzGJtQkrTbC4J7mZTH
	 VyUB1YreTNjkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEBDC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627919362.8079.12931142485278231412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad734a764faa1e440d6e90f03b9d8fa93745534c36a83b3f8354f4c83d1c36b
Date: Wed, 27 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756279193
