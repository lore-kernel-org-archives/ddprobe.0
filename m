Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235E8137E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721427354; cv=none; b=n0MGsuLnHZSLm/RvI6UTrNF7IL3AxOzwHBWAXqn9dngcq9BFXhniiOJRsUFFALg8i8fKCBFvSk6wXeuMOTC0KSGHncnzug7CcHPVjhl7q2OIvGr5no5Aqg/8xNKX8EXnNTm8B1rtdkxuvKa8iQb1CSrkyRwXDF8CR1JkrJCFeHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721427354; c=relaxed/simple;
	bh=aDbQUbowIl0ifyj8CouLLQojidNpiUo6/gEAhMitcuI=;
	h=To:Subject:From:Message-Id:Date; b=cTbON1MyVJ3YnHPECVFbajk9czmKhLX8ZixkIiIQ4kMdpGFqgZcKax81qdQNBkUq+r26cGjJ4NiMmTOsQ69esCmg7v29K9IfSvKoOn2mypULZfBxOo40R5mna1TPPZYuEt1thErhujMwiF1eJYlmQRhlxdQJjShgD//oQLRksmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH1vUudB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH1vUudB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1C0C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721427353;
	bh=aDbQUbowIl0ifyj8CouLLQojidNpiUo6/gEAhMitcuI=;
	h=To:Subject:From:Date:From;
	b=rH1vUudBtuE1jJfAg+FHdCZXrIdFaZYS9+EL2cBUtXWeUst41FvS3nMLorYAfqEUh
	 QnMpchn6VA4lBuuq+EyWBVpf/24j3mK/XR8bAxpihnU4EY0oQuj+jP7ufTC+QQyIZT
	 s/rutzr3nWMWNrmB53WMNEkHT3aX+fdNqHB6G/XgynpPc6J58v14xwJANYmy4VcHy5
	 Glr2coDoebob5D8tE0Nv1fOo60JZ17H9ROMMb0lz/urGSXDd3prOEqLV3xfvG7a0cI
	 JROuUIKgs1HjVNA4gUaTO0QBo4wWZQTmVimKq2N24Ain9CSKSXNXIqt7V0PwMAFTrN
	 O5QD4v3TUfICQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9652CC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142735360.21698.16528216262645787081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f602c95ad205a35fc5e7780eff66e1e2fb7d89fbe5ffa8221330e6d36e7d702c
Date: Fri, 19 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721427353
