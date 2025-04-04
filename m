Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295BF1A238C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743773994; cv=none; b=YgExf3qFd5FWSbCmeEb70OF7j/J8dKfgEp3NYTwgM34gmLP4ck/nSPEFdbw6nfOLofV2/OY9v5ePu7qbdCL1LE/S44xo8wvttMKxVu8v1O0W11lJIZxV73hdy+1zX6STcQfyWNDveTdrSYLdUZRGu6DraVeVajs4hRifNHaObgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743773994; c=relaxed/simple;
	bh=YEQeMZ9fTw5XXoG1+V6VjPqRQdqK65CQPLj10JwsqdA=;
	h=To:Subject:From:Message-Id:Date; b=uPtodCLPFEl50GKeT/Qy4vSnJ45XrVDH6qB9Qk6EV8jMisxml89LG5B60rHnTERv4EaPyDlavFgYaeTGdl43e1hlKjHNFjHxzoBbtxt21bJ0Ze/o58DHlanGkCd6tM4iBpYCJS5+I+Nw1CmrjrnRAJf5lVOQSw6jSpC5VUj6eVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exDL/z3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exDL/z3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2FFC4CEE8
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743773993;
	bh=YEQeMZ9fTw5XXoG1+V6VjPqRQdqK65CQPLj10JwsqdA=;
	h=To:Subject:From:Date:From;
	b=exDL/z3L7vh/hVK2VmyNtJbV/ZgkK7JRsrHvKDfyPh2vrZ1JxFWO2f4s42unLMyUe
	 HBaShpVCfPkD85Vqq43IVVt9UYftT1tjsl2nmI5lQyLKWgltT0P2565DtdH1MJPRjN
	 15UdebH7XZPr3PcJUt4wOanONgXstICLeX5bt51E5OPU9rR3U0J5O9hZnzosRwZqbl
	 bDtOKonubiu6ebIik/xNThOJUmQWzDtgKLRZ4416QUwJtnZpoJQBsyjUTj9YaS4Z9R
	 T+vv5/iVgqug8t4ql9cxjrMiTUIUpv+ZimpTN5sGBjmJpcF0n1MxwM4zVKAzEUTADI
	 j+/JRpj5/GmoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F770C36014
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377399357.30931.18287308926903079763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1c4ed5fcd54ed3d11a9c9939d6f196161c2813f8dd70f68a7fdfe5f49f9903
Date: Fri, 04 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743773993
