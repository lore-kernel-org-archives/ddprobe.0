Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350D1277819
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765572174; cv=none; b=qR/jy5j7HkZH2Q86EpQX2mgWng14B6yNB5H1OA9v12BDvGSHtqCTnKeDu3l6qf//H8FS5AY2lFG4L4QwSOl1KQq/q2GAy400AA2RTp+160LbC918lURqkRGE+rGed4vLwsOXXJImAWhBpYVDh7ffYjGablAKCY5HLVoO4cPn824=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765572174; c=relaxed/simple;
	bh=euzx79+FXELZbmDLOjBUqKEDNbS02PB7G3rdX8FAlRY=;
	h=To:Subject:From:Message-Id:Date; b=i7ur4Tj7K0c8zZgKJDmFq6ZK0+d2wKrL1odLrBonFgkxBK9RMvcrgvZfi89QSBhi31z74rtW4+cbuwZ9rchK2bu+itjyJFC8aVUtp7Xk3Iuqa/0nelkkf0/y6k3j++BvbDGP9t7KTt8SWkQVRTy/JBIbSwVSa/pts0oNsSSXK74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK7VJES0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK7VJES0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFB1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765572173;
	bh=euzx79+FXELZbmDLOjBUqKEDNbS02PB7G3rdX8FAlRY=;
	h=To:Subject:From:Date:From;
	b=sK7VJES0Dxgc2QMBk5/ZSUswwiKsbuozYkbQLPKsi6sEUTZUY5YKdwK6pSw0Cu4mI
	 dguYArlrMYCdqfJegLsMGvhxI2kLgUZDl66gpgL56nNd93xdlichYTwwnXfAGHarab
	 /n3e5TR2x9R2a8joPeTLh6zusgDVGoQQJS+QLSnY9z7CuoupHCtNfSmghjQHawsHh3
	 LCxn0wBn/vbhz55PhWNBrxTGb6s8/c98CIjc26PUS0qnTIun92zul0GZbdX8EMM5rg
	 Gsv2QCQ1KePlUGd6x34TiaXchg3Zai/TOaq8b1VRNOYHNtiGsLErnA94IkCV/G/c8M
	 XHezOKdNp7s7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95755D59D94
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557217359.7534.12721758771233818663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8dff673f4b8126b560de0f5963c49a87f3992c09e9cda72c7fadbb3b69b1a7
Date: Fri, 12 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765572173
