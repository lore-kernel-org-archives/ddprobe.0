Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341793D6689
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783585714; cv=none; b=kkovFKsXaOmRPGU/QrQI30VEaDFfOCgqYLeypsENE96Bv2i2Xyy0yQ1vEEFM7JBwDiI5BzQFIdmXfiRVujZWtkhDD4cliBhN29EoVG1FWsTApRe405gX8X+KRSh2JKmilKio5SLou13QCQPpj7zB/OPKWC0JV1i3EHOoBhtl/nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783585714; c=relaxed/simple;
	bh=tSgdmAElrMrln6SqImwbdB6AqPZn0IVtUpz/TY2J+A0=;
	h=To:Subject:From:Message-Id:Date; b=mde9BaVuuCrnxPMDHIHT7wjQRjAabkPH7pAX2cBoBqpUhWU67w3vJq/wuajbvGjoW+RhePRk9GIoi/k6GJ7a9YeK0+3frMyzqjjkiwVSHOqwjLjBWC7w4lkXr/JGLM3JKt1ZKUOo51pCjNXdvJ4l8XQq3FgnKq2L0JSaB/Ychi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLgzXTJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLgzXTJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC78C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783585713;
	bh=tSgdmAElrMrln6SqImwbdB6AqPZn0IVtUpz/TY2J+A0=;
	h=To:Subject:From:Date:From;
	b=aLgzXTJbgKLXBqRiBkBgbOhPvMwBpFeFqdbXV9M8WSCIbAEGavHjlEhJIN74NfHxi
	 xnl4ckqbs9VmelHFGYjBvFzdrAOw7mwU7gV1Tbm892nepwiCsbefv7Kh+VI5pE5sSb
	 GDOj7NBHfx/Nc+aS5dBvZRob8PIKrYwetqY1acE1wQFCuTNEgw1xLhHIvNL4OqUej+
	 yQQNlcJZ1wwU47W10U7gaILefeJWf1MlRD6lqOT0U8ZanNE8/eTzOYF2VJe/2YYLTB
	 eVWdV2FdbIxNdq3gpJTLtc0z42GFK+xqNNvgrXDm7qALPlWnoXKBK4XC/ZteBUewLp
	 1o+uBBYcIcwSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80C6C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358571368.26198.9859682760623105125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8832f7cec6425176d473e6c8c8b1ca4087110e8280ede26c6e021b7728eae07e
Date: Thu, 09 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783585713
