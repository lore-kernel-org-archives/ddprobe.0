Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481CA13C3F6
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741150134; cv=none; b=M2VpkpsbGeaXsltdnduYEQb83oXitNXaF5uPJzETVdTzgkH0FQ74e/xa/s0kElY8yk0Ava6axNTVr5OqJIYgjP0z0CDU6IlQLt4ZGc6m+ORqqvNsX5wnk5pB7sZ4HY820mss2Y/7RgMidjiF+FG9OOzxLH3JIiYBcirwD6Jcgx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741150134; c=relaxed/simple;
	bh=a9ijsk9fhJee4+kt1nQrBPt3MphDNGbH2NUIs0uQJ3c=;
	h=To:Subject:From:Message-Id:Date; b=IXNeIWEY1PAyUA8n64766BwUz//EF6apbzX80tXEi86eRjWW+TVI03AFNGlgMw6RqO2/ruqhuFoZjjraiVMv/Z4xWfNrMpB7GhciVbsThbrja3+0w2+uOezk8WShgIourrv3+tLSFZYK3nn416ksNA7xzXVs0Y7vOQYeqZexWDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIZaTOCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIZaTOCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9980C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741150133;
	bh=a9ijsk9fhJee4+kt1nQrBPt3MphDNGbH2NUIs0uQJ3c=;
	h=To:Subject:From:Date:From;
	b=aIZaTOCzyyO9Cxi2iskUNuZah0auNMJWa61ScRilxzCtJQmY9LUljqSq/Y21PgPm0
	 PFesuPRDiNMZVOFPzFmlMIK9vet4TkTQgKBCFxxaWpYYO4jVMBw9OyBBkipDJy1+Si
	 8n/r1dIDaop/OkdACxztZqvvv3u8n2YApOpExd6IDI8tADSCQpoSSg/3FUOgdYWRAu
	 v7OunrIXB+tFZZDcuBtqUQm+Itj+p7L4dN8ANbecfxznM20W9FHpxyfz1drhHH2SRI
	 P+OhIDoHYBpU4rWbPD4eA1Wgd+o/0y5ONNlA3ySgD4l0YrHIzd1WXFFwMgtnHSw1lF
	 mtZy4rxkoanSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95596C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174115013357.14343.9485871666736335314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf797782749dbf3d38bfd781de413e44f914520c115f7e1f9c09bc8104aa1884
Date: Wed, 05 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741150133
