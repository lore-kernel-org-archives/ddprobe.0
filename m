Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE611624C0
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754019594; cv=none; b=bUJMnjqcRrXg5JH8XLVzv61rCBn84w+WRBbGz1I/me0j0yf/AUB//skK8NpSVt7ENEG80ej9OODo/lJqFRjLqYlmAmNihg4lOPSMsCzqWijz5+WvfVlCmD/MtMZ5Z830uSZhqphHMnFWeZAXLe9nmrLVT/kXBiKBrvxm4iViPoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754019594; c=relaxed/simple;
	bh=8WIljqJtAMLc1itickuYpJHe+TZEdo2n1+oKzOxZu7M=;
	h=To:Subject:From:Message-Id:Date; b=PgsyFqaUrMyPLTNMLN+q7xefOQivpyx4TXnRtpeGgf0r2j+aF22bW9S48uNG82hVVVRgCEfDA1anZobXk/Nx/nhH3ucuqSWH37jA/6s5dG06Gpj+5WScGaRUIj59tkaA63/lkHtk4eS9+TkFSa9dMEZF8bwxYme8yJ4cJZYkVBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ow6h1lrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow6h1lrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754019593;
	bh=8WIljqJtAMLc1itickuYpJHe+TZEdo2n1+oKzOxZu7M=;
	h=To:Subject:From:Date:From;
	b=ow6h1lrTBTvDPEBTMnOYe8jMbzKfRrZFHDm1dcDPzUwRdA0tvej02rW/daJQ1HKL4
	 SbewCa+kt9YWb+inBn1iXKivIEi2No/9FJP/Fe/xKOjo+bF6IznpeAJO7NEHi4B1ea
	 Bb6GtoLGqWOWjWndd4xgLCo4TvFcxQWOsycCo7UsoSPGSToASWjPuT/Qxpm4CNmgXL
	 pY7WAP58KCtXNiffW4GgYju87BgXqdXPUCeUyoeFT9rIToWBgcOSfN2vFxLpRm0jhY
	 mX5pDB+ZPQpt37vTwaHy1gPnluCpvGxRhAx8gxajXTIWbWXBR+fxUUBP4KbQ9RkqCs
	 X2QDamFh6TIbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92319C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401959357.10391.11439158906544615024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d2a97f0833000e9bd1b4b966843ae4ac7fce68fca64b30cdf91dd0cc9ca674
Date: Fri, 01 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754019593
