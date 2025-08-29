Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1564414B950
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756438794; cv=none; b=ZYF0qdDTTnmcOigybwcvkkzFJYEPriIfSK6nIOY+PL6VJfPxkP1AVCeUSzA5HCmlp/DORYcPUFO61PUgwTVJxh/iZ+f3hibB+yRhJc3mnyQMJVuSU+n3jEdXlNT/xGmw/KD9CyMFZa1cNQzX2xoJPEOsixip85/bcSsy75XrnHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756438794; c=relaxed/simple;
	bh=oVRWOQgSyPTYxRj7pdxziQTgNY/yH21T4POc/skJav8=;
	h=To:Subject:From:Message-Id:Date; b=JfLhvXBSz+y+JV0F+BdNb1zBmsztmUSXsGpySo7wG1FiAsfSoSFQoVoO1IKw3WkKHQ9d3FGr8bpEZddwBCUcpDSzIJy18GvEmCGhbkvNGq5svceBUgHY5JyF2Gx+46yw1N+padZVGJw7ehhXoddi5Zivs4ApxKpTJZ18SEpR9WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UluM7zMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UluM7zMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7E7C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756438793;
	bh=oVRWOQgSyPTYxRj7pdxziQTgNY/yH21T4POc/skJav8=;
	h=To:Subject:From:Date:From;
	b=UluM7zMbIGGTe9bJoVRdHzO/a6LdqAw4Pjoy/nnKsXTkHXoHvhbQDqlsScMB2QCB5
	 x40xVetssz5CqDipcubo6G+wI1y8A9sozjnQ1GuXh9FPD1EbEiRgGjZQzRYyVk8bcE
	 t8gmiz1rHLTyABUrxawVlMnZcigzH7vOrPA30hdDOkM7iDyXSqM1qLObN6RDUgfRhG
	 /FAHCPdpX0AssuYqNUwO8b+F9U1bBb1+jwf2Ig++16KZ+tibvqF2IoqdFG+abx56mq
	 BzNdvaga/Jg0OGXNNqcOTTVUorQ1BTX3C2WaQrz9K60xWacFWuNGrj43b/MGGztI8L
	 gPFEsA0hV4rlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E33DCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643879357.23915.14106191772060490709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d50f3ea88d6b49a7355d6e53a5c29dbf05f10c23a341f0d88984b2d415b28ef
Date: Fri, 29 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756438793
