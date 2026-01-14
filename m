Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1873F246782
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768423434; cv=none; b=alWRLUchpWHucLHqIDpCJSOvsL4nhGABvCV2/+zqrAeJiRdoLMoLPO5RZDjCVE28L7GwCF0uEofplTvVHltC2U1RE7CJhE1oqTCkjZsLKYXX5ijifAs/kZ58siOQaaJoP1oMjnaXqqziIOSa9OClr/R76/RKeeQ/EBYyptxqqY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768423434; c=relaxed/simple;
	bh=fXa/G44IlmLPFJDHcF+Hqdrfn8etySl0CmDopxEcnPw=;
	h=To:Subject:From:Message-Id:Date; b=eL6G94UAwqFgqIqD3tVzKo3sB4UDTMLrnvXEmkBo9T7qcAChfszRcakF8SzXWlz/oX5VbVbmj7yo6yBz2XCJo4O17/NdlL8WPDq8dwUefkMq40kK/G0FOej9iHCuVRa8hee4tB0+TFGoxsNEj/6n2cYFD+FCHC9qezfeLkacfS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcQT2Fkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcQT2Fkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A213CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768423433;
	bh=fXa/G44IlmLPFJDHcF+Hqdrfn8etySl0CmDopxEcnPw=;
	h=To:Subject:From:Date:From;
	b=HcQT2FkrDeiZqJSR9SOjwOMI5aEUkzjQa87K3CLv5ejhoBTOI41QGe4Z8MUSk1WDz
	 Vodep8O1uA9D+ktbUP5CkElDuC4G5QXXqeXn6Mg9awyQmRCq99dCx+5fla8F/ARGYo
	 lGnqlre2M5R0QIH75RpTFaa7FmV3dusoIs7NzyL4m1zFkGiult0OcqwG6Aci2ZX4aP
	 0S9eTfwT0RUn8V7NH6+q3RK6gDOTndgi+qta5KFT996hcOkT5zLVsRN4EdAzQqv+aS
	 RNEH8jKOdtyZ5/QfLqjuL3gXDpVX+xxepS/MZeDoJ2Vfohrbkte3ZIm6R9CsNeT91o
	 fwVAf5OBBakcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A8ED3901B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842343359.9453.16579944989786586628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2723c46a4b18708da82c029c12edd12cb7e49333f848ccdbc6de83527a8a94
Date: Wed, 14 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768423433
