Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6C92C0267
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759958994; cv=none; b=itU3UOcfay8zEvH9W9vc0R3s8fNAKcF+B9mIqt8OWYBpn+TKixadAvkkAwo1lAScbKdUUE21p381fKVN9kcnqklKDpPdaKNlvBDnvjfgvAydesbQbQLcrJuieYlHw+vLb5ZX4W+tJn9q8n522GwNgRPA+C6fHEhoZc+NKzFZhvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759958994; c=relaxed/simple;
	bh=rD2TCrJCSKD8o/OSyCL9A3kYBMpBiMEtKX699AeDwok=;
	h=To:Subject:From:Message-Id:Date; b=jczlbpS01bab6NB1HSGww/TPxENM22s8oPiaf7OlCWRmOHl7bfqbXoic4B7ooC9t7/jZg9dM80914GdIGoiAJlrwmlLg/lT//cNfEdxy86vRIgo3obiLeVbML4ZrsLV3g/gM9M+gGy+rXFjKXdUu7YaXfbcgUXv/vzl49Y64yaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eptr5xP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eptr5xP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A572FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759958993;
	bh=rD2TCrJCSKD8o/OSyCL9A3kYBMpBiMEtKX699AeDwok=;
	h=To:Subject:From:Date:From;
	b=Eptr5xP5tG7HUrL4w/FBjVrjAcDo5atX2RJgybC58A8MBPATSWhc3/f+wO1wAKyjZ
	 9S3sf9L5OIjxTXJleDlZZKSNo12fe8cCiCsPV0Ti3o4Ma6+N5U9+bnBasN69Y1XNQK
	 xY6/S0ToG3czjB7UkAxcFMTtgZ0AVvIAS6ipMegcCjD2Ll9TUjTHGDr1uYa4gQf6P4
	 kxT/XaGotq9ub5PfzLWdAeROn9e09sET6y/2K4jKkiZGOoViMjGrUycxVtngOGcEpY
	 T9GIIfEL/+uknPYHys7DxP6hEXUUJItxWv3fTs3AKEI1MhQO7phenqTS3SM89r12xB
	 jlJw0S56VgI/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924B1CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995899357.18069.159834136709801180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf96d69e7c55c685a712d363167adcb1876387fb1d70259266e96c1107dc690f
Date: Wed, 08 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759958993
