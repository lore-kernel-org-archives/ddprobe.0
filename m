Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6026D2BD022
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787581834; cv=none; b=tW7A5kI/jWrOlu5v8DhKK0HgRYb7Lg/iKQTIWsf+7YpQp5wT3dCc5LwRm2zq0d/cUQ9t/4OB0EseoOZOox/l2UAyOnLRYXfCk5I8WcRqv6b5MYU/DbY9j5pSWqVgYy1Drtvpak+e9UJ9AyKbQMKkYO+0K0OarYSphui1Q+hkgGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787581834; c=relaxed/simple;
	bh=hjntoXkwqtzj/R2hJ4FBEiMTxz2xigFD2ggHuRJx2l4=;
	h=To:Subject:From:Message-Id:Date; b=FnEpLcUjCX4ctcpx0hda7uuGySxFDllyvjLiVpTs3RqdUV83nXCRDoLVGmpAS0TUeJmR3dXgNNdQ4NA6djCLvdcHiFa3OAp+LmtNFHicpFNl4PDHNKiDyXQYlg8lh863wjbNNNPvn6Q/uEoJHU0di/VytvJU6Hu9/lag8I3oLpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5yTD5Y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5yTD5Y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BCAC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787581833;
	bh=hjntoXkwqtzj/R2hJ4FBEiMTxz2xigFD2ggHuRJx2l4=;
	h=To:Subject:From:Date:From;
	b=i5yTD5Y+o9e1chm5gyur6VfssOOdZgLtQK3o7wvxYrDMzIrmCoU6aEXuzm4i+Tsp5
	 cKLxeldUzGOChpCXxKc5t3eIkVnDzvRvFm22MTR6JOJN9DmjuwwRzOVKa5mA/aGQTQ
	 ysve6ml0V6II3nFhT8vFBW1Kvs66k2y594ERE8uZaHNknofAXfbY/dKNVhmXJhDmKF
	 zgFqDa+zcIDN9J5WDUg4sKCy/Jwfd/u07UNwUcxKaR2kEo1wsSS7qEYstDvV1RnXpD
	 aZkNUTNNJCy/UGCe/wdPdNNtn5VIBYxIq8nOGnjxQ00xT7ZR8wcb+9XOl/bBbjBjj1
	 IL6sRabbRanVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6AFC5DF9B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758183369.22085.481548846748564638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6580f6635d7ca362a162dfebbb0bbcd496c2ad0d39a0eb31f4eeb1d6cc4532
Date: Mon, 24 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787581833
