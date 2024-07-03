Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6012B85298
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720012523; cv=none; b=SRWOftZPHPI7i7hcm/j4ZiyEbotLEkJXXp0ls4OKDRq2EejXwpF2/rGkj7aYi+lhQRftxdNW3UeR2cEkhjPRbLqCZbMdhnc43/7qd0+dXpd22ITv5wJub3ctVC5c2Dk7YwurFUqsqyGL4iJs872FQQeea+HC7vCQiUChHqyQNmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720012523; c=relaxed/simple;
	bh=BAraUsPPiZHzqB/7+FKSIUy1mLcM7sNUHteNxVysv7U=;
	h=To:Subject:From:Message-Id:Date; b=BLqHJIqHI0SlZv8aO4aDfKHXBQFfuoiABg+GiPM4XrR4VIEtxmtFDDdiNyiNvFMVH4O+85Dr7b+6gK2S3S+bpyTWkfJsSxt160096VI2+OL8//dkmN5ei7APG4/ALFRjqUeJbzZJi/5EEQ0l1ZsCo80hGqiCoo6aBibbQgY2NBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwZWlU61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwZWlU61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA46C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720012522;
	bh=BAraUsPPiZHzqB/7+FKSIUy1mLcM7sNUHteNxVysv7U=;
	h=To:Subject:From:Date:From;
	b=fwZWlU61dkTozg/aFtcVSMWDVdsgzMemdQmU8xyXGCeIwt+NFyADi1qFZzVDLeKGV
	 7qav6a6W1CidFdILyafTNO6/XdC2m3ijQMY1SdCH1ffRoqOtc/xW3nVVdOgJQjx29d
	 mOfocTprKwfg0jefBXxGTzpYNJsQnFif/Cx+BQYZw/tu7Ax0ZDMn4kvIsVU7CqTw1I
	 2hQIA9p8W2POrf7zb4hwa6R3fNwlPE0xZrExliPYt8C1oMkKxdw2YbOvf2K+0d+RsL
	 vMMSschwBgp//d+UDu3xMJEvww2BDMHMpI/JfzSaKUF0hudk1k3yb45gr/nRW/4Yu6
	 awGUZLeAlhAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4AFEC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001252279.9728.3026479501693435484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e1cf87ffb2f2f5d021d4db89c385c74232f91fde586e26a457673121f5ae9a
Date: Wed, 03 Jul 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720012522
