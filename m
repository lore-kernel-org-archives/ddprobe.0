Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699EF344023
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781231194; cv=none; b=J2JDUi2GaF9LxTZnFOKWyOGvCDaS+oTqbG2sEVMZx4dNNLN9LmxAbdpOSD4yn8FMeKzltYNAmUWNcCzjwlgtl//ap4jcIcpsZlcLyBjfyWZ6E16luVt2ADl4z6Y0/Ekc8wFDnRsaLFMlqrft2RGB7b8gh4WoE12GjLsgmIsOo8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781231194; c=relaxed/simple;
	bh=HPm9Muege+uqinC37kZmxqT2prd6pNhVfArembudOQk=;
	h=To:Subject:From:Message-Id:Date; b=lfuGCqN9VG/xGoBrDoenB1d0b+5AmF4DPt5A5MU7VlMPPySXCq71FGOvOQe4oYaLXXjcLl1lvADY3PDfBMnFYoOSLuEM9bmcH/FKp97pmvsXj5Crwqcfm6/NVqQ+l3HeXUW6MWKALmEUf96CAw2WkcC/8XlF+Y7G3Yo1ePprejc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/SI8MsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/SI8MsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B48C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781231193;
	bh=HPm9Muege+uqinC37kZmxqT2prd6pNhVfArembudOQk=;
	h=To:Subject:From:Date:From;
	b=O/SI8MsKsmcXjtyOG3V61RSaTtB229LZOfb/KRO8iqBBO9kZHuTBZIPWTNIzbHae3
	 5pF6A1ELoX9+6+djYsLzNn3YWR71GpRjN6Zbz6AyYKQPQD95F63LRiUQroHL8KtJ7D
	 ZahTpOVJOK9H8K6WQg9PZuQjl9OeVnPIqcbDAC6rdj09GtZaavHmu2iKyZgilVGR1y
	 VZk+eMydp+yIulNZprFjtusRGKsAOGPTK6S5nohY3lMKF/ugGeUScBxOACK2KtAegW
	 H3MLrAgiHTvfimZG8f/eJHB7S66VhYCC3l+gy17t9mPivlDwd738n7LJCFo076S5At
	 /Q451pTLwNyFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB0ECD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178123119370.24198.3415240182947678495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eae98e8d58d649db8a3827f0ae4f710fab53b2bb8eda188d9aebb03be38deef
Date: Fri, 12 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781231193
