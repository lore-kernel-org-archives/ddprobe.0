Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447EE233723
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783220314; cv=none; b=i930JbNQuxN9KLqAljldNiDrMo52S4M6AQhOzCtMdoVM2h4R3TgEf9uXzM/8vQUAh5RWGdXAdJukhO+/aX2Hxywx76/HolqUaa7v+wwBiqHs35xOg78aQ7JuFH4+5TDvYTdVkAKKAtEoHSVCnL12S3ssjiNaMmP8RIg8e1rfin0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783220314; c=relaxed/simple;
	bh=Op/BaEKjaFTnBpYHBkLdRR2YiDalXyqRyzga9GC53Cc=;
	h=To:Subject:From:Message-Id:Date; b=BxMDlpsXmBFctClxlnfBKw+C9h5IrrUxPiH63A7u6n8MWzvINbdinPM2/cG5LR4BHDaT6Crvod2hOoBZhs3AieZzlIFxOweCOWo1gVqMS7Q5bBkbbxwvSuruZ99A7JJFL2+qzz+Czz5vBk/sZlReD6zKP/PP2shhwoqQuF6J9lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fQmwWBzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fQmwWBzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D3C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783220313;
	bh=Op/BaEKjaFTnBpYHBkLdRR2YiDalXyqRyzga9GC53Cc=;
	h=To:Subject:From:Date:From;
	b=fQmwWBzocNLZllIEaRejhukMS9HYfdCZiiKMQRskthJUKFcCkA4aoiwlck9ws17kl
	 BM5mUIvJMuyX3uYhW4kkAzEsblnrqDJnVbr+gXDIEknpbJea/pXdpr6MqtemvCDF0h
	 tzwtdly0c/T50uof2nqej4p/sicKzfJBqqvSg1YOg/m6HhfZ/R5NYG5uvFh7DaF7fF
	 0stN0bcCu98h28EUJwGJszkvnZY4VcvSTzJ/4jd2lQVEHQuFW2FgfOe7qotlJPJ/a9
	 Zas86AdsGLBTveirRK5kkeitoKwux6LJEPryoJocrvTmlM0vsTFSvYmyiK76w2KP8A
	 YqF+nrVnORj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBD6C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322031368.6341.938614982392342898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98841dfe1612dab5b5d1490a2cb5f770fe264ee212c6838ae0be2afc8eb146ef
Date: Sun, 05 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783220313
