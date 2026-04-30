Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3A1A08AF
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777586854; cv=none; b=UG4SfhFFg3qi10x6aw6AdzdZpzzlgXHRSV2NE+IPMB9s74dvSXR36tRo66AUTvYKPekZPbSO/WWQIsK3g9+8Kpo9hpUG6Bip1mt8OB2y62wOF9tGkWX9+my53mE8Ud5q4hHizS44czxtc9/Ldm4QYfrjLlLiwkeZF/23OsRHpIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777586854; c=relaxed/simple;
	bh=Y5d6L4xTs8Dq4wzYgl9n8E41m9ILtjq9hdoPol3e4kA=;
	h=To:Subject:From:Message-Id:Date; b=qzgOt+IrlupyI5dQjQXexLcpNBuelxliP4QDFg6YjPQM89h/EScAOYLlU6CEV14k1Km3vs5Q4NBRJuM2VG7suAA96TO3pxDC8hBAFPzILqFjAncTr53+AMlYUEBWRUjt22EqENjKermY0NEb4r3uTtG8PbTfFI5w+VCBIkObBEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lc6ajWBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lc6ajWBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22F8C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777586853;
	bh=Y5d6L4xTs8Dq4wzYgl9n8E41m9ILtjq9hdoPol3e4kA=;
	h=To:Subject:From:Date:From;
	b=lc6ajWBL6DRayHOMdCVGl/Gk0pEqHtHXK3Kmzdwtb0UA2u3HC4Mpl+0CjF5xpEsU1
	 FGqc5LdZQV9infmm4uQVzQN5pp0f8CoXbyTl1NS85fFYYid9XWiASYG0t7cZ4sj5Yc
	 62N62kZofvqX2kQAleg6Mevy6BKUEfbQpP8+Cf0ehqf+yYIJqfYfk7HtO+wLj6nRbh
	 L4HirrIj5I9x1yP/QRPF7GTJsrS1gOyC7bOLtti3F6dzl3x1/dTo/73w/jFe7EGxKj
	 bJUblPp274HOgh0d0TMpwIv9xkgaM9KvFU8usf8O2b7fYAaZzPHiJNl+3sNr5VCP9t
	 VAjSz4pNGtxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF2BCCFA13
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758685368.7168.13620729201116907151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ae2fd71b6c81621227e4038148738e5848c2500e6a5f150ba371c6036e5551
Date: Thu, 30 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777586853
