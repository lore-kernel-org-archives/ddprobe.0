Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3BB22FAF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752502794; cv=none; b=fSpnWULg3836B3/9OL08P4gmHtQngEmwMHXrEbV49v0tIg1MAP4M/ssni90+AB69Ljnq3R2bejrS8m2dCm8URg9xkks1irOgZdE/1TcvWH07YNjjHahD53GGCnXUbauS5ANn6R/13BxO/NHuB0HeaPpVUaIDl3SzN8TxgxXE7vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752502794; c=relaxed/simple;
	bh=acn2+MhE+upqjbnBUCDIAs2IOsdT1m//qE1By9Weigg=;
	h=To:Subject:From:Message-Id:Date; b=qpf7ZGyOTxSwHfyN9fpysZ2auIOPSiURRMOcv7/iCT8yGL4B66zIQiXU25iiuF02Rh1D//k4NUVRcjlOhlsA/kopGu8vuQpZ+GZFDD5dliUANI0gxqtIHmUd9DQGpj93hCCvf799QQhrXiNs/axsf7NSmmCYpeRdu7d3XGpCSb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9q0oE8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9q0oE8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC925C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752502793;
	bh=acn2+MhE+upqjbnBUCDIAs2IOsdT1m//qE1By9Weigg=;
	h=To:Subject:From:Date:From;
	b=r9q0oE8HxRRXxSjqdGV8e4S0mAepXQulAr8jBfmgrW4HGV3qb7FF3u7QfyLcZ1Alc
	 JXsgZWEXh7mmDrnnA6fHwjLnsjPXMm64+SsTs4TN49Yf8YT4ViZNT+jTORcDUmuG4Z
	 v7B2tsKu4aWSJ4g9jF8wJlb6dZTLfWoxtdjih/dLjVNFnmeCudcVEWuHqczBiEIh0E
	 HebLrlQFIrhuAVf6SULV0bRmj4dQSGaDQtwsMmhJW6mDVNpNiRLaXRqqT/UrEMIqti
	 p5VFEyI15DLpRer5tOBbyhTFQYg6J3+lbLPdIjuLU0uSlr9r3y7Bv+zE+azBv3GBSS
	 e6BS2G9Pao5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C217C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250279362.29103.11353489419635055404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fe16d5180bf110224b04ec831ed0f4cc5e9fd2c39e97671f70d6cce67d6ae0
Date: Mon, 14 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752502793
