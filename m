Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B32358384
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783764514; cv=none; b=mPDwO9ffyxOkti/3cBI+3w3SSClj1ugkH2syc3aWMjpR/Np98XVeKVwR/u8P7h0gfoCUlohE3R3MsNT/n5TYDBW27l/x2Y+8iPlE+fGJwe7ulboK5i586yj/f25kmBWSKlh5Vc9rXz/VBoTsOP9n3TOMvtt8XXEhJ36xR9ih/c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783764514; c=relaxed/simple;
	bh=25vhI6NfIHWw4KPeD+modJq1IIB1FTkV4d2wBR3Pz14=;
	h=To:Subject:From:Message-Id:Date; b=mw4BWao6BaaS8t3O6AnRs4rFg0CanZ+ljFl+f8SiFURktr0bPByA3DaF/ZgEz1tmoAoYQL5zrSTCA7BjDH0Y3Qr617S0KA2HStlIhDHNzNydGsEDYrcVqC0J8olGrXutuL75wWpoWBEoSwhvPA1Lbn5XpmQACWE/OnWJfUoeh8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUuzEGhk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUuzEGhk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10CDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783764513;
	bh=25vhI6NfIHWw4KPeD+modJq1IIB1FTkV4d2wBR3Pz14=;
	h=To:Subject:From:Date:From;
	b=NUuzEGhkUyOu6rpGv7N0hgSf+QYDNrOV27+WdehIJ7jZ250c5Nef4IaYPtJms0Rya
	 wfVB/5/WjR0VljF57GNM4bHP8g4N3twk+5rjCPimCOH+tVLVc0O+GqtxQQTnuCe/CW
	 QPHo5HJzLlGJeyJnw6klBuCIXwSdNDROY2RyOKtmdQEBEMvCYmoFX81fDaxGq8jKl0
	 3i6en1b25k9FPMqdr4GLp9KVK4nX6GRj6tIrJwMGNHzaIb9hdXjDl6grxrei2Vbz8z
	 L08XAS1xtjRWv76MZk+Mi9XneIK3XYmKq12z86NTzTfml/3MkfHvuH8SQ2g4MsEY80
	 4fxqdXTLhil+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB2AC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376451368.32107.17354735303587275073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369be2642b20a54667452a74430aac9ab3eb7801306af6df0e4351804dd91ef0
Date: Sat, 11 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783764513
