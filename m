Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEE228366
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732436754; cv=none; b=sOzOLr8mwHlwqBf2GJXSoGJ5rCJn/4PLoklB/unpPcakkaI4GTJSS31sL4FDvNEnr1AVwFRpP8q8ZRLCF7lD7dj7OO5Bqp9UcpogAhlgjsfhI5FWWATKbiIEuMW98p2iOWAJGtZdCHQZiFZa+sqxQIq5/iID9ujCEnZwCJaeOWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732436754; c=relaxed/simple;
	bh=ZvWM4whIswSHpTxqxhp76Hs77ylnHQruow7BYd1RW3g=;
	h=To:Subject:From:Message-Id:Date; b=DcLY6pBLE0ZdZ0uIGQQkvfYVKSvCfmaitJkDvkW8RCJTpnIBzItoU52MUIXgIW5uu7KgtgK6BTSK3WNKY2lyAJSbEsVlkL8qeweCtjqE4C9ZbC3Y3SXQC3DIjZ/e4MCHX73jXAuJmeMcl834xYqfm7a7ETACMmvXlyBQ+z6O2os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blaXQ+9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blaXQ+9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7888C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732436753;
	bh=ZvWM4whIswSHpTxqxhp76Hs77ylnHQruow7BYd1RW3g=;
	h=To:Subject:From:Date:From;
	b=blaXQ+9CiSIl2v5CO5d9+xyGAoMn6iXQ+e2D9wjTY5dZW/qd5SgGwdY60bgyqflVp
	 /IS7R82fXbQXc8bcof4k8/P1ow2cTaMOCd31eupz3h1BDC/+i6JlfVySIxvrWJF9EG
	 u8RzhjfIwav64kU0TX2tNvEanjIPiMkxEw2i4I6D5pjzmz8elMth0/6kcmF2tqXXjE
	 v8IGOTm+1p92Nob7y2PGdEb2pcghwZKxUlTAQbAXYla0wi+oTLIncXhRNezN3oc9WF
	 zW2oM5YA2LlSC/Y/HxpzWBf3YBx8jcPtXpVDm1MeX5T1PdAffGpLncRhGOoeTQ4MNr
	 EidJlgb88cVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98401E668A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243675360.11547.4011917153096359203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffa2695c46ed9c1b75cfbc9a910463d1c4d83def849d92fc6c3f97fa205b8bf
Date: Sun, 24 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732436753
