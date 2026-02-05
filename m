Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C445B25DB0D
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770291233; cv=none; b=tu6C/m8aIvz72LFkLiFootXB7QPx87oX//CZwAUC7j+J56Sp0gAYFd+wRAsq3sN6Nw67kUaBR8wBHz9vxJ/XasWrbTrgz+tYN6xriRO1nV4mfc8dIhMLTpcjNExl28cUAG1/kxxpeapkzGreE+oSResaWKbS2V6biZX1h1SY7Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770291233; c=relaxed/simple;
	bh=+a4Ef+6yPowFPcDTUIuCebP/iQ/dxLZlo0WHQFsKilc=;
	h=To:Subject:From:Message-Id:Date; b=YlA2U4JlPoTMmMqmBA0hAGxEPpOYC6mIzkdxZOL/4hTQ3DswvYqLoZSyaQRYNLufPgmHQoFMBFtX7W84WakK5nKLGp9F9GBcj7TKBNfHLfEkE8zHW4eJq1oSACfM2RUtZq8AO8G/N6NZTXZIq6y+8JUjBSQdeCE/D9hET3uZMfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahy75Glp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahy75Glp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A787AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770291233;
	bh=+a4Ef+6yPowFPcDTUIuCebP/iQ/dxLZlo0WHQFsKilc=;
	h=To:Subject:From:Date:From;
	b=ahy75GlpXPUmj6q2EYpFEsAG4pPbinCU3NWFvD1KPvMS1NQn0t+p30UgJfP0ynQlW
	 iHdu4KOKQuw6paomktkWj12i9hu2SHlXkb6XfWitiTkVXmmzmfG8pfXzCUYzM4Y/I1
	 tK/L9mLIZbzveCnU14/o8fyGtjgDzAOfFxJI8/qj4ekO0qgvveOK/7yC9KG1Pt7Tsm
	 nUaZu5yxW3eCE9cwMP8aBuzIk+ZGSr0B5iSIG7AFa1xalaAECP7TB55J7GWiVPBhmf
	 opbLkyflIZyj9Y3ch5jRsiY+DpQApSg93eMsWzqOtD0rS1sEm59EDabezS2XnOT180
	 tge2zhs4yxShw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A10EC1E8F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029123359.10001.14897357900602858472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5ce7ca3767f6eb72ce02c86c0ec5a46f00d73cc9cbeed213ab2c8f4360c1ed
Date: Thu, 05 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770291233
