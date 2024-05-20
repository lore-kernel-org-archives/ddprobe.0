Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7355A1CA81
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716231743; cv=none; b=fKzaBJydNaw/Jgso3dM79X50lZXNRauSqjxwqYuLqRbUCVolxywH8yk1XpxYaKVU9NTDCMwk33Iwpi2Aoc1YHyxWjn6+V+44st1OLG4vEhlqT9sqSFXjNwlthtduYUzMCvCo+Ok0rre6ArjwfOBx53qqvHRpiHadUxTc+N4v/l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716231743; c=relaxed/simple;
	bh=u9ajDqkRtuT+H4d1ByuPI5/GmBantfUeGFPSS9MUfcw=;
	h=To:Subject:From:Message-Id:Date; b=fBblh7iNWP9B4Mhj9CBPIKk2tDmXTIR0xyhRma3DXwhhNK9ase9XFcMu8Q7D/ApB3Ht1bEzHkTa7XOSFiP1mjIF/SPZPCC5U9bIlRLz6XqViLBuRcjLRknFH+LwLJx8RxDGmJO/JcQr9lN2MiroLkNiqbr0Nwmar2Cm5LHfY6v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmcw2tq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmcw2tq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3E1EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716231743;
	bh=u9ajDqkRtuT+H4d1ByuPI5/GmBantfUeGFPSS9MUfcw=;
	h=To:Subject:From:Date:From;
	b=rmcw2tq4p69tdiKYs5WitOaAxiAdar/0TiNIezMJFDKl+ZHPXlTQcHDndKzKWF95I
	 3Uo51tb2jFobKEH+OzbZNWSMtxThHo5cR0hZaHqmuSJeZaMnSl+9GG/wfi+UT7X883
	 01azPv8bo5Oz7NtsFuarGzjD48iWQQswnmaPRTNQkjbJ1y4NWo27cRY4cWQCpdDomN
	 bhQcWQikvo51AKLRBY3NgoUgmE3lrwNO/qdJv6denDtP+V39Ne7YpdhjQu6ByQ5YRC
	 SSbL0iYFX9nefUj/nCKtM+IVwOZm9qlHIfhSAJLwCoENTjZm/KjKOTFojG6chA8Gel
	 KiyFcmRPGUoww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69CDC04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171623174286.32094.7234938509629432238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a84defc942991466be182bfc40cf69926c7245c20d67193942d3d0b2385002c
Date: Mon, 20 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716231742
