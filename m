Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D15051E51FA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750720793; cv=none; b=cSlRA9G8VJH2coJO0OTmbCUBCQW/LB5oBE2vmWLImbaLP8D+VhUnS//ha6vPfaIqhgV88bCkViYpryqR1ju0trgRW6TDLZ4WzjGKZJ005FxA+r1LNfjFNs5hlMf1tCiA51Xk58GcNiQLmmJsJjQCNjW7p6HZs8Z6leC5+GaE4Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750720793; c=relaxed/simple;
	bh=h49wKxl9KyLJq2b4EmiKFdkqtBV75aNVWuwDoLbY7Og=;
	h=To:Subject:From:Message-Id:Date; b=TPsI8sTD9q/Lur8rxD1bVlG1IV807oHMIvdGHXR+P4znr2bi0L4s67vsm/Yw7sn4mhARU4h5raUQ+3X+OzumpzHB0tLtece2UFMk3A1/1b4g5ybIdJQHveWWLyDKjAtZKVlfnGKL4hZyH1aSpZOWrqLb73qpIloOr8g/FZTAXxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MuLG0f3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MuLG0f3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A9DC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750720793;
	bh=h49wKxl9KyLJq2b4EmiKFdkqtBV75aNVWuwDoLbY7Og=;
	h=To:Subject:From:Date:From;
	b=MuLG0f3rnE9fWFgKCx4fBHKAXBA0eJHX19kLti7y9Iv0HguYU8yI7ATXjn0Aejl1n
	 vgVu7C3A1QxKM2ixZHiq2uFMn9Hsf437uaeR3tirWUJ5W+MnH0+FAuaI9N2feGSALn
	 MPlDE+7rN/i/vvxgZax3Fr7UDWz+NttM3su3deb6/Oxi4VydghJw5iIvlcf4cRhq38
	 rXdXNmWFiwwFoN6IONTIikTOq63PYqQIHreRQyRCzPXZRRl87kTKi54L6SUtXoYgoB
	 k7B8mb3yl/eNdgab/ole2R/IsjJ4f0WQNUZhLrxRXxAF3GtNZR98NdMAyMS8RSOInT
	 H7JipurhACAHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94310C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072079357.14606.13363645967756841918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5332c158627a9441f56d4f05ed661d054bbdcacd7efc3bf8eadef93d40a2d5ec
Date: Mon, 23 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750720793
