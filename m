Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E486191F77
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746789595; cv=none; b=SORAyfQA+FudQ6+K0gEVKYLCL3iZ+tjMcMZCegL/ORmBGIWF5nP8TSsmMkZph8sNyJ2Qq8uZ3avkyR4+18jny0jDYRwuNBB3z1htqW6CsvXkJA5TfUdPatNHoAqeqrUjBHkck/3xLEgBYiK3IC2DHKeSmpBvMZrvYzx0yP8xoLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746789595; c=relaxed/simple;
	bh=cL06GiJaP4TzMzNyMbHQJa4DE30c3Xn73pCc6S6PpHg=;
	h=To:Subject:From:Message-Id:Date; b=BNhmt04gppuOGGhsSB3gSfXK7iC1yw/ohbHb58FW2+ljnzYbvdr4o+mbrTFs+GydtIhB3LXuq5q92X/OHubbHEGGnAfb6zdbhT262iTgIg/pJIpRhKsaL/8QDnz1bTsO4lKXnuutPx5hcl6iw6EgLWAzZapHifwRN+ZLl2vvMno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsrGtiQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsrGtiQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F597C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746789593;
	bh=cL06GiJaP4TzMzNyMbHQJa4DE30c3Xn73pCc6S6PpHg=;
	h=To:Subject:From:Date:From;
	b=IsrGtiQMpi3BGxEbeMG4XhbPfZeiybheUKg+zBoanTbuj7yP0yalHJ5+ysr9efyYE
	 lZkDRnoriHbllgdhnyHS1ZkWMPaWoD+FpKEUX7mAGc2PGpNh/9Uji0Xz8XHpPG30G1
	 Yf0Wr7YxKy6YJzTGNzaS9PIwqW9Zq4jqbgpz+sXoAtTMopd/lfBvprVuHoFmkOwnUX
	 bM6h6zf7UByVQirTp8GC/pu+tA/UJr4bu2ciCbW0OigZFPSkVii6ntoUOjlK+OH2/n
	 xXaReKKAPAmg9lCIw+aSRfOmoTDww8c56gCjhg405smWBJxQSWhZrXAZvS0ZvjpAAM
	 6nT6WcU8c9ZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCB1C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678959357.6326.12440985208792002103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007a63f7ca7ba614f61ba6db5bbc95a899c98fb13c8802de595e7c393c58c7c1
Date: Fri, 09 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746789593
