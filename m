Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204747262D
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746560394; cv=none; b=CfA39fLnpCBrQnUiUUxoz0JWutZzld/sQz2xE2D5BHp8D835JlkMD+iDnujfvf2x/NO06reyMuTS7aoPhvpJw7tWWmtdzkaEFToW+6cTsRrnKmDn1gE7gbcyRl+wX4sxc7CUJqe765wlz5/zIKsD1Y85Q+AdgdoEytEtYHOK7Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746560394; c=relaxed/simple;
	bh=EVsSrOYyORdACbb2d9s9eqp9XN+6o0rlbp3wIOqvMk0=;
	h=To:Subject:From:Message-Id:Date; b=jIKURukmok4TVhYkpqAsfR0gzrhzfCwdnjBSUnVA3xsVn6OsgKJBk8qOGNq0ghHUtEfcNvSc+5Wgh05un2NDlIR7vKXCvMF8BunSQC9x9pJaGj55IiIb01nAEHRBNityh0QjBrQ/bGSmaGs1jzH/2MhX+s/4S1lmY/oZWP9eLCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWGpssyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWGpssyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D0B2C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746560393;
	bh=EVsSrOYyORdACbb2d9s9eqp9XN+6o0rlbp3wIOqvMk0=;
	h=To:Subject:From:Date:From;
	b=uWGpssyfHtQOxW7oadOBxQQBYk9m7rs/9CvjUx9KW0XkM+R5qIW9gl1DbgCDvPH2t
	 BmhnS+3PiAdEY6YQdjaXKmKu5QRyVGvVPdJe+QegzyuR+F6uZXQYxBtQi0vpiy6Ajj
	 tTSwYyngViAdIxQCQ4+W1hA7LHlMMeNjNAKzhR6G3iGcno1WC2izpiT0f2SS/CFMDd
	 qK13KkdIbp9M8SqU1MTk3xytKv2dSg1oX2ABHKh2wxTmpxSW59HKsvQ7iA8dWHLHoK
	 PNoZWLr24FCGjISGok8Nbr4LJLaSju+rNaqr6v1hw6J9kt9uSFzd3Mar6IGWmVAImL
	 BwVS7E1cEetjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1FBC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656039357.12091.11148491905921397612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31d5b58acd2dd3ce6a71c42048305267cc1a582b86ce530222933ad5e917c19
Date: Tue, 06 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746560393
