Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4210135C6AE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788243634; cv=none; b=jZD4oIFKWDQ22KxT8v7IRtrwNOQ7/q6GJY/I00hwRmyVpQS87sDM0SQf6jWo70bLgvoNjnzDqSOv+0TEUiXvzmvwJ4+5jhAItwT6Q+3xAmC/EykrsIu6GjeuQwIEokq4s+zot2TyNObF9MKe3fptj0N7kptHa4Ik+Vb5Tgz4C0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788243634; c=relaxed/simple;
	bh=SMCaNp6Rh+jXjdha/tMUFicwN9BmK9PbZsR2mLwvkeg=;
	h=To:Subject:From:Message-Id:Date; b=ey+mhN/LjElzmIkU0duoNOoMmhJr/cMY2LJd5DCWbAxJGP6jPriC5PeXjoPLf6zXxRNIZ+FlyUzr5StursY2UUc0FxGOv4UckHPZCh481A6itmHk2whPLr/YuUaZkxXNJwDI2c7X/qI+mrhdQzvnJ61HkHsF7u8k7H2jGm2H5p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfNojyRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfNojyRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8B8C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788243633;
	bh=SMCaNp6Rh+jXjdha/tMUFicwN9BmK9PbZsR2mLwvkeg=;
	h=To:Subject:From:Date:From;
	b=RfNojyRasYgm65MaKn3saBTN9vwsMKWqwW0Z+dtOkQf/lFL3FQmSNkqM0mBLtEPE1
	 /4/bH4YoEzJFGnEm+UQF9A9r4rRmJOTBRQZy74+4rduYtrfjsjs///EpwAkaN8Rheu
	 DjoeF2jwWyy4YQqTh7tNbqghQkzjJqLH6VaZ0DA0fLUBVTJowU+2Nb+/E0yB9VbkOs
	 L7sIkJgjS7pjnIC5/4AjMD/ZeSgN85kdsxXq14eXcoBmsEQTTvFK/A6UZ07zaSXHQb
	 IuWjGtUWlP6q3sPp/hjNKg3V8YxRNqA9FGswzf6vRwHO5s3Oo+x/DL3g7nmJr+AQRH
	 Avl+lMiSHtLrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B3C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824363368.27169.10144659401320253040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bce8a03cbbea1b56f6fe44562d36a08f58155f5f107a25c17490fd489a221f
Date: Tue, 01 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788243633
