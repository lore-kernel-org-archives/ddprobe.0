Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DD0101E6
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747549193; cv=none; b=KhshWvdRPBg3k9DSkrxDDpAma5o7AFhSqD5u2DOWOwmdqfEP6IIAPUz9j6PZbzb/oNm1XvFk/oyCsKvde/HlTr50IZz49oxWSH6FrCboajxZ77KPtQGPubRe6ezWqOf0g//8afkeuVZ8ccOg79YCwm3RXi/YqEeOz+8how9rlWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747549193; c=relaxed/simple;
	bh=U7Klz8I9Y5qnasEQgs/EDmAtC/l9sWHjTqDOsbn9b00=;
	h=To:Subject:From:Message-Id:Date; b=O01yH9v3A1JfXGlZF6eYw5dvtulPPTanKB35GeSsWTwrRALsIMK3qex8DSImJtot/nmlKs2CIdNPiJAsy62Rly+VIuynGTXP+A9mFT3j1VsUDn82cU2JiVoAAGZ9OXuU6WYlg14vB77GB/MI4pm0fJDuReaXi6sN0JMthvhQi4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9Wcl9Di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9Wcl9Di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14D5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747549193;
	bh=U7Klz8I9Y5qnasEQgs/EDmAtC/l9sWHjTqDOsbn9b00=;
	h=To:Subject:From:Date:From;
	b=c9Wcl9DiHExik4Czy7kfVZfq2o4nbPnw9n8Ty141ww59rEK2JF0JLCjrnne8tiHEM
	 G1W+Wg2JBulP9/lkH4KzHKwDceAwGwxEldmh7itn2Sf99E73HLeiW12xkhDAE9KTwL
	 rQUdmfAzMQzjtSP3qsv5OviXY380Rr20OSiGiBSKYp3+zPvcvTe1YxI8j7xrmntPRW
	 +Jai5n9QdSeqcArL1j0d2Jn7hhf5X1nT4ClnRMI5QllSD0W+EU01H1R3if82jmDgiq
	 Mm8zi6REaxaDiGT8wuVwwZ/042igB+tor8mobvcbz7UP+LyfKALV6F0hgfwRhGp/ab
	 6ypoZXWAZTRBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCBC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754919357.27916.4888872670626677499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbd05a7a5dfff85900b7140885949f1f43b42d3a4976146424777ece59ff10f
Date: Sun, 18 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747549193
