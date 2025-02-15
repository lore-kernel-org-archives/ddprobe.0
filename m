Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A1A1A01B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739636934; cv=none; b=IHlv7LWlLXkb+zJ3qBB5aQapUbbUe5eu4KrWg3LsRsCO7S24a25jufRgE3HwTbab4H46BT6HRH6KMRksf/a8+eHrX+/ABvFNDZq0FQVoQucMxeHzo95EJatOC1gbQo9ZdsiycoxZC1I9+0ln+Q+UcNhHQvOubj5aM6y6vjYhQa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739636934; c=relaxed/simple;
	bh=xhOYz9ehh0++1Cme+tp6lN5CLqLBMqcGKyt1hjZgIKE=;
	h=To:Subject:From:Message-Id:Date; b=rvWEsgcevm9ar6w+QnXDXo3E+vzivTiDbJ4ty5SlPXKnnpHIgC32wGzkVrWgx4nESM9hAX2TMzc/BjvcfXT+hH0tDjcehpIeYBVCDJj0FEJwM3Mc62M0l29oET8dAY478d+KVj044kMvoPb4qwr6FrxQcgwc+fCpcMu70w0Xi/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptXNa0aY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptXNa0aY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD459C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739636933;
	bh=xhOYz9ehh0++1Cme+tp6lN5CLqLBMqcGKyt1hjZgIKE=;
	h=To:Subject:From:Date:From;
	b=ptXNa0aYstZi98cg+wOEGdpkJdyCen1kIrRtuHw25Wbw6Rtkqw9/bKxQzxFQiszwp
	 /bfS9RIQLLtEfP/DVmhZkB8v0CoptVquHHj5z0scIo61VOmOOnvD+8IO0LXNhJ20vU
	 yY/xvuX2r8TZbON27aYubt/GNMmcBzqIcgsZzi4k7x/QvcXfgYs47nntteV2C+mXD4
	 /Zq2Lq0RXMo6cjL6WvCeGWrHnwxknITTPmvAVRPLHwiA80Ar+RzOu6Wmeif5D5QBjH
	 hcu73Mvb1xlUET7kkZhQqmgqDan27BxCBvF4TIH2nPhL3tjIdgV135YhVtJ1SVa7+h
	 C3Ax9sQswhqbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D8CC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173963693360.20808.3260072102902889271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28da70f9a96089a7409d799db3c0f8049447e8805d373d20e9119970850e82e8
Date: Sat, 15 Feb 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739636933
