Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0B02BB1D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777216654; cv=none; b=rBmrFAajb3zHqM/k64O8fUGyBp8yzU2xHfsRxbXQIic9oJHLEA5HJCxBJ8d/JFu5CjgZUrl412JyO+V1fzDThHScUmiETbmp76EI3EwOxvVRigtBM+M3IbcerOyGecSF0PEOg0Mb/7FibypH1+OlsZ2YAMOjG0NPsKaIabTSGNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777216654; c=relaxed/simple;
	bh=TUSOIA/QIm6xCU/fyuFmCJNUUs807+XDUkuQy4aITcY=;
	h=To:Subject:From:Message-Id:Date; b=mwRzUM8khQ8Mkndph76ZYKQr4IvDmBYWCnMdB+PGHd3C3dlKf7veCkAyuHzR0RA3u9SkEZ5zSYwehM7SvH6YpLeeFPmF4EJf3v5n51NQBewFATY2Mu5ryo0vZszUkJvux83WFN23qQoVqM7a3aa8Fkm2XJU9JeQF3huR8E/w7wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOkEpVPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOkEpVPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7973C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777216653;
	bh=TUSOIA/QIm6xCU/fyuFmCJNUUs807+XDUkuQy4aITcY=;
	h=To:Subject:From:Date:From;
	b=qOkEpVPmbyrwcGv4XjHz5RGUJKx9s5DLupikrpTgq6i9jBaNuAIkNV+S2TbNevU8M
	 65uRafP5uvPe49W1j28KRGSEq3pk7rv1dtNF4ISF9//bEb4Qz/pCQWum0dSYdAtV4D
	 KLfW69bLp/aXVMaCF+wq1P6MvNAwYYoUgPM6nschmdlAP2rFgFDntwprCnllcoAAFt
	 nu8Q/XrULbp3KrfkuYsVzCpAJ5yhVJalqi/eThR/Tu6I483nFCJ9lqRq2P+VM4HaB0
	 8TF0BuN87IbW1PoPUHvf2jRpp2WRSct0xUmpv8kbKdipmSSCWv78yWzIQTOeHqD+OF
	 tuuvfcaJ48wGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA9FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721665368.20703.6167765853893751454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104130bd994cbc0b258d87cbd72a55ba190cd834172ac1b859c293d3a3d1a231
Date: Sun, 26 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777216653
