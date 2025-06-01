Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BAD9478
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748795394; cv=none; b=G3zH702QrACesXDDtgHyQLf3+bRqy2uv9DJCnk14ySUIn5eNdvebZp6CVJ6Z1C+jdoZmRjzu48cie/xlQk2zxH0fMNntT5uwsZBFKT17loztobsDM8xb2+TfNZlFUNKeeU2yaHB0lNOievmKv3CCVmUH9fVrgzaZUVsG5ONO/zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748795394; c=relaxed/simple;
	bh=Rr9Bl6WoU21VwWsplHpeOK0hQwlRFT44wGmJImZrYNw=;
	h=To:Subject:From:Message-Id:Date; b=FMlJi8MNbP8/u7McPQND/O5bF+eBWH6oY5DiRhZDnAzz2afaBFrB5v5/9RjtXdVInjg+Wez316sz9HAn8gmNz4zhvfjB9u35sdIuxyM4wY33hlr+rYg7fzXriPLJZ2X42VXfLPmErK1QLn8CVS4Hz8uk70f3BLj0AgcwDclLjIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b30esrYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b30esrYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A854CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748795393;
	bh=Rr9Bl6WoU21VwWsplHpeOK0hQwlRFT44wGmJImZrYNw=;
	h=To:Subject:From:Date:From;
	b=b30esrYxoWlUfEvoSq0l3tcVfwkY9W6d6eGOqUrtimA4dVLL4Jr5ksa1wVYhW3Qaq
	 yR6iiDozAUsAGzv4WKkXmVYI4FW5y4jTyIDMxTgPB2Q4cYTwj9QvdJwwL43H/M04Qi
	 DWLmPJncXowZ059IxDFjnednpVMZpzNktzxhRpDETHJ2suIs0YJDpCa6IhxsQ+UiX3
	 Xc/oTPuiISLxzkvijhKHFvh/NDAIcBk3LOzAOs89QJgNyf8AmkbtRU5vINzqPpeE6J
	 q+3Sr2scU3SMu+5z1kwzHcYIvmtkLqpbRJM68nt6lwKcX9nL6vxfVQ0w/Yk52AC/lJ
	 DqSlP7qtspWIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94622C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879539357.11703.103830175144291114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31697f971c2e86cae7e299db06ec9d2f1603df2a156828866f2de7e0443b5ba5
Date: Sun, 01 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748795393
