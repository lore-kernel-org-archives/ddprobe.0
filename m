Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650AB1BDE6
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714532543; cv=none; b=Fr/Cl7tWK+6OBUJQsgAM+Umnq7eW7c8tVzWhj2Bakr+osoZPPfgJeV6D53lcq3Gf7VjcjPEEx0aJPPVIa/6a5iW9FxwrziJAdEIOmxoLXkUm/mYPiqHQZjsghlrrBtHKcBNIE174KtW8HZKB+ApR3kpa6rK3DZyyisfeLmmqA6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714532543; c=relaxed/simple;
	bh=ik6jPyBpN17VZD4cSIEiLyRC3Q71imwreSYxotGOeu0=;
	h=To:Subject:From:Message-Id:Date; b=N/rcRC+ik8DGd4TruQwRE4Z0k4LjXCoefkx2zv+E7Wz+vrIRTtLSDMYSUDQgEKpQ/ryZ+BHwGuHP/DjypP5rrPQot5qnNyD7Fn28acwfLjRuyYbdLiZgchVMifUF5a4cawoYJEtJr7EfA9o60Ps9jT4a3x562zZdBbh3h/AjWVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1mo7lhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1mo7lhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB9C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714532542;
	bh=ik6jPyBpN17VZD4cSIEiLyRC3Q71imwreSYxotGOeu0=;
	h=To:Subject:From:Date:From;
	b=W1mo7lhF5drNpliEmBOBKLWOBu/VvHCZDpAFx0+2BDhT7kCGPtrCRqCDI2m/AuI0L
	 foVnC3blX2rHq4q2/RFj9C6EVQ3Vz6dpq0rEEQYIODvC3W1fpj5ozijZ/A2r8KeI2i
	 zSsYe5e4PqEcExjFvBRYE+gezXDJDqFN3rTY4ZJHZYsiebFFRRAdQbyLb7HuISNq3Q
	 dmLmLg7X5mQJSeRpCuYWlRaxncRJPOI8JzIlhOLH8uR4+0c/l7J7n0AtNmMQBgxy+X
	 hTRZf18nFXaiwzQFCQooECBevvghOE6pW0M6DL5pDW4jZ7ToJZDnIWtJjakTwUsKmF
	 gnjrmOUWEL3kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AB2C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453254280.4075.11349832241970095225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407f2f02668373fa16174200ebad9ed7576e576df297e858018916d330a4cd43
Date: Wed, 01 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714532542
