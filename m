Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AC919F42F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748847594; cv=none; b=UCQrxHEYgHFyhkqaSSRddkpAgS0wfdDB9ctwZMcEkqjDpdolQ4kdSjXpg9F+Obr/XLe1XgPWbqDcYwFOHMnMp0FpWhN2LnHgnlj1WcLt1h/dXLBcq9udn59FihjOy3pudUmqgoupJsL04079I+q2OOtKE9mW+Xo0RmokAtFtz4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748847594; c=relaxed/simple;
	bh=LY+ELQB/HzPt5DbDYpD0MB+jDFJrXffG5j2Z058V9Rs=;
	h=To:Subject:From:Message-Id:Date; b=HqHQmF3mlHqPct2ICvyDBbcs12T/AiY73a7WHE3R2d3Izt6vLB67LpNS4Dv0/5+qYeCAiwri3ZoXliAKSHtnln1H5Io0UBA+GEkUVmfzexCjDuNncq28H8PCBNybVJ0ggEIzWlcfmZqaP1I4ikNEImb+nNqTxKAvq2Q/Sjig14M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvmhpegR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvmhpegR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEC3C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748847593;
	bh=LY+ELQB/HzPt5DbDYpD0MB+jDFJrXffG5j2Z058V9Rs=;
	h=To:Subject:From:Date:From;
	b=DvmhpegRRbmCrM05VL51ecsWaMzEoUI1Km8V5a81peqY+vv4C2qdwLuEg+bZq5sBu
	 nj3O5ttyowpooJc0TxzQDx2JLtYnZtu9HKbztPc95N0xHSm3JJnl92NPIy8FQcVzMf
	 uSmmNaPYJjOpbkh3HDdUV8L/q51cMWfPn3hhJSlJmKIHco/UVVfXOUvbXysxuWhHOc
	 KtNUO5qbmC4BQB6ILwNRmEvcagyYygHy4b054ueg1Adn+kmtYlvZtx+QjRfEnLk1vh
	 CVeR7x7LLnlkXwM1iZTbKvYOiC5dg6yc+qr62pN5RHR5CDx6A1TbEwcLq57TvUB5Bw
	 hdUke+2bKtgfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C57AC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884759359.10441.5150925219860566858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88359fd8e4e755eb15fef65e56c954e54a01586b5dceb72fc08f72137a2ad3aa
Date: Mon, 02 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748847593
