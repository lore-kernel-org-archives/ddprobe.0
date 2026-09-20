Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51ABD33986F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789883434; cv=none; b=a+Gm0/EXtEl0vwzLPt9dD9NHyo6++iFFYrAt6qUHWQxzVtR/1nkZ9yvPXuTMDVAYDkkozKL5nrLf+MJnP8sbLTqNEpqlYMwi0HVZTnEOrZ5Kv7jSkp1HGpGfSx6GEVJy9K/1q39vRdnEpss88KguuJRUXluRmUoCKppQQzUA32U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789883434; c=relaxed/simple;
	bh=9juOW+/E0goxxSXRNJrXEpzpg0tgZsIJiRHy21wC2Oo=;
	h=To:Subject:From:Message-Id:Date; b=qhRr9lzKB5ytbiDcJ9wAAM4MiXVg2UZLdErDS1x4RmK0s8qr+jTuwuimwyMU2lP/a11h1FYPych1JVdFo795wJEbwNC405l3EZ7BBriXLCut1tGnUG5GChkeQiY8PplmZWurtT48iWYPN2iAbLXNhiyzHA+1FmfQZKrCK/WhlJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDCXT5W1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDCXT5W1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65EAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789883433;
	bh=9juOW+/E0goxxSXRNJrXEpzpg0tgZsIJiRHy21wC2Oo=;
	h=To:Subject:From:Date:From;
	b=NDCXT5W1HWBDMdQyvorOYxePnuPRpIdAy2DyphD/8G0njNiUBndrBvElmb2AE4BZn
	 TwF6sd13IddIJD3tMBxu+m6BWDEEVtg29xNH8KlLX3Wm7p5NzKKdxIaKrpYBf1Rq0v
	 Acdr5/ItC7rFyEHqcpQsluV6x5+QsaV+J2QBU6HZySQKYhx9Qa+f1MESH436x5IXPc
	 geQNNRg2Bcp7vWHh+zK05k6fmYUiaHkcAtYj0knY8R84gsEZXcuZFw5Pw5Mdve4Aol
	 Iem3CUQ7nF0k+JSulPAf/W2Vi6tDeMnDrZHxBMySlK+ZvEX4erZnTQ/vSY8agDkU9D
	 ZN9iZVth4pQjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEFDC982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988343369.6682.5149343856174264287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a459e6b3f33215cc4d656039e3f724e7cd0d9a439b669c5ad24e0bb9074584a
Date: Sun, 20 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789883433
