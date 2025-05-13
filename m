Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280F5213224
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747165795; cv=none; b=CsaOlE5YF0/KGpi3zvWWg/acA1agwzX6xpeyz+jcZspfwA9opU50OObqvX6wOiM/uljmbQM6/kbtWuk0Rs6YHUgRJ6v0k6uC6n9y/TOhCSyqbwcI1lEP0w7ioJlx5qEMk4Ot5dF7uQzpHInUwESySE2l8jqdS9VOAFLw5ulB1IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747165795; c=relaxed/simple;
	bh=rVnJVgB4ZYF48R1BOjWTu/Pi72j3vxDov5+NCQtFGrc=;
	h=To:Subject:From:Message-Id:Date; b=mMz/pPrWxncYTjm9lsQLCZca8PBe91MFJrwJc+btcEyCUUZBLychO1jpujdFkq0XxwTCPNK2plTbzalrDnbu/lVE8fJ1bDzAt+4nnSlCjORQPqi9LaOAAi3PafrlH4F5p02SjfCR3B6WROHmvYKRhHsXGSOjBsC3YlFeoMd9kDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs26YtXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs26YtXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C5C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747165793;
	bh=rVnJVgB4ZYF48R1BOjWTu/Pi72j3vxDov5+NCQtFGrc=;
	h=To:Subject:From:Date:From;
	b=Rs26YtXbMI7TEasBVqkOpa4ktZbad+BgupMIRb7RbApod8nd/7irUGa+7f2SP/et7
	 gTkjTsxJJLZNeeBr23KNhiq1TaJuNgBtMBAXkV9HsRsk+UpmRJloSdNnmUxttIuIbI
	 pXSVagmBk5hwXEGdeu4VSXEmRaEvc6HNY3OFGvS4xrc60PqV49LkNmMA8+fEgwlKb4
	 tj+HFHEq8tFuWf3YM25OKeG2fo+gMomH2E8YLGuk0Z3ULBB/+gYOruJxPP5g1Ni4dE
	 Iq2Mq5i2mZkKnejdANwhzMRPBgEncZbfrnO6YzAtEbXPeA6U/SMZwt31RPYyDs9g7R
	 LLxjgFX+gbtFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E856C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174716579357.13553.7119633938619127058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643ab2df3a7ac9b23493f48ab1e887976d502880de39b6e127d384d440e1244a
Date: Tue, 13 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747165793
