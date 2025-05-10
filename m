Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4583B17D2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746853194; cv=none; b=YdnS9sBjb7epj5J8L1XJeO6eRnlYYilQrhaEYfpMTGpSIX/JLrC8YJF8R7Xpfp/Ro2m7FNu746lmjKc7uRgXLcf0X/FM4A08p2O1DfuOMTyBvkNKgg+YGY2NrOB4Xo7H8aa16NO+2kAPWsQQla1x45NWLLTBwQg7NM0jP4zrDBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746853194; c=relaxed/simple;
	bh=ukK7FQw9jJwmpATuXDynP9Ioaze/BcYsqhUknXdQ48Y=;
	h=To:Subject:From:Message-Id:Date; b=af7jAFawzZa2cZjPzw1n1N3XYdBVa9/7Fu2EUkDpa29vrVyScEwssp5+jbVLwmJPUcsHdgcNFW/GgCLd8X+ipBX1+r3O0RyTeAD7w1t1L/YrjC6fb9l4sJqT5lGA03vGrS2IjwLJu0KkFMWR2ZWluETRYYdf6GrptLyhAKPzudU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFQF+IJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFQF+IJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AB5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746853193;
	bh=ukK7FQw9jJwmpATuXDynP9Ioaze/BcYsqhUknXdQ48Y=;
	h=To:Subject:From:Date:From;
	b=lFQF+IJ4j1CtcvZZrFDCCWR3fzsgOhobxXJQyiqNBXYzhIZT1yf8QgXhQwdl1evGN
	 Ad0RkxPUC/cvlOW+gkYVhPHby3vYlEhkFxjLIv7mr50dKDEzZcDVwtjUus0L+GIsnn
	 qsDGM/CiJ/REzCmXz6LGBnh8nvZ5YY5G6WsYiYr6yk+QqKEXe83RWvnoX/yI/x40H0
	 Beh7e+I3xY/EtxlR8JJi+Fxzb0sU9X4eW0VQt5+2g3PFPSSTyOaq/gCIgWqLTK3SM5
	 JixD3Zll9H/+yuEcuSDXT56rXXMPy0GSDcMozS5OOoFiSqZ0HgjisylmBRoFTCSS7U
	 pDLOEX/KwzKkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFDC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685319359.30979.8045084267471230312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5231de9fb6d557e026108367e91228365ac5d056d32b75e77763c556627dfb8a
Date: Sat, 10 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746853193
