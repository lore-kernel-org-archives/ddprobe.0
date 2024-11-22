Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117801DF255
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732299954; cv=none; b=m1AZkbArDXunXkplP7ZdGvx4mtvhPNG9hle+nCzlyDtX23idQMEiIb0sbBC4ShqM5ibAHW88u6JMrkwNHk1zp771+xgog+qtuUydTlZ+ocaZZTVo5Y+jXkA8p6N992WtlzhBZsIFRB6ZkPIr27g94JFlmcy2oECcAloVdnMFSlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732299954; c=relaxed/simple;
	bh=wOicq0/qU/cIt3vXdTLYGPicJuiRTMmWMc5oA1OvNww=;
	h=To:Subject:From:Message-Id:Date; b=AuJIbJddZAaVrWdw3h1XVvlLaCIPVsA/e3jWbsIKKuV1t8M9l/qnrOoQmohKoVcbn9bCTPYfNTMjcLvZ8B9JhWjLOTyZALllpb2M5M3qOMtsSygZ9kPltLqtkiszZ3dpNhU75iseSaK4Bef3F/uzI7sEBNijb0sUDaNM4G8N5ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1z4PxXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1z4PxXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721DC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732299953;
	bh=wOicq0/qU/cIt3vXdTLYGPicJuiRTMmWMc5oA1OvNww=;
	h=To:Subject:From:Date:From;
	b=g1z4PxXS33/nxtCAqIufqxrnbWhbWeVoed4rFO00/xkNzvw09oMwt0opoWJ+o9ElF
	 gHFGAnsvx8KGBuqs0c5nXQj7N34WQ6ppnn93RNNh+lFQ48OMKk+XhzRZUu8HHTI6b2
	 VXw4D0VveQWqSIKul+e1RQ13fm/g/nTozLhonfnm/QWeqrT8GG2stZwlXNhxXoH9S2
	 AF4VW1r5iJDh9YdiAK2cZXi/tpZU+XzMTJFeY7jWiPPnC7SUn+6X5rR2KwyUs/a6kr
	 RKaGYn1xrpmicQuoOUqxxTBk1/Hs1dByb9fpBYfOh95EIwNMmo2ZYxe39QH5okKTBd
	 mtim/4NIvr2sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BDE69186
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229995359.27464.16574198878995766070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32268f3bddace2c8762e028cbf55a17a930b0df5aa246c7898a684540c868b6e
Date: Fri, 22 Nov 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732299953
