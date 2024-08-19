Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508A814B07A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724044554; cv=none; b=MeITKguj1YgisyKF7Pm1F4C6WOErFlZSNH4f2a8FsK5a+ddroTNNx0RDm1bmhZ+6yU/2JID3LnUTKRfUQ+i1V6832m95OiD/R5AejFfbPvrjEOSTNjPMDnkf5R+eZSDSGQiFhv5mf0KwCg3evmNDK6jzn2cjynn359WSlUxYtEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724044554; c=relaxed/simple;
	bh=YQ+h9h73y4QTPXZt+jN1MxIF+HdARoN7w7dD65Pmlns=;
	h=To:Subject:From:Message-Id:Date; b=ZOrrMWiElPcUeAV3KH0DTIAJMfUx31Tk9Q8SmdmfhKYiSUtCxtiIj6bmtrgxxa514DGC4NA0tpehvNoUtnM+ArmzcWoCkSWsjuh7OAXmzth36q5M9DnFFjqhcDH4hIkyfLkfQwApAyT91d6SQRvCDacufjwuztUKTXvn9uB3pyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLpAQz7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLpAQz7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73A6C4AF12
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724044553;
	bh=YQ+h9h73y4QTPXZt+jN1MxIF+HdARoN7w7dD65Pmlns=;
	h=To:Subject:From:Date:From;
	b=ZLpAQz7tfqMXZSvCs8tRGLlgAUoUf324KmXVDmhGm9JuErf52ctwdPsM3Ax8VO+CW
	 GyOqk44OwaPKKYVmzoChhgIrXuEu5paw28iEuf0JEGesqx3pRqhHgRZ/Vb/08YE3aB
	 6NozV1//efq/lGPP2VOe/hou1A8a3JkWG/1/BkLJPp5fuAJSFofws4DZA+jB6F6R4i
	 C5b/n+XHLpRq06GEDuzS9IzR1H8b/yGfWFgfkkx1d4yRW1K/uByyNqeWFLSmtIYW4D
	 YAFQKbJbipDfAf56LrfaMAtrVAbXbTz4CquS28bWaPHZabJ98dfs2ZdC+un1OgOE9m
	 1xg5rsQOdBLSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD25DC52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404455366.3509.17419958490504108928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eed38b7d31587582313f38242143d4c259f3782508f2dae344226fad250d970
Date: Mon, 19 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724044553
