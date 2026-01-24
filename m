Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D96D1A9F88
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769288034; cv=none; b=jc3zPHgfiuZU2f9iQdUlQYwvJKmiuOljMN/sMLDVLvxJx2PfRTR95EBmdXPG8jwtCoAR0MVKt6deswFSyREAc5Rly9pfGr18yITvKCpjRhl5wHu7Uxnu2Vfr4tNtE0M3y2NXsW1JZAjgaL4AWmpMtY4KNXCNwn+vnjiAhtoMHbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769288034; c=relaxed/simple;
	bh=dUdH3E2LyKk5ODcvI8sSBeBzasTwAzcZT2ybwbYEQ30=;
	h=To:Subject:From:Message-Id:Date; b=qkbIT17Ejmt6HjTlm4hpf3wh1U8ceXJmqKeT9lC8+dpDjG50FE/H/LsiGC5qOJap93+bMib326GqYLvJJrWTKJh8kQqvH+ElVQTqbRfmLevCdH+E1a8iX0ru9n4P0jY8bx4TiJ1ca8zVQeU+XD81jMezW5+S8qPm0ypZj5J0I58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtlivvmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtlivvmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CEC19421
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769288033;
	bh=dUdH3E2LyKk5ODcvI8sSBeBzasTwAzcZT2ybwbYEQ30=;
	h=To:Subject:From:Date:From;
	b=jtlivvmR1yKzUdcKhPoViabFqKMaGxPOu07xqllIdszIzSfy8Mp909Ai6aPw2N4zC
	 gONu64HAiQeHm/+TNRxHVr7kQQBmOfl8YDrqlePVRc5fBp5h/efXU5Z+YBUMw1V6gx
	 bcErytnuy/3sxIw3Pr40/Pt/F0mPLaBIcUvPhKoCozmiqGDMqqGLpgW25O4GT6WdBp
	 eeL8xOYpWekUhxlRUbsqYn93AVBiPsf4l76MMXoFN/tbLvt/up5kilrg3mrilh/j/R
	 XTX1GRLolS0mnHHYmO1Rx6H7Ea9/TcIzy4tNko4oFqxHD7B/VYnd/oP1wjWUBD8Ucw
	 hM8ei0TY8Ke4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC4D715FB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928803358.18721.3316939696617636314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ee228b2e98d6c1c5c8be01a7271cc2561d34e1cbe6fa2c0f0300422d2b531e
Date: Sat, 24 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769288033
