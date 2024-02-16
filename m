Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC1B12FF9B
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708121297; cv=none; b=PMNMl2/fSYhU2vKfhYtwAPQV8/B3yG27Ctmfg50pdjQUWkE96RS8cFjILqRwSidibUqyi3vIxfaZ3aXHIkfORBdXZ0hKan9AgcRimyssh8zNCpmT+6/uKu03M5fxCqnZGg2J7l8j6bD532n+fgizdH9IN6ySrlFC6JormLCYFzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708121297; c=relaxed/simple;
	bh=7XRfT6fwZ3XtqmN6zRXF+zkWLDblttW9UipUs8pTFlk=;
	h=To:Subject:From:Message-Id:Date; b=Lc2edjgKBXM+PxMWjQ2DQdvo8XjQG77SelkRJVirvcNLWfQlnoswohIuMbQUIpK5ELnbgsnNslEIGYkHsDKU6wOfCr3RcN4IlH/294a5dMxs7XOS9J6D/ivmRgHXc/GzpaYVIvW87DwyMgeu9aA1efKRF6Vyy28evc78LuvWNzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJnJ8Hgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJnJ8Hgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721FBC433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708121296;
	bh=7XRfT6fwZ3XtqmN6zRXF+zkWLDblttW9UipUs8pTFlk=;
	h=To:Subject:From:Date:From;
	b=NJnJ8Hgq3oHPcUT4JWF1sSQEt/OF9w8M6hhb5zkHy2qW2K9VCjx4HpQP5m6/Wo5cp
	 H/HNx1XREf1c5H2Zuih5SVDFNHxcEwRCiOQqMx4s8TTnySb/HksjYsmmNGaPWljyBA
	 7wztBLw7ZHa2ZAxQwmKET4v2T0CkZz8XgyMMZlLKsto0O3M7MO4ieuQWGD/CtwJj6S
	 ls14OGAYuu4axhZR/pK1UAQzwpDavNs7OhgGdwah/+qxKxGj5M4APMXUdTfrcGab1c
	 dLBs5zGGasQuY0HkAUhx+zZLMuW/a/HLzX+eoOvza9FmAhhCuLpU0a0exC4IIJCI3O
	 c6dpJryMNI4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B477C48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170812129636.5474.3006069058055100000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c529e8edc00644e566a6407083e280d8dd6d5fcac0c34021773d1e38f55fe6
Date: Fri, 16 Feb 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708121296
