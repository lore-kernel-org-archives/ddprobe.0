Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B1F275848
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779883354; cv=none; b=tN+ZlSb5ZzSgatRRvIA4Vu4qKkKm/ojMmvNXySBh6znVTCnBRoLxPHLEG0JlToH2OKXlZVHLFl41kSemLX52imN6vhB0+wWUBPQXfJZb+fCwQiaPxSXrQXJjfJ9GpdKwTgt0TcbwFOUIJ9fFkZ3X/q2dt2lYF1EdAVdIhPgyNT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779883354; c=relaxed/simple;
	bh=dU+tLrbbns4meAc2Ew7mxaoh5waUNFSaxMX5Ee6Lq00=;
	h=To:Subject:From:Message-Id:Date; b=kXhyAeACBwIv/XqC0D5+TJYI0BnRYfCDit4Ve0yq/hamBUoxs03fSrjwTb4Q7cmXOTSy0A5Ve0r3Aqv2Y+vcKSDnwcKxK0fxu44jxms/n1VmhpCygVxQfk2DAHtjeVrbNVwpxh4fPfAtm4G9twihzZy69t//q/DKL3a5YoTBTg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSulnjpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSulnjpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE45C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779883353;
	bh=dU+tLrbbns4meAc2Ew7mxaoh5waUNFSaxMX5Ee6Lq00=;
	h=To:Subject:From:Date:From;
	b=gSulnjpmMCxiFPOoqJPyc9Sb2fWULhnWMJZyyPJaFYpv36bsTEOG7FVK/1rHjGou1
	 ie2By31TCLgipw+sdopuB8eN8ASpNkdG8+tEWTNyjwwDSSJ7/KXGlxhfJuStxSgiQ5
	 swjGDiBwI21bWJwaIqBn3zqhj8bNxu/uEqRT/Ifpz+k3bfjXdnH3//QiTzU4gmeolJ
	 0Y4OgrBDyjfc6R5ksk4ln0/9r4Y3y+EcyWLWzMYhIlguFwLl6HjVspp53eMvP3e0Sa
	 +v0lutXSE/NEXIPBJgDReb+D5e6rxmMxdAGhv35dxuqjM+12iNJb0KDWO9DanI1Sq1
	 hfVrYd1lbHXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5048CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988335373.21698.14786389797990036029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0d0b5b10b0149cafe0f5ff5655e7c630b6fdf5518c2d8e2181036b6822bfb2
Date: Wed, 27 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779883353
