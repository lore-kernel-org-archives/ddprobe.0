Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCBE19CD05
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767191633; cv=none; b=U3PxhaNfRyO/aa1j7MXS1FBrD6l/2zhW8gkyOY7gYyBGF3dcKqsNfjo5KFn3gxPFfI9Uyx5LFXwI5w84qKO0OyILbVyIbpyy6uEk/xHbLIxaRxtYFnzP/K1N51AW6vwsKPSaDqlU3kyUqu+ajBsBkeLoyOBmfFtbtTU7iIc4xXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767191633; c=relaxed/simple;
	bh=Grf7Aa00lIwus8tjBL7ZDYVfPZJ+m8pG3aj8L0Q9dZk=;
	h=To:Subject:From:Message-Id:Date; b=doUc3TchARJnBjBC+XpKe6yREbwMsuyZ5dxUGoHv+UA7dui6VspKXs3n9oGdEb02ILUs3mHpQNO34lb2hQ3xQQQv8ufbxviTrKBeTCJYnYXXFd78K4g696A7D246kixrX6RT4IHEAQ7/13D7x0banKlliKNlXWx+FvDYhHovho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KnDg/9Pn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KnDg/9Pn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF3DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767191633;
	bh=Grf7Aa00lIwus8tjBL7ZDYVfPZJ+m8pG3aj8L0Q9dZk=;
	h=To:Subject:From:Date:From;
	b=KnDg/9PnAvltPib+D7R4YeAIgwCm32RYVQ4jQAErP1cofv/DrNZgMKRq+RTuYujgr
	 69UuJvQIt7I6EnDH8FqapN3rvryGSA0WrKAk3ABT+qXGZciIK4qD8EIV1ktxZzE4Up
	 eazde7BShUVUSE11+DS+6Nd5nVOc3KTY4BSXumUhNhmZNH2gSSOcfR3MZzhz2vw1eH
	 dh7Mjcg4/49UWYGNAyG3OxAXa/jT0ndLKrEFyH5hNU79QokCYGNtOq23Yl3SBwcJYQ
	 sZmM59sWPgeNzyuB3AsywEa+/F2QKBsC8hY33O+AIpvdggE7nvtwgV3d7rUtdjaU4z
	 zfMUdIoscZFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90056EE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719163358.15840.12241650033934697483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f78ff095222e6a3681a33147022e6877eadfff14c55c41ebba023efb66f9308
Date: Wed, 31 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767191633
