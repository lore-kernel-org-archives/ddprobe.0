Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF2A3BB40
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768163634; cv=none; b=G13U7cgdlg7Eoza3cF1Z+Wdlb0nCO/1fBJJP3BiM/qnNC55jRmUMxeDZoChlKp6Paokyfk3nQFDZYdGNRnOWXFJ53CSINA9VIqXPf/++m1c6FjKz1L053NT/eWyQf7RzEKjVh5sTvWcf3rSDS68S56RDd8TzNGNuwRl90T2BUhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768163634; c=relaxed/simple;
	bh=4MLndeP/tnPi8y9lq17pv1t4l0YZRIplTsvO4pDAE+U=;
	h=To:Subject:From:Message-Id:Date; b=taxn0SUCshX8i9MHhaD1k65MLRjuGCLbzI0q25WdQ1JVPcjb1TogFyFYHnLD8Bt+YzdEFB+SyRJxey0QPH6KmvletaM1R4eUPB0PSoKYXxYrEA6XMCBkZM7TG0xvPO2V+Sz9BLdfg4GpKDQRE1KsNwhbWtgKZTMkjfpsCoyg0hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRI9YUt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRI9YUt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0E2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768163633;
	bh=4MLndeP/tnPi8y9lq17pv1t4l0YZRIplTsvO4pDAE+U=;
	h=To:Subject:From:Date:From;
	b=dRI9YUt4jyaOYidPUKrRzmKNszecwJqLBNsxYJabSkJ9BcHQFlINcRbXDcbPAjnd2
	 0VLzw7P8yaoztVcyHZ0oqg2R4BlUljG9m9T8flNNqzrtOOku2ET4VN6Zq7AnI2mClh
	 b+7svb0/zrymRwmJqYvIGUYVSp/V70NzwaFgdyJYHju9nIbwJzUkIwZSfW0rcEz+hn
	 gpi6kHeVJqiwRb3jQcSjvoqYu7mZUZ4mnk/v0CBNPQGLwH64z6Ffj/A+58HFYVVhB1
	 tHe4d+kkM6LI+HupnUkoTDVtEyduA91XFM2p5d21+g5Xb4LoOEAqb0aI7scPXm4Ryf
	 FzPprHWUTDIGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E85D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816363358.27950.2626406790928564831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a17b4df00babc1e75fcda2071a23a47149f301c88aea5b3dd4b256f3a693ba
Date: Sun, 11 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768163633
