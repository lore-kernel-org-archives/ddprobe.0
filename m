Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E713EBF0D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769453634; cv=none; b=sn3k7EY8quudJQUQIufu5Z93WgaXqT2ov6mUUTXcN40D3EYKKkMZOGWoZWXzCTdmHVfestmi60VCmGJx4ty3r1Y3/R9O/5GA+Kzp7dmB0+VFzMs/GhCUb8YcR7NzLl/bzvwoQIpW3QJIx+HYFQmSDfyPvXUtmEFGhvZJ7iPp6W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769453634; c=relaxed/simple;
	bh=Csksec0koxDkAJRDJ0C849ZwjaIyjf02ZBSmtqWhUaM=;
	h=To:Subject:From:Message-Id:Date; b=QE8FWPrHY3ydzwh2/UVqpOtfSVrW9c1lK2SydybGhnk7HhKrpYxl30pZtrXsrILjFt0uOr6XjwcSCWTQLsnlNLdesDKY4DyNzH7YpPCDiOApvU0YkaOs2wPj8r72wC61wZ6BY9tmWvtayvboZ2JM0JcuJ2rhESu9o0iGTeBH14M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPYjOkLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPYjOkLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1181C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769453633;
	bh=Csksec0koxDkAJRDJ0C849ZwjaIyjf02ZBSmtqWhUaM=;
	h=To:Subject:From:Date:From;
	b=XPYjOkLQ1B19MQpBtvAO8SwQ4Wu+E0VL1J4xmWRism+g+bQm5zFpMxM2PpFT+N3oH
	 qy7aEphwWE3PpDipIq7RBO8jL2UWEPlf+Zp3HrjEVdz9FfHj+b4eVsRlT8p/kqgTlJ
	 HDzHgxXAiUPEMeVsNhz2EJ7HRJvvwPf/q4UfwMif5Wgf+r/ziLRXGO9up5K65Jckvj
	 IYtI5aPHOjC75UanwBf12c9BEj0MuGZh++tmblX7c5jl5jWdByxrpOFlWqCIRgvN9s
	 YJf9DRaJAhfgd/jQdjSVUOZh4AdejaHcQYL+cGTnQf5cQ2QRqMEYWMU37mxT0m5gGK
	 dmhTscdzwFGFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA0D19502
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945363358.10004.15068073502141781728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62da8943b424db8353701a543f6725c56a7892783aa6de2e98140c97dc2c78c6
Date: Mon, 26 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769453633
