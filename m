Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95DE2D7806
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761590394; cv=none; b=ebu05YaGjpFUtOb8+wZh0mSR3lliJglUYpGo2dZyPTSsTPareBS+n/D/8Oj8Q1HBLJyD5H2P684OE0ovrs5fCZEWikAF/DnXqiRZlZOj1UtevxBlzuhk6Nz4hn943OqUnLoOhF8qcxv5Hom38o1CbKYPF2qGjy8c35TfaAsNwDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761590394; c=relaxed/simple;
	bh=fkHMDcf1/t9DPDbZ2wcT0hwfrvfWKK4mNfx32ia3K0I=;
	h=To:Subject:From:Message-Id:Date; b=WSwGEmBptKGRp3N26uU7RUYWVEF9cDmjlUyb6cf7c7FEUCIZ7ok20X1L60WpDyffoANM84rJyQUL5CCpeLTEx4J64xzhz/kIeLZHNj1mz5W2UuhSeXZYkmBR7Cva8KyOZ1E5UskWAidPLNFD4U2ZJYwof0L6RVRDrVFzAOx1UYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mr6DtcJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mr6DtcJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406BC113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761590393;
	bh=fkHMDcf1/t9DPDbZ2wcT0hwfrvfWKK4mNfx32ia3K0I=;
	h=To:Subject:From:Date:From;
	b=mr6DtcJgDvpyLaDDHGIVRdog1Luxx9GpYtC9sUj48tv2Bn421cgSYNx83R93lwUAy
	 mpZ0FCOu4w97b7XQb7NIrWZHJrUaigdTsCleu+G9+oRPvfxW7BJGKzU6x9QOnkkvwF
	 UALDQF2cRee8B6Qdqg6BNyh4rtt8/OqeH03tEpSfKcPRi7zIqgX+u6pjQqkEYYp0VD
	 jJASaDnOcBMxJ+qpmtTsDuS24+vlihMXixGD51GD/n7uu+Vc32TJ1IFPaq202esoIU
	 ctNDARdDXXZalg4KRFFgXUrWL31Dc4VwTYCOa1V1JG3wXU/UvTQ7FjiXGlpu5Qi5VH
	 GuOpp1RJ1lXqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA3CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159039359.32177.6393742798251207019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c2f1c158f6b3c9cf635d0abc030a096b5c4d90ada9ca7f719881a97d5de5b0
Date: Mon, 27 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761590393
