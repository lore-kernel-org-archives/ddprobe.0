Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473F8426EA2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770401634; cv=none; b=CCqmOuywfvx3nUuwqTPd1tj/OLcm+t7Zpqbw5/+nRwWbZ3JG7lsIJlpvYZlDfVgj6p798DGXxTw5fi5lQGDIBzVv0ogQoSWm4tMW3Jr7XO/31kVu6a6l3FhkEi45jyp9fAdUThFrtAk8K4KPyVg8OqRWhBymHqmJHwfrKxiW3t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770401634; c=relaxed/simple;
	bh=1hogQz4pDFKayAJ7XnFWYVvxW3GKgdPvKJEEVUnCWs8=;
	h=To:Subject:From:Message-Id:Date; b=nryjIgNVRUzbFfEdNxnzQpo+ITog2BrzT+hZzpsmcZcCM4U8ggVeMhmVXD7ueAGP3xum3+egtDZOsvd38pEn2wqe7FX+vCrDY4/5FJ8JS7RfWMCfnnDhR3L6p6s+nJT8AUAsrxZdEU8lZ++rDnPxl+zwG9TzBIVj+Qk3CHSSzFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GaxnYdFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GaxnYdFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1A7C19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770401633;
	bh=1hogQz4pDFKayAJ7XnFWYVvxW3GKgdPvKJEEVUnCWs8=;
	h=To:Subject:From:Date:From;
	b=GaxnYdFWUTiyUchCkl0SYEikRdAVG0Vg8ImwDsCczR5i1dBrUF8W2gShcbLKa6JZO
	 ZQlJC4qgA7W0IJy7WYwvHr5SxmhWl61OlUnJI4pAazKgIfmPOM+3XdUmAFQkj7OANQ
	 Y6EJW8sbOcBn0fvbvgd3x44nhbOkiZ7s4G93szlxXduKVoXsU33m2qTQ4qLItSSEiL
	 ZGhrYpq6Cf6FB1jpBbDJH6o2mBi+l8DRlzUwkiVEtNtDQ/o/2pggzYu2DtyLLq0zqr
	 9+MR6tRyV/CaB6qqjcysvdbv3XAipR0tFcf02X7NgwWfu0YnzEqTwMJaUGWSdIYfXA
	 q1c1jYDW27A+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C915EE6B47
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040163362.8968.5083942581698196850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3664259f6a2e7512edc0a11f585eef1e73fd384e7c963cc889addd9fe61f40c5
Date: Fri, 06 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770401633
