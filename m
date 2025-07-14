Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA51D6DB6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752481194; cv=none; b=fLNSkMJJX78VG9p5r4cxE/GUHVXjB1xEdtf2RanqNIy9UY3PA88vjiSaHLAQ1koo6wT+RJc7MAoDkzb3DI/P/8EvMP94MP1hQVf4VHIgCNyaikT7rKCWhocf9uuq0NGRr7woYefENBEpBbb0rATpjqLQUhvopQ44y40dYkD1if8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752481194; c=relaxed/simple;
	bh=BxI7UZIvb6NubuigD+8AYmwoaI2U9Uhpyf5z+FxYzTM=;
	h=To:Subject:From:Message-Id:Date; b=s3paxFTvdpSa00O1nO9q2ZF3TCl3VGofTX1O2eq8b/oMkdV+6QnZNitJngsCM3/KVIR4KDbmvir8FTfq+1DS/hmsvnsH5zCSX/d5fUGNCHCBZ7bJtu9bfmgugXuScVBKTJPfUJmpPa0ZhZIRaGdetb9bTZcPPlpGzr2PzIAEceA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ML5+ErKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ML5+ErKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD861C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752481193;
	bh=BxI7UZIvb6NubuigD+8AYmwoaI2U9Uhpyf5z+FxYzTM=;
	h=To:Subject:From:Date:From;
	b=ML5+ErKKKBgl0UNHsTTgH7DJlznGpDIwH3HdiOPbIYCRU48zmOayOFKQOM8/XSVCB
	 qtpVtAPQioCgm8tGfHMWoKZqivk35zgnrR4mybAviM+2ma6WDexi4/4ekb4AlHPBQn
	 McjU9crNJyQWEHOn13ao1jDjFSzJbJ0qDYU23PnvE3Sxtm3IbS7mUft7v1HerlbQmg
	 q14SIIabrxv9ke9GCxYeCaEzHke84kNXDT0IwHlpsQluDqZcy+aBWKSg4D8NBxmCBs
	 zzedbhVUBTeTowLf8Q7UkqKrtxbT6ZuzAvCJ/7dcki9rLOe4BX8fJViPZTePodrzNZ
	 gZlUBdiSxtwLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1D9C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248119362.24014.11525678564235822680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5c36f9e5cadd68203614eedd3bb8feffc1116205e45289b4d0c0acd80f38a9a
Date: Mon, 14 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752481193
