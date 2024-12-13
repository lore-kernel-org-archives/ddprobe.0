Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABC3175AB
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734122154; cv=none; b=VU2PzCxQPRDPT8jXPu+ONpNAEp1pFWc1+BTbmpRjvXlleRuoEslowt+3+JztvxAQlhCq8T1PnxI/mBwfsSTXc8E+9eQH+8vd3VIYRZRF8S5aCzhsPL1PhCQhqwwaYkAK/uMiDGAo9zuPZqyU4d4YjMYtzu/FpO4WOvEKAiq0yvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734122154; c=relaxed/simple;
	bh=1pySWaLrfXfpJe7BGZrPwBXQtdXsx16hnpF68MxiFi4=;
	h=To:Subject:From:Message-Id:Date; b=ByEQ88VcHiYqOZ/xlSP48EBG73yh8PmXqxwL1PVTk/8Jwz7p+BjQYUzOvHjj8Y1cyXwdPZr3IoKBAIDBHjCyLyoRuLcvdh9kEcWe7dGiEAMqqVN+9EtsGjCq+TYLjJWb5xYn9Fa2vp9GbmyvugZvWVKgvdyXkjSwLGdYE80IETA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swRXtNfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swRXtNfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDCDC4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734122153;
	bh=1pySWaLrfXfpJe7BGZrPwBXQtdXsx16hnpF68MxiFi4=;
	h=To:Subject:From:Date:From;
	b=swRXtNfo9hKUceDPbhQ8wFd0c3dqVm+wLbLf8dAX6w64ihomFDPckZPH4gq10TeP2
	 zvTuvO5IR0EO7qajpUNIzFzLPGXW/RpZ29vPPlgOxBM52bW+vvcGFTn+PzsNJQjxEN
	 EsllTCr7f6SnCgoOfTzTpwHwvT+jcND5bwf92CoJiILA5Mju3os2Pcu37pXnk1RFRy
	 A+vdVyoOxXwjMa6QVufbjInC2DjE9abw/P5Dirj9104WZ1aMj6qpLlpet213lzskS1
	 qpE4F9/3TxGBT5QJaUBz1vRKRYuZ//kBtu1K5+JMwrz+UvsHqBjYFnH3zLDdnR2ni5
	 vHUzsDAVME4HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9892DE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412215361.30318.7932666663703724297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2250edc7ebe64207c70803b4aa84d1752663bbc564f61e7f309f878691074791
Date: Fri, 13 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734122153
