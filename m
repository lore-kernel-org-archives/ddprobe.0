Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B0F21D581
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753079994; cv=none; b=OW20l9IZOnUPdAcy6Uif6ASOIqdJcChsxxc8TTuO4j7ShrF1sQrpvDs0ZpGSJ3HAJ/bv4etQkZv8EvBQ0K6BsWy4BnGC8G+duaFnC/a2DfLsRd1E5sOmr7S9k005ZR/C1j32yg6nBMHEq8c1Pj+8NNLUAZSK31GcDObSTy/rNBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753079994; c=relaxed/simple;
	bh=QXGdgOgt3tiBeEpZcjXEblmovVY+2mWrKS8f9UbGWa4=;
	h=To:Subject:From:Message-Id:Date; b=CjgdSk/fSBYFpq4800ksfEVZC+UFWWrKmkqDD1deAF25mRamRtDL+0qXpO9bILnIiC0etI5zPSD08T4wGE7eQq6pIgNdRDeRxoy/bQ/CatZabVYEGztC3OwUr8B8VIbD4grTXL/5TWT4q1K+9A/dXNd6+pA0B1wk4b65xyVr1ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RP/IykW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RP/IykW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753079993;
	bh=QXGdgOgt3tiBeEpZcjXEblmovVY+2mWrKS8f9UbGWa4=;
	h=To:Subject:From:Date:From;
	b=RP/IykW4I0IeCS8y5MaXIyyd+pQ2fe68st+Bex0JBwu11QQgz6lEs9VK91likG5CO
	 1/gfXELUJOALM/QRb0fwhpWrcVVf1xgrcCZ6ItZDUlaWaBgWTdP2iP+s3x0DHB/TuP
	 G4/WzXOgyUIPvGtx2k+QwBfAC1U6JYNBGj0XcSkr9PWEtlLrwDKqz+8o6ikH+ixZmX
	 lWE786uSBxSzo6L9kWRf1WLT8i2ne+5CUKRvGgk7Vr/Nu1FCV/5j+8va0vK3xvjx2W
	 HlvFzVBuMwCOmJsIZQYB/uKM8EgYonDah0g4Zg1JqoQRj+M6EhuLxa6W+f2Ls4B7hY
	 kuPyr5tE9oJAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED45C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307999357.14994.8654309270769426165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e344d63b23a1376474c2c1b8c9da722131006ead3e75d15441ad6fa073e11986
Date: Mon, 21 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753079993
