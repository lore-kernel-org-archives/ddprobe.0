Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E940825B663
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778980834; cv=none; b=lKSlsWvVSA9mGWfOH6dpQkW5ro5sqhjdxkHM9NAdhklHdksQ9skCnMMsq1q5G8GfTmg7dFm1KFCS1/9+ver6mSLYTm3K0SIE3d4F9mwF96JlcNrRfO/fbIlsiakOn0Nl+siyya9fHb1HN78Zd40NYJiCknny6xkQActAnIW7mBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778980834; c=relaxed/simple;
	bh=IqW5YieTZG46dEIB+waaPzYKuWntCpJpx6Z8q08Frkc=;
	h=To:Subject:From:Message-Id:Date; b=ZPcb1Zxj4TIKfdY/R6pYpSr46yB+5AJQ/6UIaSN6+vAHHt6kvNEGzQl44nWtAyTEDQRA6yyGhkJlUOn2l3cKxFzocRl0KIQjiYeAZ9O31ZqVyNrrfLh9Pd706rxr1pqWhOkr8Ibb4ZoIw1PxhvxaB1lMNI1cFlxVRkZzygKMgas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLodPYza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLodPYza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2145C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778980833;
	bh=IqW5YieTZG46dEIB+waaPzYKuWntCpJpx6Z8q08Frkc=;
	h=To:Subject:From:Date:From;
	b=uLodPYzafxmdoe3YSYJL97ajinSPFpbWvGtetGASvPxvn+XM4GNuVjdQF+RB1s46S
	 WpTIfAA6Z60DcwJuHDTFI5hqHEOYTruhzTHXebr3VRJQdZnsMXOhtJmvBDvXGY9xmg
	 qNTBxoex41xGUGj/WWkiKwAwJechijs+asG/o8rmChvGJZX0Kj/xJ0T3PagxySSf4D
	 E/R/kBIfKJNJbxaAMKSkmz63L4sD8dUQclzuO0bXXSn1P1w81woOhmmzizry/3ZOky
	 Ux1wPaJxgSxVmC/yE2UwtK248viLBbsb4JRtCRpeGiPWC98Qzk9y8HVbGpSV18n5cn
	 Dxj/kSh9ZLRLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE257CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898083369.20617.6145563485823832638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ae91282c5c027e13a18e4f03c0a32bb2ef46f799a426776352a9890f2bb006
Date: Sun, 17 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778980833
