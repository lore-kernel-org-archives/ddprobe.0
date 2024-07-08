Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550CE249E5
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720473383; cv=none; b=e45OadHamCQz1dr+qcpy8d1pQ5G+74HoGPxxYlDVTuUHJGrQRC4gY8xkTMCxd8prII95liHWIzeQV8Njwv7zjqpJs7QVwKRxiS0SLqHm+p6ENB/nL/QHohOzd0NdDmpSa1eddfVNplm4ReSvxAmsjOCOWEW53ZC3E8igRUzjRB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720473383; c=relaxed/simple;
	bh=/AfAoRztPwRBYABOPmcNrPNgfoj4N4Kjt+M5bG8kyW8=;
	h=To:Subject:From:Message-Id:Date; b=gFRF4ao+hIJTtbdVUo2WLRvqzO9hl3d3LaQgCkKqj5brHskTwexpJ+0+IuukA/tcgyLe4dEU2JGvNPv2C+dMpkGU2WsIEOuZYSTRj7OD2uB14T371XiyKaEXQn1bNWx1dvXFLiVMYiFAIuTcuhZFXJRmhEUzbAbcIAFiA9I5WXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVRtBMYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVRtBMYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82DBC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720473382;
	bh=/AfAoRztPwRBYABOPmcNrPNgfoj4N4Kjt+M5bG8kyW8=;
	h=To:Subject:From:Date:From;
	b=EVRtBMYJtCMyQMDPDh21ooFC3hgvNghOoy6TYogzOxWRCWCNCCfXmF2k1jfu89Ecc
	 +A6zpTczJd6/7tnlo/ESZdnu2BUo6AoPCkAfwWAYVRvt0LCENjYsF/BVAaX+2NAX0i
	 IUBtF82hSVohdyPqaUaBeLhBX/y/Rl2O7Ec3L1WGMvH9jhrTDeAJ02BxxAnaHnkuVe
	 vj0NJeZquHaDPgND7VjRQ7gu/Az7ig+TO4PNSSUV5BVX7e7UTW3L0W1p2OXX8tIjFu
	 hkkuqPFBaqc0K1KQmBGTN7iW1kIAWrM7qZouhsq8O/VMbuUlBXITi8zCfee0xicDkc
	 lzJKr3JwUI9rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F95C3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 21:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172047338282.32566.3562605190871235143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2307db4caea4792def5a667dc39eff8460ef80cf23539bfa176734e19b387028
Date: Mon, 08 Jul 2024 21:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720473382
