Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2899A1FC0F3
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755461994; cv=none; b=LhSCdvld8HeZzyxImhSd89Rw+6EeL1DMohn6KIQA7TU/blyiSRpGPJPQp+dpavZHto3qPstAHZYIvTsRvV0AdehQNOaTDRolv3y9kdFryIV+U1MiyWEDw3pXAaJFP6i/JA869Ccn5aF8Lc6cmbRNZB+Th4LU/CF5FtVqIX9bovI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755461994; c=relaxed/simple;
	bh=rNFNwa9Vf4Ia7KWvncYepv0Dvxqv/bk5tPTUFO5Ys5A=;
	h=To:Subject:From:Message-Id:Date; b=WXIUjSQNiqMHc30KciSFykg0CbRBTvrJAcJo64VbPkHnCdAXT87yy3Jky7Z3t1RVEhlsHlrKo8QhqEbcrnHF6MXOj+5YqpJChqFurbSumoEdKhKBFXlxSDqJa3255lYr/jDK43UcO7taPfU3bhL1YGzUEri6d4lJ2G/7yuZqdDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4IoZm+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4IoZm+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF6EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755461993;
	bh=rNFNwa9Vf4Ia7KWvncYepv0Dvxqv/bk5tPTUFO5Ys5A=;
	h=To:Subject:From:Date:From;
	b=f4IoZm+GEA82WSX/U40waFoML2509YI2Yt5HG20744MgmL2e7x+QxMcGy5z9E5fec
	 HH7y8Dfbpirc/x70tjQx/INSnMz946xltkeXPLt8bDRVbh3x7TQmlXlEDtejAwTGMF
	 yuObB+ae86XNIOhuoBO4X07AMVsXU/WFgVIO9/TnhJ4qyfHwZCa5XY7bjNAIXnIc2l
	 +bnxCTDXQtIfYD/HN+AN1axzAfyv5tVf83mlH7XDOwh2t6kuKzL8lbe/WdlySYBgEj
	 /ceiMRrhnX6K5I2TjYoM33o6HHO48sxixhv9fjnMzTWLz/ciGkFHBIQp1kBbLtkFXu
	 Yc//Mf4FSSlzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E36ECA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546199357.29853.6581518135690385252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d66dca9fb409666d5b27fa1a395097e9087703f5ce334753dd459ac3dfbd11c5
Date: Sun, 17 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755461993
