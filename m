Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D34380FC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786232434; cv=none; b=tBQIS1wqh3d5usVpq2BKVW4f/Jgki+qt0yMTz/X438F69kB4OdhWAKynuuXloV19+5WV0tzKKR35cBGYSlajxV0nhRnOhbirQ4LqrEtDSqdG25Ch0oh87vkyxkOqZ/UBPLuhh2m+WlSU/5hrR9AqRPGrUZcI6KCyvtvKl+SY9ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786232434; c=relaxed/simple;
	bh=6/pGFCXuxIECwdav1fHTntjunv8A0y0Ak1ozlJB2VeU=;
	h=To:Subject:From:Message-Id:Date; b=dldFHZjAZMgdSe/wQJeAmC252qgAvSETmDPGv+2Kq0tZXlit6XNg4bhAALMnui97/r3tBUUdxXRn2p4/7I48bb5djrS+dJBMoi1NRIpCsUBGKJswZYPE6Um6Wb6Xfv2AZQ4w34z5aHEN1llHBd1dgGlPzZ6J08NoRILYs83xycA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuft7/ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuft7/ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D47C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786232433;
	bh=6/pGFCXuxIECwdav1fHTntjunv8A0y0Ak1ozlJB2VeU=;
	h=To:Subject:From:Date:From;
	b=fuft7/ryqKyMbVOglh5Be5VMFoGdfNBkbOAl4UpcvGKuQJ7uQDsANsz0m0bJeerLI
	 LFNsVXVe2TVci2bLS43YOMgMWx63X2JbS9pH5kgku1jzTGvrwfS2NNmnmfpc4SZvTM
	 acpNNoMORNKXkrRp+s+130WzBWSo6qCFX4q8FjwnHdLoKm//ViI47GhaWHP6M4rsHC
	 Yoh/+9eW8ByjQUCbGL05/6wsJ7eeeq2S14maXSWnxXuvZERG5nzylNwKpkciYW3QM9
	 pzcIvBSRRw89uiIasmYNt34/weGXDHloZu5hRI5ihl2UiQakTv5zRTh4mxSfkPffIV
	 GJoKf5tlGwNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB5CC5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623243369.18552.17102431560544940094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4491fac7f7e227d7cfaaaa36c13876a3459f4b07f27b018664bd632e5fabb909
Date: Sat, 08 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786232433
