Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E918460
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778895034; cv=none; b=iGtERifo/AFz7LXyoynzqW+NIkeiFwmG+0dnymHZ0QDGmy/N+M5Ad5w8ejDT8ATcCkWICvCqvRKGmPXDBECNi3wVZ+l1ba4JixSplcY0fnRd5qxD3FE4SvMMG2Qz2/yEqKaAHY4owvKmI9G5bxIHeZoptCbeBsPocSelez4XukY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778895034; c=relaxed/simple;
	bh=4cMCfg4fBehjDW26ij3xWMLPuEO2sdfjw33+Fuy4tlo=;
	h=To:Subject:From:Message-Id:Date; b=GhsB02DGQLJp0GbpkFgKCCNhNuQchlU1VZ9OOet1u8sirqkeF8Vp8J9vsFZltGgWml3eqAnzxY1MVbeBmrCPfVuyYNM0wmZvz2FPCWHe7NK0C6f7WD9XWHrO4gzLc/09YwA1b/a+cjF9Me/d78FwY3Qen3CEqchFljHDF/rJiKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RAKeloOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RAKeloOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F2EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778895033;
	bh=4cMCfg4fBehjDW26ij3xWMLPuEO2sdfjw33+Fuy4tlo=;
	h=To:Subject:From:Date:From;
	b=RAKeloOkaH0wK6a9OW/m8te1nIAo5jssQPIj9DCi8OazCuguFF3C40LLOL9s5cW31
	 IXkGstFjoWQO0e/gg+/ffEx1UVuJQGCSqLGRA8j3FYoanurKjTSGBWE1ERIJmCcZll
	 YkDEhpHqWM07uTOS8fm47QTBnARUOONDwURF73tWalEXED0uuOnj0zPyR377erxuTe
	 PPxiAsDeRoQNUkoEO8Fx9uOX++Df/2CIDfoARITbIqrqYA1NrP8nHsjXzLJ518tXyd
	 xdDKhDodOzNJYtfoJKyOPP1z8AGTlqSDAEZt/AxuGNg4KoSNPbl7ZZFMzygUb6k3W+
	 0/Ei16/mAb4GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1810CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889503370.18749.15149124658964710232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade76275b1045429d0ecf98997403b63aa375e217c2be032b52607c9010f4e03
Date: Sat, 16 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778895033
