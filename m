Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790DCA5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741740534; cv=none; b=D6Ms6ft5LM8vhEs/YBtv0LVXubrcrFNwztFDcL8RuNaXn7o4E8WBqcWSBgekLwkmizMveQBufnRSF/HXUQGgJxMwOmk39CRiVrkGZsaq9/Ca5g1TWmyP6uUf392MEyPL4vMQxcX7hGNQBuKEo3cv7E66BLTJCPP2bFxAGba4Mvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741740534; c=relaxed/simple;
	bh=OHu1JKDC0mmKu3DnzIWgq6ShsSR2T+IHP7H28bGYelM=;
	h=To:Subject:From:Message-Id:Date; b=hj+ak/bAMqezVamcd3wVEsH07LDqHy65rm99g/eKwpkEegzSAwDxO96nCvdM1pVi5o6vHliZsuyKySiIwZrMEAOpGLrhg+y+NtPDHH0/wX7ODb6uSbwWaELm7tnDCfAcrUSBquKWTWOniWmsFEOe3vrrofSNn7ryqSJhci9Ex5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzeUak2E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzeUak2E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA21FC4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741740533;
	bh=OHu1JKDC0mmKu3DnzIWgq6ShsSR2T+IHP7H28bGYelM=;
	h=To:Subject:From:Date:From;
	b=bzeUak2ETpNiNPxC+u6wI/bhLobgmYyywxry6rCNfQOc4JvTsca569i8e22jifITX
	 JMFfmHCMfeCe+SbFJqQST6QVqgCHF63B1/N1G8F+G8phlwh9VgkuI6ac8YYq4bWOAQ
	 xBJ0NW9lT0TO2LoQmtGnjRYu4HEBbc7P+BTIGm4A22yVRu/Ib+Y2POT3hFGY42i0Lm
	 fbjwTJmrGNYLIiLDejpyDpwIzg4yCLami5ni2TpV82Y95axp/AKV1kxJ8DtqDcBGUq
	 pJP9hWod/NajsnzwSlJp6h/EZv0grrHAqzvC8oeP2gAbU6H64Oemal/bD+3CvDVScZ
	 WrUCrSiX9c4gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1267C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174053361.27504.14731209259436553142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cf878473b5f07a1713c6632cc47d1b7cc06acb3c085bff0549265759cf879f
Date: Wed, 12 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741740533
