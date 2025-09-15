Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119B127E058
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757967595; cv=none; b=dABBDLf7iQiTiisg8+dk+Iuv32FP2iJMQ4DzY30j82MFrwlLjcTKF4oGDxD6aXQgVPbiJinzKQ0085LVMn4aERYjaSX7bjbDx0ymYuyte3UQLlCotVp4tLV3o25whIDkO4mhzG/U9nP6jTVXmzjSfhHaYCmuHfcWEaQTV7S1M10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757967595; c=relaxed/simple;
	bh=b5zCP/qweAYsuM05mJJsFdiiv7jeTP500yGFBSF/CVw=;
	h=To:Subject:From:Message-Id:Date; b=IiKsXvzltM2PVIaVCH4n1vdPmAwW6ASEFrjBVFD1HJIdZhZUQO/o6mohxCFvEx9DUihpahA7vhkCxZJ8s0kBE9jCX2gaqZqHmc0zXBnzo6REEZ+TqW4BkRfbV0oV6r4ZI0Ub1BXnZgFeKY68/t41L6agdlngn3txRFlw3b73Jvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpU+F6JX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpU+F6JX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E8C4CEFA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757967593;
	bh=b5zCP/qweAYsuM05mJJsFdiiv7jeTP500yGFBSF/CVw=;
	h=To:Subject:From:Date:From;
	b=KpU+F6JXum4Js+BM3BqjxnrOP6HGl+Yw/mjJRIlbPMTZDs2wnB/V2tWYwytIsatHK
	 +y3PEp1IKvpX4ukHXBCNMC8J3kG3EbYsnPLVDOHPrqcpMyrfHkWoMB2MWPQH1yVis8
	 C40uPsVMX2GDgiD+/9SBOTUWeDtrs649bvUg3wEsNM+ujtOkd3ilDVxrDNMmKQ4uhe
	 2jloWIjNNhu9Xnu3+s01ICWdITX1evHeN2kLNrexuvKdw7bfF9oinssgZLQg4aq5zF
	 AZKAL2ouB2bczD43R9Gf5C6LR8DsdHSjKhZz5CCZozC2aIsGXPSHj2jF9JBODNFjkA
	 JAs+eD8nexAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065ACAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796759358.8883.15778123364462606778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1a1d51e429b2d6d3387016b86ebfb18a134558efd24c41ef7e40140f2203e5
Date: Mon, 15 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757967593
