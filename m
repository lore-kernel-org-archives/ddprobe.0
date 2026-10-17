Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611A01A6820
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792233634; cv=none; b=hMWVa7VeDO6mP5AAk9pcXRIaXTuM+be50/1Ja1KrdMxgTRCeS2BfqoyJbV45++CZ8sMChllbZ0twaHsnSJxlfDVg8ngNz4Ux/nWaTr0DrcTasmhwFRLPUOUml1zHkpNGTzHDWLiWsFWzYol7EkN0V3l1hBx6VKKEzsHWlVldH9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792233634; c=relaxed/simple;
	bh=OTWKEJ3XdHAWh+wEs2eOn4JQLXG++MLy+E+G3yiwi0s=;
	h=To:Subject:From:Message-Id:Date; b=AadRflYTqkv06JAFZz9e4B9IOW8UE9lEsPj+W+3nsQ08wkgGpvX7AmHh9MjqKOyJ9m0sWB9DtTxSt9IlexNCTD0d+Lx0eZbL8R++3NgQC+2dmaIIlFVBjML+v1q7Li16+JegQiVUZG3q+cfx06nUyuO5BdPbOZjaQfas1uANL0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGnbMnuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGnbMnuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED592C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792233634;
	bh=OTWKEJ3XdHAWh+wEs2eOn4JQLXG++MLy+E+G3yiwi0s=;
	h=To:Subject:From:Date:From;
	b=lGnbMnuGY/ORezGwAxdCthwjtTmiC12+ogA2MYmxd8xDuz/VKKWq3vKtXD00a3n5K
	 nNfgjBPzqVFyJaxqCw44kRAwk89pET7QlL3U1cc2UblNQQdRjVbdUiEc81ho3i+4JT
	 BLS6i74p9BQNdM7Ss2CkabRa1c8HT44G/DC9TxpUo/fQoj0CB/kAeHu1tFSaSwG3Ot
	 B1NdimTV12Ty2ZPLTKcK74ksB6ISaGgKnHVe2V1aUS0JtWSVGKiDKMUcCxNdS768H8
	 1tqUBgu4uJNl7ARX/NMB0uk/arbfGih0fkhaqo1jRP61DQhtucsmXoL+OMz7oAySg6
	 RLPhHjQHrP88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97F3CCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223363374.3274.11957438314890015344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba7d340f143491155cef65f982480368318ece0616d85d87199814b89eef952d
Date: Sat, 17 Oct 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792233633
