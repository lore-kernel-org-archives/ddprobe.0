Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C35625
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719710663; cv=none; b=pkvi0wXt1eRO2AGpe63ezmW+cgXgd+m5MtmFTtQxqZUZVkXc8ymMRNMq8jHNUJtY+BtL6yOMQaUQjInARX/0S0t/ZZwAs3EmyghZASbxCzhgwIfHBVlqxVuo4PwrBwNmeDem4cFr1huzfsLhUlCa70WlRNWp58BAMxHZy85asEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719710663; c=relaxed/simple;
	bh=qxFNJZtoNoxxZb1ThtPwZ3/7taPlPZCO9B/b6Y1Xn+c=;
	h=To:Subject:From:Message-Id:Date; b=q3YZf/EtKrgxdxYxDhsFYMANQjw8hXDQ8Ur8fepgBiNsIguqnKCc2mcy9FYxvb37uyE6L5Kj3yQVVoizXC4ZmndgVJlX3JNDilVbm01jbrCzNcXbItJ6/Sar9ZU7zOce0bjTnT0Njm0Lsid093m0rT+XaXf7d8RHYIxV1e9fCVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbVLjjzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbVLjjzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA265C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719710662;
	bh=qxFNJZtoNoxxZb1ThtPwZ3/7taPlPZCO9B/b6Y1Xn+c=;
	h=To:Subject:From:Date:From;
	b=kbVLjjzNpEC61mBD6P3YbgsG9BjDOvvWooqdw3dQPFIzIrc5IcMI+s40EaamWmrgY
	 JYSmU1NX5mTQn6bNPb+uKnquPDBvL2LhxiGTsNFgI0UwBXX7Nw12lnfQBadBzBKflV
	 H3XIAQ401k5VYOtxhvtoQ/VWLkDsdb8cd4e3SDjfdsU5KusTJejJGQEhUeJXLW5p4o
	 BZaQaaTU1NsM/ebgsq2+trD1FK5/3Un671Ilvb+r4gjHBDRn5888bI9ef3cac9VNVj
	 Pa2GjJeRYK47ZRSzVolkU1fuJ4GwryLfGLxZ6vpxijl1rHdEP2VBDgm2oCb6RFSrZj
	 lrzjTfuT5sGgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2905C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971066277.3328.17963827175531066259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8d07f42d51de073f2b1ff556c063c2c0f6af03f38f2d0d0c3870495f7763ec
Date: Sun, 30 Jun 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719710662
