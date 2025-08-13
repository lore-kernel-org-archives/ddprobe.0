Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24054249E5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755050994; cv=none; b=VHVKEpIRS7lgJ+U9M4E5hHzekaHWLVu0jpDNF/ZnDFdkV1WHvXu7DFepRaLal7tUNGK4vcEkjTjb4LfRXlFYfnpqrU9DSAN5JGFDZyRjaWsge14T3DKyZTjkyHNHOl4H8Uk86E0/2T9TS7MZ1NAChJwww2jybdxn3hz67XGWpY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755050994; c=relaxed/simple;
	bh=VJFrzwzsWrGGKeyf/dEUFrIjREDp1QBvcIDd8XMa/ko=;
	h=To:Subject:From:Message-Id:Date; b=gRWa37iHKTtWN1FJA9C14xYgpFdv7JDi64Kt762lsIcvEnHPKBjruzXIL/8aNS7DXbDrRjFCz/jgtR35kzQZXa+U0QNPogjYQRnpzOmJCdv1P3gOvARDNWF8+G/IPF7+0nHfo4uW+bnde8lI30QZi05ynAEjAYuy4fgDeBhw8eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHUCd1cP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHUCd1cP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B22C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755050993;
	bh=VJFrzwzsWrGGKeyf/dEUFrIjREDp1QBvcIDd8XMa/ko=;
	h=To:Subject:From:Date:From;
	b=sHUCd1cPnFEe4H9AcLV/ttbo6IcuJOQNPDGhjPX7X3P5SS8OL/WgAGLDF5vctIG1W
	 R8oCqA92o/QX7wtg+/+loy8gwir82fticIrLfcghENcrINBNDwBSY0pzzBNTndUcZj
	 gEdth/q3C7y0xN3KuGEstki10RrQ9ZANgYu7vtzczpMi6RqOiS3QRW2PtAwXSAJzE4
	 aRbNC43BvZdYdxG/Re9y+0a8GHopqoPvJouQPrMjwWNHPH8zbH5Hb54zri6P1gPIm/
	 GsR/GGuWZIczH+zQELB0u2Gmxp8lk7p14I841zgHsogkShuS8LM43zokZ3yoHueTfd
	 ZnQyK4IZ7/GxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952A4CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505099357.10150.7226352100073862395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96333bdd300f1bcb951e205d60836c968efd163bd268dfdc758e94c43fc2af3
Date: Wed, 13 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755050993
