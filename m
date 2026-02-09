Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33CC30B502
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770677033; cv=none; b=h21SdVL6NcBOV07CMc0LJ47RRMFaAwamCHVxL9ZVcp9yHW6Z5iko2XAXUItsspluVSjAm4QD171PUMedT562G8IttKsP2P+IbK1zDffzAKhCkzf2fHbS1/SFFq+YxtpLFTlKSgkhd+kZlHR5kbmJsMqAabxQiCHUxHE/6lzugeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770677033; c=relaxed/simple;
	bh=zs9+DFUlcm3kYaZUnXTVlM7krjF23unULLL1oay8CRY=;
	h=To:Subject:From:Message-Id:Date; b=px5GE9cF7nsADZOmeMkAQApzjA9c3YDxAQGK9r/FHfBAucbY2XpqA6/kw9fFzMFf4ZZwrhamONJVIM/uISQ4w3XVulcX60M7Hp2NtV1trAkLFPrgrqZBw5ustz+98DiNGDNcp7+RoXQkM0/TBXVX2hw+JO4inO35TU2cmToIBJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbhHOyB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbhHOyB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6A1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770677033;
	bh=zs9+DFUlcm3kYaZUnXTVlM7krjF23unULLL1oay8CRY=;
	h=To:Subject:From:Date:From;
	b=DbhHOyB3gXIbRtq+i1WeElcl0YVIoQ/7wJhG0XpaBDRhY5w7yhE35PuzGKaZJrpQu
	 GTFeuoLBRTkXLsCcCMTh/YGkLAed5zurmRoYz0OHbUszikX4b/MQ+HYCEZGO7QAWxm
	 a6VcZOvt/6FBJJQcpyAoRYtDd6FM2wldOTjwfxxjILfQZXjXD/BaJur2vyN97Ww8Qp
	 1PnmPvBcnv3STZMsI5taRLd5xyvS2j9Emd8y+okZG5102CEBP9xtFHxwwcZQJoqIxH
	 OzTnnGC+ltLIE+Qh2jJpEmBw9HJCublEVdxb83RrAqZKIlTodk+EtUi+4kM0t6rSdZ
	 MAMz6JNGso0FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97250E9461B
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067703360.29961.1924929218520469023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd5f9e6fa258823f06e4abbc10f68b19f2c68f227a6400d7701e59e3a83a6d4
Date: Mon, 09 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770677033
