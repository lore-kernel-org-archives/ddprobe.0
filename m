Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162F71E3DE5
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756942794; cv=none; b=iMtobv4BIFq4TsF+jPqR0+Tv5wd7SqZPoovpw3/fqvEQ4LhVb6HrLufe9+bB6XLHELg7YiF12SKWRT9on2FHKO7anHehBiRJYF91NCvCwAdzCyIM9wzZLPk75NXVGayobjM2gj0u4FeYnDzgFr2Ds4BvnQBvMzLe3yKkWsX/J98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756942794; c=relaxed/simple;
	bh=gjvFPRBWZEQ/76qxlg6XTPLYH7F1MvQHYlpjTdpI6rA=;
	h=To:Subject:From:Message-Id:Date; b=CX9A7uQVTqtlTACWRlCSspV83gDyGi9oJ6yqw6pYpJIO9V+p2249bYTLlCNVl51eqcsdAVqh8x+mm2C4e0dptn2sOBd78iymwTIQ5NafZVM7djrDZ6ydGeO4btxwpDzZTQZ8gILD+uGO1UNNPgznh8V1GrDy20S3ubqLKa0Z7BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2qvJv4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2qvJv4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5715C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756942793;
	bh=gjvFPRBWZEQ/76qxlg6XTPLYH7F1MvQHYlpjTdpI6rA=;
	h=To:Subject:From:Date:From;
	b=d2qvJv4T7TSFI/boOooKQD92cqvX0ZrD3w9d/qZA8X8wgJ02dREEZ8O51+C47O+4X
	 sHUpoPSKUXu4VqjZIXIyYj90xkR6/Q3XeceWn9f7BVGdu/oCyoD+5jrMzbsCSZifLc
	 t+dUhnY6IlvF/050/RPtM6VPCb1NnUHpBX1qs87hHXMG3WcgKWsSWa2QLBdj3UPBZ8
	 gqiYUwheimcf6u8aPNbFIrLQQ1zVIj6AV0bPbvRBP9bR8raF2vyILeO+klwRwA/RsY
	 75KAaNugyCWISrr8mFiGVV6bTaLbzAmZVrGu5IvLbWobKpPtIV5CVd7mdb+PbNfsTq
	 Ani/rVpQGoesA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9191ECA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694279357.18475.12164299933003024174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72697a122fc2ce769c987768c8f672fe3b568d6f9a24bd77f701a468b595d4d
Date: Wed, 03 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756942793
