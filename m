Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E712AE68
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747087794; cv=none; b=JiSNc2bTAgC7qRd6M75gTJnNejYGuAIw25WAnKvxGG9N8Oj88vpdVGtVGDYnaUnQvgDc8Wh8zA62z+xGSf4wNdEpp0Rf6qAhexSaYNNr5I/4uEDN//DCijJajCOz9fFLVi6Waum7SgY2tpgP6Az9dzkxtA/2y0Bhl6RkTFytoMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747087794; c=relaxed/simple;
	bh=JI/8gWXAbulqko+S/6P0deljaPjnGN1yfQ130bG//vU=;
	h=To:Subject:From:Message-Id:Date; b=c1ZgsDbWGSiixbGLCgFUwJOawSN2s+b3elzKnsgIX398NKJkdu3OZi3xTYgf31AHx1W6H/rK6eIsFg8rtF/GNRb7WBUMLEyR4Uu0V0KckQ7tIvQwSShQPa2M5xkUOgXBZQpw5Z684K46BuQUexAodrHUcl4wahcZfBtkmSVjSPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qqll6qFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qqll6qFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6442C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747087793;
	bh=JI/8gWXAbulqko+S/6P0deljaPjnGN1yfQ130bG//vU=;
	h=To:Subject:From:Date:From;
	b=Qqll6qFGHcjnRBFq5L18vtDJoCcxz+cv07c/U3leiJ3ey3VtLFdgEst6i2XMpIwJq
	 n20bjl431Fnoi8vZNxA9RnJv2O1JdJaCqkMNVZS5ngoaqvdh2QK1IKXoprzce1I6Kc
	 DAfLrZQYmrfVQsfyUl8zozQFngTi9Sn75KH8JRWzBPnZzvMHeD1IkXFYuCFxFOHTCt
	 Tgkq6xNVpmK2qwv399fExdaFZkSml1fXJlYXpciaHWDOasZ5QKrd6Z1zA2VXEPD+5X
	 YTC0EzhBr7J9cELy7esvYfTzbmmyZrzFHOmS8CxBm8CqPFzWKgNhlufqRFt3tgxsG2
	 lt59njIHK1ygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE1C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708779358.5052.2993931186801679218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea6cc0204698a072587669b43123dd50b112f78a06decf4fe87bdd1f6eb2d39
Date: Mon, 12 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747087793
