Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC4C1C28E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791253234; cv=none; b=KZwIGWQmzwFGZEyE0HGZMLYMKWAIk5WNARqxqQ50nSJgH9XZ2HPBBrfgkhjO7MEpYvEyvvq/mViHk/iZV74IybshYzwmna9U/5+u7O92cO1t6cKnGh6uy4LIvdGrpdt2NeC9VF45wxAO055XBzSMwphr9CNUDiSElLwl1RqAcSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791253234; c=relaxed/simple;
	bh=dUuGqKcCm1yl4eAMbTg4fN3G1C6vzhCvJf4L68bq6Ko=;
	h=To:Subject:From:Message-Id:Date; b=tEsEH1AV/CPnquIDut+zZmazLPG9legk4kxWtLahIDDRASgXccCCU8awmGoUBC5/ddJD6POb5S3AeVbk7QPe8v/KFd1F359/78svULwQpM3H5gUSo9tjfQRkkjEspnD8SxOUmyx73db8dhbkbruuDX4UwYSvum1ehBIrVhiZei0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANsqlX3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANsqlX3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF59DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791253233;
	bh=dUuGqKcCm1yl4eAMbTg4fN3G1C6vzhCvJf4L68bq6Ko=;
	h=To:Subject:From:Date:From;
	b=ANsqlX3hHbyoQqqAhTCKTFLMMaGLfzdEobziIIIgVhrHF0fAcXyQMleJJvcdDXkho
	 UsDSlsEzcdDniCWhsOjtkswLK637472m3Vkb7Ikd9XPpL3XwT/bujq60qlPqUY8jEL
	 bQACWD3A7LfMqXRi+Qi3Vmxa9zRcdMLekx/suUOkeKw5fBsTJFbr4asvcnH7qVZKqC
	 ZTkmjJ2S1nX9r5YsQVKMH6fvL+dhyb0SnXJZpBCGcTCaLFXgyY74gkex4DOLRWoZxb
	 m0Gdtk/XyP1wq9yUTYLnKW1g1H1jlvR8n//SdHzy/h5qHVgSGfmsTujQyouLszDWZE
	 vtLO8/Y+7dASA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADECA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125323368.22932.15162610426746762452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb24ec62a4ed63dd85304222ed4aa2451c6fb5305abc4233470c14a20835e4ff
Date: Tue, 06 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791253233
