Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BBC1836D9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721035463; cv=none; b=utfpFoSRC5GXDKnfNNUHxXoGWvHJ0MzzjGfvXTxiCK/+R5UEJZ30pyTQmN2HmfldinH/inSw4BXZqt1IaspCvl1Chfq1hbIeXSDBMadLcWRhqlX7bhEy+KNSFq15mf550irkfW9G/RY6NvHcxf5pbWrz4vmX1IV36nHS9nKRMU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721035463; c=relaxed/simple;
	bh=vSgOAP+HE8RDQdy2TPFw3hCr2vcRh9GA9znWPJRsVEA=;
	h=To:Subject:From:Message-Id:Date; b=YHaQc4k+UdQlRpejZd3LP4XHDqugkAzTrLlumtgv4zrwZX/Mq9IDLTIQE5SPyp6FA2bOt1t15LjQECnuvyfB40cdqfrbuu0LHj/pwxroO0AY8xxJnxZnRq3gLNZqQthmAuiyQAWQsz18sfd82CuIcwJmOiSCbf1Asolk4gyy4tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePgv2P+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePgv2P+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42A4C4AF0F
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721035462;
	bh=vSgOAP+HE8RDQdy2TPFw3hCr2vcRh9GA9znWPJRsVEA=;
	h=To:Subject:From:Date:From;
	b=ePgv2P+RSC7nNQNrYRaZr3ML/5Gr0ouhaYJLwflQobytTMboTdtFCPpEKGlvZDJUx
	 2VnSF48eIhSeZ2IImwCE+IrwITEDKsMpMKNceYwX/9yOOSKOoHw7kXk5OHDDoh+WDm
	 CZiPkr3gfw/M/niQ2wYN2XS74FdBzBPE2C1LVhUJRqjcITe3+OrgZfd8NY0YlH9Bl7
	 Ypoi0Jy/86XMN94HSyBakj0u46VBfIs9C4DWJVRagIv/rVldvTQcshbB2ngvLm/0jY
	 7bFq4zL0aNeqMYCoTQlA+DxP+oEQO2+vMELD9YNdsyG6CJQ53OdtHktawhOmLEH2rA
	 q0PeJGJzqNPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EB8C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 09:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172103546280.25168.10455967571003252792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78acb76b2ef416f3081f0edd3c021003665bc579c03e936659b1c9c0888a7c3e
Date: Mon, 15 Jul 2024 09:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721035462
