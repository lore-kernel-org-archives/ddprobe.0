Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3971F8BD6
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768770234; cv=none; b=Q6+gbdcohjRB9YrxcswRxtjdJY1Bg/M2utbScxI62tyDEra2vc/un/EPFR11hO+fODAjL8c6qXdJzXpHnXVq9jIlGcfspYhuk2p/VAMetHdc0bGFzQ53V66/fcAc7oZKN/c5Cy1p9hSyVeoLhnnXuIehDc0FSfgrJskDzn/pRt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768770234; c=relaxed/simple;
	bh=u+eM7sOyobJ9KNR52ZYn40K9VzkTKLr5s/NnVGfD8I0=;
	h=To:Subject:From:Message-Id:Date; b=fLYj2Xg5376eoJEgQMs3JFsFvZeImspExyeg4ENVwLl9lsZpmWW7kLOHFjOekiEbwvIPEf8BklLH4xYsKy64NKsv/WkakSsmQezT5jtBeTE845S56tEe4IEvpATRKfP/yJiio4KWah1IGGOvmQpL0pPaTzwO/azXTEzq6RSgfpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6nw5LyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6nw5LyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768770233;
	bh=u+eM7sOyobJ9KNR52ZYn40K9VzkTKLr5s/NnVGfD8I0=;
	h=To:Subject:From:Date:From;
	b=Z6nw5LyRfLs+Qz5HtxpNY0oUffAOiQyp5hBM3VNeI1jFE2Mifxlp7Bd45/PXYayoM
	 7pg+r4Z1ZuHnZa820ctZExLJlNLbY0oXJ9SOkPxnkr2xkT8QobP7dGFtSC48Uc3t9O
	 ODfGGuL9MhGUny/VHjjLrYrnItHGUSDryPrMcJT9XtC2QZFpxmvIO2fB6pmxGr8IHN
	 klaKQXmviVYwl149smjK212cHx94Zo4LLMO+XVSJ2LPO2tDV0ER4u33nxS7OWOOjMi
	 85GTgIC2KiuVX+23DSZ3iIVhoTvBkVL3BTS4dapvckm1JLZd9fgVP9LX0llvo31zos
	 HWQeMBUsG6uaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC3C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877023358.9627.16761282717484794360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e22b8e116fa2d55b0f577612e52d2f562cdeec58ef509e4fcd4b8444de44666
Date: Sun, 18 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768770233
