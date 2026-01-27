Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B04830FC39
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769495034; cv=none; b=jtvJZ2ghIOo0UvnQUtbuAFZwv0w00pLc8YHcDX3tdc6OnAbjeP5fwCD+fxWBWrmxO4QvlzTl6Muoh5oo65Xs7Wp3amaWHznieBkfgxxcanQao8YYkvaKLq9FPO6prmZbszBZXCvc1ZBZ7klNrQ4xOm5TGSF5ycNBBofbBcfHpUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769495034; c=relaxed/simple;
	bh=1t9qyP5viOdNrdUSF8rGp67ddOeD20SNBeBB9KneO6A=;
	h=To:Subject:From:Message-Id:Date; b=KXvdzztC7T83XWTIR7XM00NRv5OXyxDmFzyoszNQmvWzlh/fR2RQLH6HJbTSQ2aMIPcW34hJZqFq5eXiAuUXwS+dH7XXFQ99nhx4zoRo84vjxGY7Er2pCVeMuJLnixhbYXWu20zVCyuEgxlVz4Z0mQB36hc2j/HlsB3hdyAoymk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMXgBxwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMXgBxwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F09BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769495033;
	bh=1t9qyP5viOdNrdUSF8rGp67ddOeD20SNBeBB9KneO6A=;
	h=To:Subject:From:Date:From;
	b=pMXgBxwColdgvHQSw56RnApfgCayIQaHl8TKa0rkHiEoFlKQP6u9/aZgbld/G+uzp
	 9tgQBQPtJpmxtmY6p9KOAiAzmNWESCDabhHCo2pn9753kUHWAsiKwv1mdKIHdzNhom
	 IEUC5ybIYMK9tPOUpNHuDQ2rpfnnMIHwuMzcNymfDvBDfpVFBXDw1tPyh33Pocnne9
	 V1GWxspi6RvVabEeotAyweLXXpudGec+89QLsS2CMtJcGj75u3qwVsTyT2KYMWR2Vd
	 0+yMvtc/LWJNIf41CEQYr/q+dzjb4wTVudvqytKEFcnU1DRUCdQMvCJ2QVc5ADmdiA
	 cugx07p9w31ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD7D2594B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176949503359.22973.7840594606413068853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e35ad9a3d9af7561a85cf711d46cfd08708dfc7d92d66b7639adb049e7cc20
Date: Tue, 27 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769495033
