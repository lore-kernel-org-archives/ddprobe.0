Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEF42BD031
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757663994; cv=none; b=LO1+ZmNpQw1YSPefu/kGxPMx+kqhJAMC9yA3u4lFaLuHquFeETHeBYAX84ToxRvjn3A1iup0RdH3bk9yDe5WzkvfUJ7H+zdikuoHvkSpOcw86H6K3LBeDqhcxG5MVodhm97d5HujgmRBvmxh53bchBgnkOH+yJpxN2Di/vhqPP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757663994; c=relaxed/simple;
	bh=hfe9qzl+smk5PFXq0EqZAHMJilvRdTgTka49s8+FglU=;
	h=To:Subject:From:Message-Id:Date; b=k8gLiQU/urye6JjJy1eJgD3WdVzSuEurBiMg+M8aCFNDCBsrzYaKczz/HGfxG/PZr+hdHPY6PHqJhllZHqMidOKniMDIp0fqNethUdP39cMpNyrCjYOJcprEuutwFsgAD8EZws/zD2A+FCjfYaAIA5quXxasIlfPEKvG+CLfdGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG7UOFFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG7UOFFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06B4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757663993;
	bh=hfe9qzl+smk5PFXq0EqZAHMJilvRdTgTka49s8+FglU=;
	h=To:Subject:From:Date:From;
	b=vG7UOFFuOBApXp/TyaGXStnvYVHzjkwKQXur5mp+t9Im9zv4i4df1zFXRBNfawwCN
	 yKNN+BV2vOqlUfOHpvCS3Fdd+ffzw1IOinq5wal797jSadLHK6HYlFpmXUCu5Bh0YZ
	 XImgM6SzyTjbGNj/f8jQtaXKkLU72nrwDTAl4GmvQSHq/kjLawE2ipinC0nRD9TDln
	 OgaKAvT+bGC9YaI/vArgZ6StuaYv5553DdIZaaL/Yr85Z7KCQRNX3pEsHlTixs5k/Y
	 ljnQxZY18g7gmi8+fMRSIGGTwpRKL5IiHgD8R/jYV8HxsS4jVvz7T3CKti3dvNn53F
	 K3PjzXzeCsd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90168CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766399358.20454.12877414402310446198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8e839247d491e3af8a7cbf26d749fdf69ce9f4b7c51b585e80d3034e180f31
Date: Fri, 12 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757663993
