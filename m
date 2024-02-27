Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE14E1CE
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709054297; cv=none; b=B2XqJQywsKe8EFFyRlE2nUz8VLLocRGWXbAm1N7u4z6p8xhTJEFUKL7IzSxFLyi2S6RE1bwllEn210vAvz4Pl4LefPvByaYBfAKbshMQkV4rE/XRWP/NlOAtgf6an+TZ2cFWR9RoQvKKXprtxhPXNp2t8i78chJ53eHWAHWvp4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709054297; c=relaxed/simple;
	bh=PPly4pgVICL/TFmyD41k7hLYipgS2/HYnVYzJPAkrZ0=;
	h=To:Subject:From:Message-Id:Date; b=eAjcrT8EUe71oaLFf7bJ7iComQXfccKCwpvg9gvAHqfZEsWiTPiWfJjBSQGWGm3jlGX1cSqVRLy1yiOVgVDW8DPeuQYhEFAu+KBr/nF4HNZPvl0DVAhEu5pa97QxGBqwmsdZ4H03Lh9Q952ZkK9qJCV3iZckwECdSvHFi/CiZQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1A8r+LY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1A8r+LY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78905C433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709054296;
	bh=PPly4pgVICL/TFmyD41k7hLYipgS2/HYnVYzJPAkrZ0=;
	h=To:Subject:From:Date:From;
	b=M1A8r+LYZOKPjzsq1Dwfz/Tu1QNPPtXhHJ5WN28ZAvmfKnNC1oIGJK0OQdHtRN3S0
	 mwXmefFOEq2ZPj1AN+uyOunrD/7vqmPwsSp0BgXYeI+/cH32Xbn4J7NCvtE5qUWjMO
	 qvY8FtqiT7pBJ6hFpwy5G6SVbvwHOuuJCuRUjxCyZ2tQf1ivxXHV0XocmI8IVHgjW1
	 /F/6ZWLGJjWPUPa8j3FkxL0sjkvj5/f5g/1C65lrNJs67ZNIk8BJnX2J60Vrqekgp2
	 uiKhPe8xnE6fPCTalLr04nbE4muJkUvOqoBGZABCIm27mGm0/Yg3feG4LPaolr+xqe
	 HRbH+EKyLyFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6096BC5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170905429638.24180.2536621915088631797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1c561f216a988dee8628675a45a76871f6a6c2d592a69b7210534259f4fc02
Date: Tue, 27 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709054296
