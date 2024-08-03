Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F6B1ABEB7
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722646554; cv=none; b=u6I96rXD5dZIoIMnkObxz6mc97GhYED0TbOzOP0XK9WnOF/jxRcUeXfdfDfd+QJPFdBUJyA+OdzCKMdXOLYJF7NYBFXUnBMgr68pWeUzzlhujF08XcyLNeylGta9lQkepomrLXi2VQw81UTyItC8hW/26QFou9INg+Ir1Injen0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722646554; c=relaxed/simple;
	bh=nR8fVt14Q5spHBb2DnQgVNSIOOv2H2UWs7ToOk5TT9o=;
	h=To:Subject:From:Message-Id:Date; b=SkF+/iLaMAMT/vyAm/miLUwu978xGwQEYpb4WWYjP3d4BaArCrR5MnFmHN8wQugfsZgEuS2RprTWDoe5Ob8eKLrTfhFpIvn0PvhMSnqSi089kOdgjlJ4l2+C2ppvXTsyXUykMOEtAlJDpWpKtpewkKnSHqUD7VSKVOt9GkMFKls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1FxO26B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1FxO26B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB92DC32782
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722646553;
	bh=nR8fVt14Q5spHBb2DnQgVNSIOOv2H2UWs7ToOk5TT9o=;
	h=To:Subject:From:Date:From;
	b=V1FxO26BPlZFaOa6vxWJ2J3mwmRFyVRySjzpE065idSVJKFgJJpCh2h9Db6o03qoo
	 W2bFGQ1FRhngd6nEtSw0mYC3n9CfBJajQXvXDIyD3sq9ojxdjwrAjd4T7FPjVDonV4
	 85ojwCZFrJ5DQx2CSsbNoX/AKc5jyj+rpRAOn3hilT8IOtlrWKxTQ7q6k4JTIJAkxs
	 nTqs3tshD5SiND2ryxSY2dITxORWxI30metc+DJiPtdUfbJZBRnVuDs0GiDTRMPAu9
	 FpFYvfBzeWaAKbSKXgGc1vEx1jslU/l770CqCHrd75W2fENkwJEDWAxqymALUQDXRH
	 9OKQjLYILdNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF0C3DA7F
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264655361.22038.17185933976581915060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69aa2890c1c02984672345ebea3b006b8169a4f4745670498a041866e2ebb1c8
Date: Sat, 03 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722646553
