Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C9D40A925
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785409835; cv=none; b=b++xMbap4PlB30e5UfkxaZE3mo56V+3vw5iVUjVgoF6FhQmHm/5FjH9Ns4c0uIoUcAb9grocP00ZYUBNgSIn5xDK8rmCd/XlRXoHiRF5HG0DsRQzwITtWnlG+YjQ5luqWUmlz/NxzVLy7f/HhKLlK/aQZkuO7bVCtip89VO0Lb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785409835; c=relaxed/simple;
	bh=2LbhIvMFyyRgi+TyPa4BYoleiuzDSkQlNRyv4Ns3GqA=;
	h=To:Subject:From:Message-Id:Date; b=bEeNSiF4ApZu9ONvJ6QSkmSHEiBlot0fMAetAgzqgnhZJLZv9t9+XBZz2DWJTXtSHt4mm+fBiqMxoWHAtUxxR93tEeWnKL7UYY8GpCuOHsfYBaQPCvIeFSfV/NE4k14WfC2oeCEDqrkc6p3Dl8sfljD5iLxFT3Leg38Oee0RWXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKLm4EZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKLm4EZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BE9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785409833;
	bh=2LbhIvMFyyRgi+TyPa4BYoleiuzDSkQlNRyv4Ns3GqA=;
	h=To:Subject:From:Date:From;
	b=mKLm4EZ9srzHqrPndOqnA6x7YZX69jU4KOA22ZOm7712S7quGCkkZwxZmwBYzIn+7
	 X5GSaEMaglUZBnrhG4QUVnq2uWNJPzW5b4c9uZBsp/JKXBoin25DLke6r7M4j/dBNG
	 0URJ4p5XbeceXHZkicxsuP/tjGixyq8hWMGDI9Kye5wP6WbgXRMQeFffMn/TUNEp7/
	 kFpo3ZdEoNQIY/OpyoDuchKSoXbiA4lGnjy7XFTxR1d/Ypr5SpG9Ohgd3wTuOoDNgI
	 w1QjJRXwuC6IGoisuGrWSLxyf/WZY2JwUX1cxqVG362NVUsoE82BnlsKmwyp57uLPx
	 Yu/CJpm7bSkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF6CC55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540983370.24862.13424320006034652849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f58d3dec1cdc7530cb0aa2893bfe02a8ab86bb7ceacdeb0ffc9e2dd56a570c
Date: Thu, 30 Jul 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785409833
