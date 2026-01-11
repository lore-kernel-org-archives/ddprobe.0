Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF052853EE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768158834; cv=none; b=Btyv0xb3oNqUbGEeK2ABuOVWUNlAgalsRamKpBTTxi3YnkYN/HHLBBSVvV15J2D5MMsg80L9FPGM5J6uuu3l1eb68E4Y4NlFUk9LdLyo3n6ZZv0ikONVjNAn/aztE0czy01x1F51B6yICXyn0XYN0IeS/8iY2IXNR7MOm/+mRPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768158834; c=relaxed/simple;
	bh=dHjl9+w2h/PRK5sJ16jRzmfg5JFXP2JrG3THaZt4QN8=;
	h=To:Subject:From:Message-Id:Date; b=sAWZlviYzaX4K57vayXhpm4slYHrRHA4d6Iq4EsmMdMvuHjKGFOR0ySthu19ipLYEF1DG8WisNirhz1XOzGLwhDpC7XJKJG5l4vVRDHht2k1EWxublDHp1BqQaC4Higj1BxjSrdRlxcriIV6sW9PYbj2yBLM7X3Bs3r1N4yQXXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3p1I90V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3p1I90V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4FDC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768158833;
	bh=dHjl9+w2h/PRK5sJ16jRzmfg5JFXP2JrG3THaZt4QN8=;
	h=To:Subject:From:Date:From;
	b=J3p1I90VGbbTN4JJryFnMSZ9oB41Bf3XN5Ge+hImJX4adG8HtPTNfwrCnTEtn4BoQ
	 wFR86yx/lpAuOKSJRfgPNzDbuKnEKEmAG/u20zbUtvUDIGqX0PRr8ceOnrkGehiGXa
	 eanMRtTMlEcYzFN083GUGo/kBZ8/pOjH2MK9TNScYW6CiAFF3bXIvcpwsQlHmFNaFj
	 AszqvztI6lcKtfO/zJfiFJgKVJ0fVX99s8VzlWhNHzgdLgCnOGlVUSQptj8OWnhK5R
	 38jmrpY8Jn25Odad3AkcezUAxVEh/MRglUvEC2szjpphPWe2aYj4lFsgDT5vEoJeF2
	 VREnMMR1ctWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A4D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815883358.28617.11663467546487703945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c247a6eb0f32b26e537e78fc6502539bba58eed3cd7b211a4f2d1789d4d2709
Date: Sun, 11 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768158833
