Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D19388E66
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776349654; cv=none; b=SG2HLnstwrIwQabepjL8oYFtlBUJaNyhshsSkKdSG7Ooab873L9EhJIqqy6CPaxjEoJ6S03wE0qh1flvq58+I2Nf0QbIq/fLZ0ziOZLVcZmk58ZCvdbygwT5OcN2KovFvSNvFm5gKAq4hDAiQnhXNU+QpTSKEks+McuHA1aPAeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776349654; c=relaxed/simple;
	bh=teiUl27T5RDmDQeOpxUa/NiG5NQzhWWRuQBUgZm4umA=;
	h=To:Subject:From:Message-Id:Date; b=lKyutTstJphAOfbwRjh3r6W7Ab5UyoWWlUR42h25dCX3KGfG0tU6RokvoF6OVP14FRVVBk4BDdlVa0ml39a264oHWCaNLJYQweqpnQfc2Q5qDpalanjqHq35ZuzchrFNYrKE9P5ConST3DTMDgEougxQGK8fxkJHVgcr0fli9uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLAmKY02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLAmKY02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81E7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776349653;
	bh=teiUl27T5RDmDQeOpxUa/NiG5NQzhWWRuQBUgZm4umA=;
	h=To:Subject:From:Date:From;
	b=pLAmKY02F9Eue2xZYkOtrYnOwTlHzNg29GltqUxMps0Zg90sXRmfCMZdwRvew+bWe
	 +F/3nlvLcE5IF5T7PcPCNdCFl+LwdqXinp58S7Ng54Y68NGHAaRJ2p097TdgWzf2by
	 UNJT8N04AtvH+8UkWQEh0uVihHO+o6KcZaFmM4l4dCmhW03ZeuTwYhUVcfiT5qlYPx
	 /uFF0QDE5T+p9Djos5vrjFVu8A2r/jsPnRHE1EXODK0789XoRxqhJbrJGIbkxxCS6e
	 bPmT8hY24Ma4solm+05PWpKjQjfapOavks3ejJybACWem1W8ZFYi1FJCJKFEK1Bkni
	 JbEoVpy7lyTJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC0CF8D74B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634965368.5172.10860031345749003617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166a1699165901cc1e0de9f6a2d81fbbf5e47d9f8193b4bad83231efb01fea46
Date: Thu, 16 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776349653
