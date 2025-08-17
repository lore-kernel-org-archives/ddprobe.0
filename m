Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B39129D287
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755446994; cv=none; b=Zqq/L0nVy/d3BRRQISP/r0q7MjPhzM9LNcbrlaojsQyxnqMogfApVmnCoSsTeOG5q3ESYViBP3MY3MZeDCi0pTR+9e3MvzEpHelNtXD52GBpCgXWjKfe16IidsXUZBgp3VaQRD1uW1jendouz6j5KuiDt0fR2qVF0fezleKBc7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755446994; c=relaxed/simple;
	bh=VyN5CMVRCkmawA+TFWdaowL6u33I3F4r0Ex975qDB3U=;
	h=To:Subject:From:Message-Id:Date; b=JWkRoVYwiVPbqFbb+4C1dgNXnQ/heraohY0YZsJ7lkj9y8LPVGQ62L3VXqFY1VUpeU1NbUX679y+PK6IhRTJTe3f3LBtMTDaVzSsVJk0Znufq/NquYh4ar5M3hAK4vPUX+8AqfD3QrRVAM/cNPvJtVX0tcMUHy5XBblVKz5J2bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyTv4eZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyTv4eZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755446993;
	bh=VyN5CMVRCkmawA+TFWdaowL6u33I3F4r0Ex975qDB3U=;
	h=To:Subject:From:Date:From;
	b=EyTv4eZuyE4mObZlhBK985B1W2rHf9bML16JDox2muaXe8j7GnVmCyUIuIZ9e6IJd
	 eFjPNYTM3AHNC/AsxAvTl/aXDDq2eIAPxuCxBhP4DaVxoZDspe42T+9l5W0wCsi8s8
	 snZfoq3QpIbgUB2OhjQyjsMWKx6CBRfcfpAxa0/C9ufAnNkZ/kh75MYG1b/ZvnLZCM
	 lN/vol4wljushHXwEPIk3643AGWhxbNcxTd1oDQW30Z/rAG0xJwwE565Cm/jcliOUS
	 SBfjuPs7H5WflWfb+7S0hyqWnIaFFwsFiy7v/WA/n5RsZ1zXCFia6wQdwz3S6YhFnI
	 E1mwoUbRkKP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C3CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544699357.3977.9334705201154566296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f310c4aa92996c54021cd8deb012fa89182909f621a52b7c2d16bef0cd31efb4
Date: Sun, 17 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755446993
