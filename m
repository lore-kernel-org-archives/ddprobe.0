Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B8512FB27
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718800163; cv=none; b=JAnUmLVSmX8t+8CJqs/qbstIc3uF+0U26UE0SHxbIPcctLvUQK9yN5pxmunMjwib1wFcBiva+swLrABiyBvry4nz1Rwh1dcm21e1hMI18xUG+hHZQx55hmb7C5/Exk7txKPEeV5Gfpz3gtkQhPhC05EqGgqooOYnl2HtSg/dl9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718800163; c=relaxed/simple;
	bh=BvjeWhjxTr3OMFeCcPiNU2fV4R0bW8TnRzTX/6XIdfQ=;
	h=To:Subject:From:Message-Id:Date; b=guGHjeomseM7WmEMSnv1SN0ClqAsTpKUBaRB/aMH5/eynO7TxDEB3T5NZ15z0p7Kvw5eKK62mOUhVNiAEbv0OwaQD2zUWkMHUA8FCK2xQSKuNU0P/juiIO860wxDjTBEj+iF/vyUfWtd1mK+X5pDJm99bM8ACJrTtz0TN2h559g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLQAgLWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLQAgLWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF628C4AF1D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718800162;
	bh=BvjeWhjxTr3OMFeCcPiNU2fV4R0bW8TnRzTX/6XIdfQ=;
	h=To:Subject:From:Date:From;
	b=tLQAgLWJuanJv+vZmiATS3ma9mwyDf9H7gIhtRJXXM22qjnb2AqElMZHdMe13yW3o
	 zNDUEK2G2LN/SK1g/fc7O2Bv+TwbjsXv1QYvc2xyKqUt8x+zKoT3BeeeOHwV9NKZeL
	 14NxTW7AsmoUSYqjBD8a8NQrs+RYiqr/pVmn2n74v/Dk5x3xv3RdpjCFpvHD7Y8OvO
	 vfXJn+r+MQDDvLd2sgl0TweZ4CQQP2w+vOHw9Y2c/YRRVMt9e5nAcTzbO13Ogvdp2c
	 eemWciuK0vJ+BX47KXLd6Q5mAwe21LRM/0+SjYMjB9PmcZs4eEqIcRvs1Bi3TnRjgn
	 A8I1TqroBZlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF71CC41513
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880016279.14080.4775222183837964858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b869771db8de6b62bdfd68a30282ce459177b51131d22e9983ba6cff07d1f0b1
Date: Wed, 19 Jun 2024 12:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718800162
