Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA283F888A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785309634; cv=none; b=aRUosjgEE6vCmPIbJFvLqSlg8Iyzc/Fpas8p8t/AFx2teKxzWbsNarzTqm6zHHAJ4x7KbyIKhwAko6ZeApj1CULpdIUNGXcSo3Pzob96rAoK1nZNRp4T1Q0a9gpaxVUxCqXatBe7dMj/w2PK6C0hiM2aBB3u8RT72Ivhf9Eknzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785309634; c=relaxed/simple;
	bh=eL3e7lSZYNU2bqiIUpM5YW7UftECuEN/PMDly0zbNAY=;
	h=To:Subject:From:Message-Id:Date; b=T5VM6hId+rfrlp5ipCpT9SF+Lhp8D2dbLxN3sEt3sqANbsXp4N/3CRF23Bcy4ImVcZt58cvgdY++eXKtRxfFpC4CMO5uezuDiiXwP+srCM7/Ji88iCpBrSlawSpWp9Sc7ZLJLWgUW+PLQAEKBgEgTkJiZq40RtpjBV2u6LSaLbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0B6vtAL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0B6vtAL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE796C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785309633;
	bh=eL3e7lSZYNU2bqiIUpM5YW7UftECuEN/PMDly0zbNAY=;
	h=To:Subject:From:Date:From;
	b=Q0B6vtALFm8qboFgL1Ma3aEqJ8QhoB0zmMDdZRMRUd06yLeR8cnU/xcqNAKlLr3Zm
	 5/43oZ+cu4Rdo267UikZ+MsUqOrEE5oCCJjoFOypctDU81XOWajYmZMQmDkRWnfI/v
	 kLNkVpDY71pfnQ2AxoyvQ/IZh5jPGxLmfCNngE9t1reNBTDPXF5d3Q05LBu1OPuU3L
	 QDC3EdTto2W1xbR2umb/guLgr/ero8RYea20hZDXpk/XbvF1NDjbUkSxxaRb6uNNR1
	 OtKNzmw84E4lh3OEjmaVHW27Nn/+/WFT3iSbchfYror9MdhmHtPE0L6zX11TI/AXy4
	 z7i0m0AS2UckA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA57C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530963368.27214.14804144008655234988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27b35480fdbcaca860ab2e0b3312f7b92aad2f9e95d1c5f0f1adf999e256d8f
Date: Wed, 29 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785309633
