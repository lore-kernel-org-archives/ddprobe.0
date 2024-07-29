Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4092A81AC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722240954; cv=none; b=dAlhXTpF6AF2JMcbereCPZG7slb8LKE0ywkmGKOa9NPIEuveZ8herJr7LGUqOXv/SxbELfpiS0XvhtTTooTYrGFEheq981jugZdd7A2An5LrOS1QlfF3ELUaOp3PWJrc+LFNyNZbgR9/WN9dnzJus0drJ3OPcNo7eP7PR60nw60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722240954; c=relaxed/simple;
	bh=yE+LtlAsZCcIoajKIYvixRKIe0n0oBlNgueI4uU/OjA=;
	h=To:Subject:From:Message-Id:Date; b=uXClZSSvBbdFWrqaWayHlQed+wh30DCrHQN+MHzU76E3GTE2zyRQgWSS4IGj4mNmuD4YOBJKDArp7cuAahbq5ddCLvc13uWoYXyMVaIC3xOsljea+eYO79cV+BB2VLKAsrae9KKnN+FLmdMmdxZNSMworWKyZVdcQ09Hd0di8ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWeNtoPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWeNtoPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B174DC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722240953;
	bh=yE+LtlAsZCcIoajKIYvixRKIe0n0oBlNgueI4uU/OjA=;
	h=To:Subject:From:Date:From;
	b=WWeNtoPUdeHaC7irHvBdGUh8qGK2TctdKB+hn787xMVV4+hksIXURCPccIaqy1Wpz
	 ObOL5CoBAtYcdRl1iWBLVgkypsCwVyJvkaxzp8UNWeSyyyNaCFtCd3sx10ROGEm2Ju
	 bkJAHV4kTonlr4hXSkyJQihovKf57BSYRX3dln669IKrMQlvh+8s2Y79QsrT4/Uwdm
	 Sg0w+uQ7ViAv7pDWkLCB32CyO+DUvQLuSrW3DMl3kh9XOQqvyC65ab9N2mfhU2ZcHE
	 3k9lb7TGJFSk9KOIy5ahvidNQuLGhBueG573+LJarIVCLobFaJMuzwQOwN6i9y9DPI
	 eKcxS4UXcEsvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C425C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172224095363.29610.1719929450476460563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc678b4d2e3e4c8989ba6e25793d70d8be8f86ec0a74eb8cbb6d73f69f59f9a
Date: Mon, 29 Jul 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722240953
