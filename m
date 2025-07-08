Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA571754B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751998794; cv=none; b=Gd3lXwHPlDNuUn8g43eoqpS729yhpbVu4V31xC8wUCGrc9+gGK0d221kQQ3FGXxhJcKIWpNBfXScryZwGfxIbnqVXYulQSPQ5y/Ksr2O0WIQRRsE3VfdHKlzE8Apm5/lhXpFk89nqLngxEoIKON8XexApxSxNRmo21IQViioGOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751998794; c=relaxed/simple;
	bh=YA0pMWxdTCYazaTIPbCY2twPDBHODQaXGzdsJHOTiAs=;
	h=To:Subject:From:Message-Id:Date; b=ECB9/ndC4PywcUdxR/lpLR1xLvBHt/MmoJ8MAzERjc9YDx5M7lqq1RANqWgfkM9cb6JvMv9AvLpgoRuV7yUyaGPJ0YmprswrKc+1p1bTb/Dr6G/BiLdm9WzGCeg1vsWgvKV9FM0WFpuDZMfA5Umb66X1sneWkBs5oZ2bHuFW+jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgJCzI7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgJCzI7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2067C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751998793;
	bh=YA0pMWxdTCYazaTIPbCY2twPDBHODQaXGzdsJHOTiAs=;
	h=To:Subject:From:Date:From;
	b=pgJCzI7kncTvCiwNf0eWkiVaror6DAKlsGuBJmCTa/bXPI0iP4ka92jfuBUKc7xcR
	 AH7M/U6zYxHlLsG0ZXnnlbTD8HO1XAGIysb08cKKee4YSzwDjNLsNNPrSwFKc4lVSf
	 JG61e4OAmIDY9VR0OagQ6XExytb3MnrmP/dHjHfU53YOkSkzN7dYZQ729RlXy12NGe
	 cT4YhDAXqs2xEIYPnCz916kScHY6ViEuOD2No9JonrW0EH+LxHveHg+YZzjjWPAExd
	 xBQ3HOcuwaV9QsSuQGQNlCVAy64/PfLooEyuuNhmlsvJvmcwako+mnlxRswpsf6d0v
	 0jc3JlvR/To6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94973C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199879357.8241.9389857694407961697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cc3d0e5791cbe90d0cbd2901c5b8d028ffe8c77299bb65ffed4fb8f3b263fd
Date: Tue, 08 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751998793
