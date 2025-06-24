Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D00425B309
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750802394; cv=none; b=oTLyZ7eO7uk+1AheyfevqULYW7XpAXFLqR1I6UYQXuemqUr8Gp4h/4oJypsAnMwSBFp9ve+yEtKBBNxByAinuPPrH7YyCP89/YQR97rEB/VtaIysVqGjYzNXq1rixkBASuM8+pcxHxAY7HJWKoSIQ7ZdQI6SStvpXgVqAvZNdB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750802394; c=relaxed/simple;
	bh=+2BPfxaTRCBpr/2uqPW5ABgXh8bhihDeeguv+J1oF+k=;
	h=To:Subject:From:Message-Id:Date; b=EL2tZ+Y4r44Sa9IxlOdJo/fsodwVL2qniMT3mU/qX181Gh/AD8fgPS+LloAjqltfT79vvLs57UX5sngR/r+y5o5etWjEj5ja2TOrk7ESctqwTfrZs5t51+VQSaoldsNtDnrYBixVvFC9aLJHFrGzOqeFy/iK7SHXZGvwo8ajvKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iy8y+383; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iy8y+383"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3660C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750802393;
	bh=+2BPfxaTRCBpr/2uqPW5ABgXh8bhihDeeguv+J1oF+k=;
	h=To:Subject:From:Date:From;
	b=Iy8y+383lQUci/EqgFdK+8UW6iH3hYd91GhiGnEr/U0GndpwSfNfEVLWaS9il39hh
	 4DU+hH/ILP/GtgVH+4jWrUQ3fvCUN12Xk7Tk6a0uIcvhZ1NPgehJb6Kcjm+HVdSn9C
	 UnC5ho6gUZ6FpPlKS4wSuW2cMhPwtaHBXzege2/3lt9oFfL26bq++XhNw+A7xsfu83
	 k3NPJTOdlLZirzb2MxezKQx8EqqQoJ2zdoD+LRm/qNMF37sAnwPryC4X72ftvH8a6r
	 VvxRKYxhIH5RuXT3WscL2wjyiqiT7l6LZWacffsaCfXrFVhS/D8EA9PB4eIe6M0RpD
	 u5Ox5WM77vO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C2C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080239358.28646.14944725027765797307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6a5b23ae46ce22d57be265514cbd7ce558cd7e25d890357b6f5b0a6bd59028
Date: Tue, 24 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750802393
