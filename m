Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0FE179A3
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758469794; cv=none; b=ZOkqQmCY6x82AL4Y717N/27NwWivRgXuS4fTZcQD4sDnapAywPcEcr+1LKuBA3D98cu4pZjRRPzLzOJvirKbxh8gFH3W1WLhZGC0bHJTvC3JxEGDlHZPZQ9+HRbkmxyG5xJMlS70lmnsszsFs+YDE/bBAzN70jxL71u8Fn45nSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758469794; c=relaxed/simple;
	bh=SFJNBom5ZW//PyyUzPOyoNawNtEZPGlUdCjpUxZZpPE=;
	h=To:Subject:From:Message-Id:Date; b=HVAk7fE8bmh6vBwcqQi/ouoGWjpJE//HNlTs0u8abRJGC4UdlGe5DGstRylMv86B4qwsNXTH2OwIhTKGhcY2hftwdZp24C6P84GWVZxoTHpZ42/EihPPT1g2mR1zyV/epPRZGbMUjY1VMVQHpuOKZe2LN0ML8JBuPTHQIJuRRtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZZIwaEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZZIwaEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7791C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758469793;
	bh=SFJNBom5ZW//PyyUzPOyoNawNtEZPGlUdCjpUxZZpPE=;
	h=To:Subject:From:Date:From;
	b=EZZIwaEKzdlvam4lU0vDUlfrinW0Lbtukjzm30tXci1tOCzFwvsTwLCsDy17IXMET
	 h1T4ggz7D2L6bKtY43bouHQnNhBEfWaEtrGMcvF1bGa+XLUsdiC9XhrvCf2qOC4mQP
	 dTPkoVFrKAoD2ScGnZbmBbuHBUu3n31WmitfcRMa8KCNRwENIYmhomfp8lAQb9W/FN
	 rGwN8gdRGIUzsaNbJrAoiOJmMFxMOQw1XqQ9vYzKRPZm711LI8mJm3Ln1W1AK6hxx6
	 bbA609ZbBt3iiObMHwr2MjDhSh8i5Vpe0Dbgr+okhLvWdzM4ockN10rleZwmLAJQXV
	 ag7NP2cfIMKKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9300ECAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846979358.25582.1896010217276071984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02771baa3cefde98cfa2cb3c54d13ae72047c516710ff31efd8500c82bd58ab1
Date: Sun, 21 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758469793
