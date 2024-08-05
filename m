Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24879136330
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722899154; cv=none; b=EcOUikaahe8Ms9X8bPvTIbWt/9P3sZhJY4Nyf6HCw2pOwYjWgflmgpeg+r1MS7mm3X2YowntheZfVSBujOuFvZrhAF6sxXiXRRUYO6uw3UEWL2hKUtB6XUbcWYNTtixYvOnnsHeTW229xHjG6R8PAD1EfD0cJU7TvRUjrrp6ud4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722899154; c=relaxed/simple;
	bh=l2plOcrk7Hdi/YjTdamgMWQK9oygZNJeZW9jzrRVBUM=;
	h=To:Subject:From:Message-Id:Date; b=vF0Wtwc2LTaD8tAV79/qFq6sX+PK5W+MavqxrBRvJsSJZ8izwhf2i5s9Dif5TjOtsQeUlx0Q6tDUvGRzAIhJGF0z8wgKlffJyDxOS0Hx2IIEM2sa3ZyeIZba1nwNU/dA9XVlQsb9AC1N4LNcRgZxIicHtM5XAQbdNC/eUgYl1xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxuVeg+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxuVeg+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F93C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722899153;
	bh=l2plOcrk7Hdi/YjTdamgMWQK9oygZNJeZW9jzrRVBUM=;
	h=To:Subject:From:Date:From;
	b=mxuVeg+bqSQbT3iM5l8tt7DFSvBEakKA9tp4QWz1UFlge7I6bknkdIE+2maFsoNVS
	 5Ze4XLGg1zCGlIKd5upezkfDb24RH5vjeEbwmqvXliyvN2nQks5K6m1dYxyQl4hmNo
	 L+t77i+9sbFAP5uBdM6se+czm5Y5g9Hy4x8qWCWhwCAhxeEfH+Ot1PnbiTBYuI/K49
	 wI5InErRExRF5QWHTOsbeXvnL9SjG63rEK/2R91M3SMlanOocyOUV2JSfpBMhaaktW
	 XeVwcnWPESY+0y3TWs4kk/z7rzB3ybaBB9faCOc4KVXNnFworsj/0UsWqnOvglBO8Z
	 4zoosXBRe3FVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5B8C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172289915360.1522.6320316802370696785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7d109cb5589a30902f026efce24a7ca2d9045545fd8165ca03b2509141ee9d
Date: Mon, 05 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722899153
