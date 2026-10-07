Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBC13515FA
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791367234; cv=none; b=DWXVHTC1wLn3sC8OPlLbBcbKIh/VOwvbVFrdRW1CmSUb5gNDh3iwzYiFK6MxgMfeWWwlIbanBejFmsMvE+GTdHIpRPmiza+0zc11cBzyqbdJ8f9pjN1LUxccJRcdpktUhcN57OQeMr30/6dzuQ3mndIipLdxQxR7SEu8Xvz193A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791367234; c=relaxed/simple;
	bh=A+uRQXvAIy7S9fJLbuQvf3SNRplWOt6zh0SUBStDE7Q=;
	h=To:Subject:From:Message-Id:Date; b=MB1AHHRyKrs1bvqdcEr+l0ki2BKdlbQ0iR9g5MOrV2+BdybeJS6OcQWCHYi7Az5f9OmoO7+LvPFtPVKPE4skYhGqW/PIgK6MDE8IB1qr+1ZhYSOpRH6FIIt393r1E8C9g5Qj+hMitwpwX1lXjkIm26DwRBodEINBOIfctXRcxjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3AT36fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3AT36fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F89C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791367233;
	bh=A+uRQXvAIy7S9fJLbuQvf3SNRplWOt6zh0SUBStDE7Q=;
	h=To:Subject:From:Date:From;
	b=c3AT36fjlZWLM4p9RTFOdiG880OUb+SZecQ3PaMWzPnpQn+IjKJcpgyCdoUNkJkAg
	 cn/49otmqdmP/rxKq8DWu86oseas+urLj7p1DfeUtUAX4gmbzujXSEuL/opIyTGRB9
	 pwj1ir2S6kZc/p3SMu/gMnit6Xan6BtmTFD5CmHG134bVosV76SbBt4wXIR0P4QoYc
	 JxEJxZCR7aN6JAZJ9YF6GtexlU+2HRWBIstL8PjoX48PMIxw9plA50OujuKDthmO/s
	 DM39tBJx4K9N1QX0noeCD8zZC5MdcQouD3ZLiaN7Ap82HLVIrIjjTYlarZtXUS/naY
	 G7EqgIogLmjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B3CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136723369.6483.11690603173452227008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee7b11ca06f2346f1db5d970b460f0c37ab37e437270363f136de9d97e94a2d
Date: Wed, 07 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791367233
