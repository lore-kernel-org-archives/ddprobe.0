Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190DB8634C
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756644595; cv=none; b=mtg/pjhzzqEUcu/Ux2NTizhRjljaJZXqPYTZMKhmNxBkEIFeMLK29QQ/slcSmmQjfS5m28B4/dmvnoAfCEFA994x9EBLGgL2cJAuClBlvAHKKu8O7U03Bu5j4fdp+5lAdO+mrXGEwrnrSwJMtcY/PiaGlVX8rs+TyoJ6S/ddt9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756644595; c=relaxed/simple;
	bh=sCFx71o3Flk81fa+7R/l5gvZOjZfcXEGXDg/lf5MFF8=;
	h=To:Subject:From:Message-Id:Date; b=D1XeYzmQMAX9/XTxTwTvpoHAKoIwpfEPlE6/B9374ljrOYKohCAd2T+Qikf3nMx/yZ0t+uZCGjPOOpLuaJVzSNCPiQk+G7BvKITCbWI3sCcXS3DiWMXDqMsho4gTbk5w8l40f5rFgTq/JITsD3cjDmAqfz6A6PL8t+Ry6Zr0geE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhsFqfXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhsFqfXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A112DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756644593;
	bh=sCFx71o3Flk81fa+7R/l5gvZOjZfcXEGXDg/lf5MFF8=;
	h=To:Subject:From:Date:From;
	b=nhsFqfXzgzqymFRwe8Y963IcX1Dtupv2zjRLFCDOisxgt4Xs3gGse6zjzeLBUffEV
	 1lNfatiZDBq9IWOaDP5g5+IFBgQNxZgBOFSVuBdGnAMWgTP51Kgyxp73wZ24SaCz9y
	 RszHh3+t/bXrnXkELcEmBIpzLTEO4ojmTgtuTpGFUHYckg5iKtu0tgj6LD+YJF4/rH
	 /otr99fOygQe9fddXIndVPx7S41+CWn82Wrq0f2GGvw9JHQTXObPhQ93eczGTWv1vj
	 nGWyP1W2jqmoqnV44dc5krGPl3bCfeVOVqtCE56vyJPnqLLkY5xYm/gFm4V7upyN6U
	 t1JswJWAoSmsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E56CCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175664459357.14249.6106534675601601213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ca74bc8050900122a068cb6f297fbaa77553728f830823713c8adbebc15fd0
Date: Sun, 31 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756644593
