Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25850315D49
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760965194; cv=none; b=EquOd6+TWEaij2Gi8vf7WbZ9LVWBx4lt8SXUJRibUNbHz+rFFMo5G5IeCUCJ8SrzHNz/eBT2Fddg3ZLNDR3TRCmkfx5Rt5xGpaz1s02C5QRpLtY55tGQlMseaYQhvkao7UObETPyQAodbsOg/wSC3F7yTlyg3dgSimCnnaJmIWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760965194; c=relaxed/simple;
	bh=EQ2mxTWsKVAS6z32RTslOQuhSXD2L2cOT29Xcj+zjRw=;
	h=To:Subject:From:Message-Id:Date; b=JCLULy1RWpYvh4T0RZojksJ2GNIIW5Ya+fNlLA2vCzOs8eZZ5rxQM0hyEzMF+Mb2sao4AVRUueX9331wTBjcXaMp+ARIOmlmCMhUSFnpOwPYu4yGtOxoMiKlSF2nCJZrW6U/PU+5wD4myKmKUpZ5Ayph90LztuJNaWZBysgXbas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ao5dr8mL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao5dr8mL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1398C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760965193;
	bh=EQ2mxTWsKVAS6z32RTslOQuhSXD2L2cOT29Xcj+zjRw=;
	h=To:Subject:From:Date:From;
	b=Ao5dr8mLSsuWgRtagCPGd2Djzzioq6Ft5E5T6Lcb6tZyig2DTCo7ZozasTxsRcOXK
	 pVvdk9WeSGDaOdlWykjFxfsPX0uATou5IsUaFy6uLZRdMrAG6cu9WcD45BW5Yc91Xg
	 S4+QIkQBExbHcEsP9P8oyXSA4ndYHL90NMw5e0K4tMggWftxXBeiQ1hWMjQ4yrthaF
	 h9NUXzw9sDd0wJgyyQhcWXQ0l7q3U32OyzkuKLDVpuR/B+gXNj9aY7on6QCHliKrPe
	 stoGpuTxq9sEBubI4fuh+4HEONt+Gb84EdKlAqxrl5htKfDFJ0Vu/cfBMJOF02/tmF
	 7ANW64cV+ohLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D2CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096519358.19738.12356133486838709772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95757307ec02a6e9cf8c100470b762abe19de34042d9c898212161bc365a31ba
Date: Mon, 20 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760965193
