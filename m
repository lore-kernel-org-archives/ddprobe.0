Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E8028DC1
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719746663; cv=none; b=nhpiYnMYJoKkc1ef8hu1YdEYRmA3lRd7XGhiBajUpw3v3jXXYllQ1TGUk224SWkMRbUbLnqFzl3Ud9iAfDgXC2gHDokZle/geFxPPKia5Eo+/OHGU8osdXQ4XNbRdbXHm7K+NLBs1aBxDg76rQ2ztsIew0afVcU86HE3KANdQng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719746663; c=relaxed/simple;
	bh=d1gpGlVFELD4+qmgzcjwdsvE3Z/dnzCjVYrE76gw5gI=;
	h=To:Subject:From:Message-Id:Date; b=q1MXD8DlDdh/kSyw4xIdAHWYShYE1fFxlBbtT3DaNgB97MPVqjmB8kbRkrkJXNmwhQ+TqA7zfKNgOqqeRYMMxYWiGNT2MMAS9BEOjdhrZiJQYegLYvkZeY33Pl/hf7Tgx5xIWjbKw4VadHo0oFQ4XHujvnoeCmJySqdhAwi5/Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAoJVSoj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAoJVSoj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A7FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719746662;
	bh=d1gpGlVFELD4+qmgzcjwdsvE3Z/dnzCjVYrE76gw5gI=;
	h=To:Subject:From:Date:From;
	b=iAoJVSojiLU08JNrtAm18Pw7s1vCSPpZadYyB628xCLNkJTfFVAPM57bLcpOxWXjj
	 nciBpboOBBKE5LqwqIRDOpk+fbgR2YsENPpniXWLmBB4u8Y/KDeRKKVdi8r1rNtY+g
	 5/w4RqSudUvjL423Evgh9ku1+xtDCnGN0uLIZ2SLODRqtsivYQgL07BImWZjuZHgsD
	 t7kxWe/vlTpgJxA83UFDXkO//O+Ls1dRNZ6kCfamV66GBzFpGce21lMJ6njbMipjpw
	 Uog+gYAVwI9axCE27BvcoaI5HQQN3e5UAZpz1MjI0zNQciRayIDFgepKnNDgxnMHCQ
	 u6sleiH4S9sjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F17C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974666282.15726.3368721108114320512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fc93ef2522ec442a1162af95cbbc55ad158d755e50bfce947ad93d1f8f012f
Date: Sun, 30 Jun 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719746662
