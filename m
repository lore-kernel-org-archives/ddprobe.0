Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476611D52D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719672863; cv=none; b=gwVtYktqbz4QVtTohHV3MbZZE4pOD3XWkJeFBooVXkM7MW75/Xt+KBOojFdMqlTo2xx7PqTsOHV8s0ovSk1z26pFdhsIjhVRBxmT4qmUqu+ysJIqit6Tmn0Ode+aUXvugBarOcCVcxvaSzkKkBYJSt7JrzGcug7CZeEhClrhyBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719672863; c=relaxed/simple;
	bh=OfJ5b6RyXlJkXx/S7oa2IBb1N9tAlqN+EMV0PUuon/Q=;
	h=To:Subject:From:Message-Id:Date; b=kOogjT1/cemLhX0b0fjftzpXlZP4w1K5UPTEmnTCZZPumzyRBw9omw/dWi4ZOdIWzoeGe35rtePLINu/2WJtLTWAyMLtHSZbb2XG4bU1/P7GR1aHmuv5ESF5aC032/vpYd9F6Or1m91RNwzNbnBkTtF5UwwVw04k+o3ukfsB9cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnpmVUax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnpmVUax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F14C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719672862;
	bh=OfJ5b6RyXlJkXx/S7oa2IBb1N9tAlqN+EMV0PUuon/Q=;
	h=To:Subject:From:Date:From;
	b=HnpmVUaxyoPWFF/zQcVipW8dSCO1BkPuMfdDf7LtsyuPsQcTYf5Wt92mXm026UXTP
	 aB6WlCOgXa+UCT89vMBKQxL8sTh02zFXYJb7iwHbjWl2qiHrzfwqZjDwgzMZLiXPC6
	 4Qy2oZ4tp5p2MPNuV4urfDqeCp3RoR8lc4CVqid9VQZalEEBBhQMY4CsfN5E1bvuIV
	 CstT+GlSKrPWr919ubWvYMncKlU69sNVpQon1xOSpVUJZ5z0/Flmc8UhaiLe0h/ELi
	 XGGMltIw3Zy4gxbLAt81HxwKhtCiv7E+Kiykf4qe/y4LLrWQYSwxiHUMOveS7WzHQS
	 OGtKkZUsMH5Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF499C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967286276.18072.18240348186362091112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372ea6766aa46068da7f256abe594f499572b8137e9408f3b00c18a63eec01cf
Date: Sat, 29 Jun 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719672862
