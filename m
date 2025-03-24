Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431E910A3E
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742810395; cv=none; b=Nc1TY0hRtdiG59Z0OGNxRa+/wi2AaIV8bU13XRcj0+mnH0idL6HTLn3YQVOJndPNdZQ6ek/f78exJLq0A1VjPXYJB80WtwGXi7XTZJhCZ01hb2KI36DHG0H/0uop/v4e93CNXDpfA9t5Sf3SIx3dwpYTgz8hHZidrH0E3oWwMfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742810395; c=relaxed/simple;
	bh=zhQ4zrOrZDMPu/oT3+9iXAzwGNIz5XlGQxAoevwd9X0=;
	h=To:Subject:From:Message-Id:Date; b=rWqvCquWoUp1qukOsRlhK1JTZO9H181NlaCULFU6syq6Vvx2QMLjKvhGNeAFCj0fMwcxUCj6XH2IdEJ1pIqSvZXD+hLOv+UtqwBBsV2zhGZH1x/VpzF2QbvosOa+IreGEQJ8e3ECxwX//C1bPnTxGCtk05fuCIlLgakAr5fadoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vI9BwXMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vI9BwXMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF505C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742810393;
	bh=zhQ4zrOrZDMPu/oT3+9iXAzwGNIz5XlGQxAoevwd9X0=;
	h=To:Subject:From:Date:From;
	b=vI9BwXMwU/nyCzY/M2PuSwo9lEYI8jA6SGtK0kBkIlOYRU+723Z5Vswd44FBy4uIG
	 nLaNQgmPrKJDUJ/uf/zSzhiF0IJ2Sb50sgGBSB0dCS87gjv95i6CEGyiULygQuRis9
	 djQmOpPyGN1o7WroRF9jFwkrEesqOIdBk9cS5CV6kS7cFpI6Bkpp6/OtGNxy3BJNXV
	 b9t9du/EyhC8f9KDKrWYO7W/aGRIhk/Re2+7jM2skzt40o41MZBjOWhcBRI+2oJ8/5
	 sWYSD9Ywan+OkX662KQffZFh0lkmlCagG3bAJSJrEsP47hSVEBZVQQBGEkmKoji0rB
	 Ro9wdp7WS1cCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A786C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281039362.30863.993475231078089659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe158b70ef9dfbcdd7ff174b11d51c2d1ff90b7d3c6c7a5602a2c51cf330dbdb
Date: Mon, 24 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742810393
