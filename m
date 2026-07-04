Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F4A2046BA
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783180714; cv=none; b=p953H3JqHPBwDgFDTibdxfPgtJz6h0vJQDHKqv/hRghPPDdGAeMQh5Yg+zQfes7Wft4MmOV3eS9Tw1LBlL1NPpTvIxG017F3ND0Z3E5CXPFE38dPFuZIKCb0h71nZ2LXEgBjJCQ+Kis/4tfbGSGp51cAd/pIHvkFt/+OkIQzmzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783180714; c=relaxed/simple;
	bh=SytbMakdAJwNBPXRcjjTpKMVFgcBWMYZnPvA+a++WDk=;
	h=To:Subject:From:Message-Id:Date; b=X7IFdpYQjdkPBPK3+ba5X5ocq/WwUbfxTakpgTTYZSVkcg2Ri+OBqYEaQuwcrbontKyk40POt5b+aNtH7c/UyWUXPFaT7BOA28aJjfuXE24kbPQsds7jbl0vHXCvBXej565qRftz+Hy6Bhjca1Jm4uFmJbdabCZT17r7qIExGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqQiU5zy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqQiU5zy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F2AC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783180713;
	bh=SytbMakdAJwNBPXRcjjTpKMVFgcBWMYZnPvA+a++WDk=;
	h=To:Subject:From:Date:From;
	b=TqQiU5zysPV+5mCp2n5mZEkaH8BBN3PiKdzRgiddZhSIV7T6QWnNR3B/gg1x8MTtj
	 AvSEAMXJv482HKJP1+FT+8n0yqsTFDnU8PGdTd+40GvpZFNjDqPI6oGlqiXMqHXCqZ
	 ViAU/DEVxImEEOcnf6txGIRTBDXOoOrlH1wv1SvxcI5ThIk9C53nAKhiQsCB1sIWqb
	 mYlyO3xC8xugr6iPDO+f0VlHNSv1N5DUvkRnDq4aAwDRd0lU2UwFdwU29ra1RFYKgb
	 c2+keAML8lu/Ax4sxEChcy4u4hglB3gAl25h2lV2Kkk5yM6Wi2n+cNL7veQQBDmlwZ
	 AvP6VEGTPRoZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD5C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318071368.11298.5911083674245839307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f9c3546c9f1faafe9938e803ae6ff769c2be80c3526d0d7dea90031262a67a
Date: Sat, 04 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783180713
