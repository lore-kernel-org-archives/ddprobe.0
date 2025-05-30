Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2819B2609D6
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748635194; cv=none; b=CHHR4ejWdfJHyD2r1iLPetdXOJPLXagNZYcFc2jluQBoiq5U73ngQAlVITzUEyIMmZO57WW5IRkkHy7bz7QlHgRj6dXBjxXbO449Jod/lv+ocQHZaA3ENoE9H1r+cy4Hc32HWlJSWNLDjeEugOi+cHSwNl+M9eHIHQ0rS0Onhgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748635194; c=relaxed/simple;
	bh=lz2pDOlDwK/Aj+iypq+Npa151hC4bfi/FtHdF2Empb8=;
	h=To:Subject:From:Message-Id:Date; b=lWvEcky8gzJAbmNNlPzlrx/wbHEFwQi1HpFLW1eraiKjLwQvgO1UWaNGnMZLnd69tVbM1N5vn0INLvClmimPDYBLgs5TxwGsbGrW2+rVWxjIDYVbsVU8YUioo1oR8fPjQaOsz5x0ch6tk0cfMw/gPfktOrXS2VcWte/yfTn7UDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBoVWZNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBoVWZNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27B0C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748635193;
	bh=lz2pDOlDwK/Aj+iypq+Npa151hC4bfi/FtHdF2Empb8=;
	h=To:Subject:From:Date:From;
	b=LBoVWZNAqriUe3tCh50KAxP5UgbkCJjT3o9eQy5DN+LhCgnL8L0gPfZynPVh4DYgk
	 91N22M8Iw9QS5sPCrviNBtTH2JjyotUixoAVbYxtIgWN6tY+WybrYB/xvpY0teYgnq
	 5hc1hdBId5Y6q4Nbly/4fXMTCvXgazE7SYhmWSHFZ6l/7j8Li+FSRDpOHp8oo0I+PT
	 W/0f694kOFCWYZKtM1khEBNpN+F/x+IgsRjQoPWcJ649SPgiuonnVYIoaIbE4zvFEF
	 /5G72PrvBh/kUVth/qSGbvfxqbYnsPRvAneV/aWwKL7SHM+RbDgV2IesP8mGikismD
	 YKEzKdRRVvj4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF04C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863519357.3199.8719906738379544194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513758cb5c350ccf84b9b2dd3cee67394dbd0a5d6080eae916b404d0d4287268
Date: Fri, 30 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748635193
