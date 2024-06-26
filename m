Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534B7194120
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719441203; cv=none; b=u7PUL/UJfGWB63B3A8Jtl23seu0t7lJD3eeXUNqkMAxiZH5HirJR0RJ53dzE/EJbt2P9G7a4j9BjTglhdPPrXgp0DOFXNMqSTdf28hAgsFubSLaUXpZXGM8rCTfl9z1Zt3lZLxMnModwMo03fwQKiafpM8jFbj1d0Gn1nwM7O4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719441203; c=relaxed/simple;
	bh=IqNcDB7kNYCi5ni2dkqLy7qWmTfsAa5kRMy5h/BYswU=;
	h=To:Subject:From:Message-Id:Date; b=aJAvUzXwxPKK/Kf2CabzmEMeGafizJ6p78bD/XqgN2P5JvYOIxkRtdoDJqVTTeikmm2djFd2ukHfnkuPTwDaV94EZazRFypZMJuYxiA96dSnOZyK8cByHSWNvhvsFZHc86e+aIhb2OoL6RYss2dUCsBC1Vd2LgPLlbjb5rKSBGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvmmQPtg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvmmQPtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0A91C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719441202;
	bh=IqNcDB7kNYCi5ni2dkqLy7qWmTfsAa5kRMy5h/BYswU=;
	h=To:Subject:From:Date:From;
	b=lvmmQPtgM8hQYAUUubwQpObHoNcf2JM/0I6Xsivpjp64ivM0qd2SPNfJI7htmGjwx
	 ShgK5AxAsyoWIXtGk0MgFdJr/3gpDYqG/9yXHgMekwXGGE0RCV9xdj+RJ4nV9E/3Yi
	 3JCR2nbCMOEgEo5vNNNc7Fp/bT6AeVaSIE8sExETepxFAkH34TWVPx9eCbBvYGHWNk
	 xBdK6VPKH8ge6+7TNcAazfdPTfx8LSZFE59BK1DSndT+310xtZBmNGlJt+enaXV/LK
	 qE6gcDSSGkSOk1X+j1U9ghgq+O9YEG/vt9ZYeR7DrrC39Z1ymysHWTuyBZ8Wbu+HLy
	 NC49K/XaLomzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FA0C30653
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 22:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944120281.30360.18044467056957273531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d96436efe90f5481dd11caa7296d0bf0838653bd56f1128cf071450b85418a
Date: Wed, 26 Jun 2024 22:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719441202
