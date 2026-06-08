Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2780730274D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780882474; cv=none; b=QMYq8lvfD8UiLErVj8PndahwhDEQeUq6k3/+UIkP/zRRLCdJfu9e9I6CNMsFZWv7ThgbAVFUdo4HOH6ymeWOGsDfbg6P/aHjoYt/pP8qqfT7x1PZ2honW7dinGCNtuMLhb0iL8ClmbjjxWPqMPE3lOwRSlLI1zdODu/3++UwogU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780882474; c=relaxed/simple;
	bh=G1CJPs4Irhe9v2vl3YRECN48sRcZ1/qHSA3iIcasom4=;
	h=To:Subject:From:Message-Id:Date; b=JKo3IY6M1tD6Hc9wnPGTIP1Gj70A73wNXUBllgpMzYbgsZq89VgVEaNy8hlRDQr4ExisknFB/Sj+sgHwcuUMwKVPyVr2J5JLq3tRTFRvKQQjjIVKFMBkfifWNPDOJAiVCF3hR1VnbxPlcO76tyNAkSnE700NjUjhmOZKh1o22Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWexclxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWexclxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD42DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780882473;
	bh=G1CJPs4Irhe9v2vl3YRECN48sRcZ1/qHSA3iIcasom4=;
	h=To:Subject:From:Date:From;
	b=LWexclxkeGP2yhpSXOoo0BdPZ5n/Ue/Ss1H85P9o/eaStI4CfBQq29R4WL1nqEjzS
	 RLWln8avuIMUajsSZ6qw+6mVNFbEGZf2qQQJrNVxD+AyRaCsjP0BHJ5LTf2pk9d5ux
	 7o2R1c8ye+rnxFS46+nVg1a49oshGO9/15UhwtWPgsTN3iAMyQ9kBM+e4uQTUi6pFp
	 jEfsFSgRPsFpGdBXeefgQUnPVMIst2bpm6PHkgMDjccxSQXUNF3i4yaFGIxTby2c6y
	 u/qmyyAoVzRnLHbjo++84jCxY600HUnzMnvj5TAGc/YS5kVJL0AgTQ+XbY4hrYYnzo
	 eU2dMxvBgp6Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03C6CD8C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088247368.1619.6389353073901875709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a818935e13addb8b349d42fd8cbc35e91b7f9db31b545765eebe6ef3ac085b0f
Date: Mon, 08 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780882473
