Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAC1489890
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786573834; cv=none; b=AN5V6/v3PRhYn9XgH5hf4G9xkpViTutlS6yn2TIjpnWlWhPfRGLZ8HCFOV9ecpLnVXYCfC/keJwJK8Wc6sjELtTi0yhN5f1MRymdQx+CkNmd+g4UPHAI9I8Ucu4UddcfCJYxW0NHbzLF7/nd0TezHkYytLmi8leSLVcLBqidA10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786573834; c=relaxed/simple;
	bh=y6OovodkG8/xMTawpZ80ffPZabBFLyxgojtsDfqnkpI=;
	h=To:Subject:From:Message-Id:Date; b=TFwSGcTMimjtgXBRQUl8EWk4PYvgrrAFlmwy7Uz4GfbVY3buT4upo/AI4jv280amOK/g4mh8npCV8Hj1Zbopgu853J2FfCi1hS5mDXr2zdUJeC8Nx9qjpXu2eYJeF+oqvkg3oYAyNxBYjMsdtqXWTBOMwowt59MFqSxGx22IcPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c92Ma85v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c92Ma85v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BCC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786573833;
	bh=y6OovodkG8/xMTawpZ80ffPZabBFLyxgojtsDfqnkpI=;
	h=To:Subject:From:Date:From;
	b=c92Ma85v2byLEgwaE30NzXSWk4E90uzc94kx4clgm/dQ7ub1AAxDyesW4nd4x9nB/
	 Kre1Hagfsw8/+jgOME68yr7wmcgqfhPbCJEAtBk/bn0kPESCODg1M7RBx9TXLnyz6z
	 xfMXoTrK85/NLV1Wmhaugoh1MsGxEQ0R9L4few0rfEj5fDwkjegu46nk3rf3ptapCW
	 gCP4lGTgIv6CIojlTntqywavQw8f0DKSk1bVZe6rA+FZhAXsoErjcDuRIdz6GyGQiA
	 ba1Upd/61iosqiBr2v7PREUyRbznRRY+hJeAnz3PAeT1vDPs3SAJekQSoXdfy/gtSn
	 s82/XrVHDggbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC8C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657383368.8263.10531757992897516591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cc3e7202c57ebc5245948bcc8b1f141122083dffc1a7341676864f06047964c
Date: Wed, 12 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786573833
