Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292CA42A9D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771214694; cv=none; b=aMbu4XL42kigooyjLPWAY2s+MW/rh+sNevRJN7ynrCs+JXz7KcQepWI1Jqar5hLJnJeS5dVItZIOQQtMW+nidhtJjfr0UA/QcQkleSEomBv+KW2mg4xnK/c9kplpxxRsCF2IfQJLBtBTYDN2MWgS4eHFwCXNiSqk1vPyfUEwTII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771214694; c=relaxed/simple;
	bh=jNFv35Rj60n5pbphW+gUUmtj0fKvdMktoqBaUNibgBc=;
	h=To:Subject:From:Message-Id:Date; b=KrNJnEDvEN56rEPN+t1YOum6c77jxAD9ZvRdQHQ+Blvu2ktVvdUP2ZFyDVNLXHCuRdYld+VGEwUeoywunX8jD/IGpacXs38Cm8wFDVtZuifU1Np5ZB6xSgiCNrt1ut4XlIaoR1K3QmoJ533aoDIHlwatibyoLAiBHLcBRihVPsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbXU3IUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbXU3IUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59B6C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771214693;
	bh=jNFv35Rj60n5pbphW+gUUmtj0fKvdMktoqBaUNibgBc=;
	h=To:Subject:From:Date:From;
	b=YbXU3IUVF/3z3MBTRBJ1phig7HWSv8Q6Qzj4YyLMzeOHTjsedwtW1aqIYLND7r6qz
	 YKVhXbzEr99ZG94EW8vzAS8cBj4C2qHLcbIOBN76ygeLle/59aki8eoVMnxpzTkyp8
	 ZEmHAg/hUJEvxqxDFQLS7TnttbmaCv29eiCKf19DzAMBdGEM+T3OTY9deF6hTdGJ67
	 d0j+XvgQtWldq9FEDGC5Wh0+BBvjysIykRQUfuZwriBd6JzvDz+z5gl70ouhdy4the
	 cgIZu04E8JGujwbBRbSo8OmdrQpXojmqxxleAF+OLYJe6GMfZYXb20ETXVvdXvpLTE
	 aDPNx40Bcftww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C54E63F2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177121469359.439.7739560491162421646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d39ff11c1d440913d0c967658f8aaf5e5cfd067a7d2eaa4e554ab04842d4e1c
Date: Mon, 16 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771214693
