Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC0D364EA4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777315654; cv=none; b=SaaB7XAOFeGDyET3IUTqX0EBBjTgbym3ecbZcWzdQOeTuuq0DujUNr2xaw/bKMdPb9JaU4kXX1gAIdOCRiQICsMZgSp7cSIEv7jE+r0kfYVlLZm2Qhwl3lta7D3xjtgigpRjEfL9yWuO01J+l89IJMsnj1BMWCIWK5/pDclkMaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777315654; c=relaxed/simple;
	bh=KzuDsNan0hjAo7ji1V2GCln/7H69QwaVHSb7nKaKysg=;
	h=To:Subject:From:Message-Id:Date; b=F5Dnd8ivqlGw6yrlxXe1617zqSONtstZg2zMPwnYomjju8DnarvJw1RpgdjpTJgiQmu/67FunIPXZo7pq3CyZAEztN1Xv/3/IzYYkMsU2StVeHg5c8hUCJmcS/HxenA+83SwXFCG8/M6zj6dX6Z0pqmFSpY5VxIo6UjRmzyT28I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOMQCZ7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOMQCZ7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2BCC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777315653;
	bh=KzuDsNan0hjAo7ji1V2GCln/7H69QwaVHSb7nKaKysg=;
	h=To:Subject:From:Date:From;
	b=AOMQCZ7pJte6xRMYPBW+ro8asSVfBpua7lJ9e6N5W9uL8gR3FQ6wcgNsyejzewXTT
	 yGNqGqy4UpltKXS9qWszXXqayB8jBesqP3f5RMXCuk7V+DUTv/m2m867HRQjmN0aU5
	 y3qaDU0IvgK0ur/Gm0QbG62AVO2LMnVQn20x4ObAfFMhpwwmpLivh12gRigTzbW1AI
	 HziGDIF6DfdVNlQRz5OHzW+hMWg5iMj8sih6THwsY9YKH9LzzcRKJCuuvVGas0RKaY
	 Xj9/qAZMnKZgp1USBLkxilQILDj180rHxm02bPmO85Z59mAvvuD2rxWlNlgK2HR+XQ
	 mCZSMf/NPourQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9639FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731565368.23787.3204908334095168234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41cac7e03835812a840390b9a2b52cd65112dd425dcbf1ac1ef43ea709f06a8a
Date: Mon, 27 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777315653
