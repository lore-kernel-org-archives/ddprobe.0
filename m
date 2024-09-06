Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4144D27450
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725603954; cv=none; b=bFROXGe/4s559x8Pf0HfvoMON4f/Su33NjjxSugOzCAgkMVIPIwtm7wWVK+CmSAuecygWHhuk2BLDgRtGTXAKXOSI9JoRuY0D+fgsfZts7E6qHW8Y4z3NlB1AwLw32X+lvy4hC45ZD/zVclf9AnpwB5J22DjJPPwCWTVtwpfCsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725603954; c=relaxed/simple;
	bh=0xdfV5csoIgy5n0VKPGEBb5l09enl7KhC4VNGwsPLGQ=;
	h=To:Subject:From:Message-Id:Date; b=smM73ln7AYl8Mt5dMGEVga9lDa2nh/FdG/iChNKBAfx2ZA0/EnC5V5yWEy/EkPUnh5DDo94uXlM7qO7VA9siJA56Dol5Di9ZXIKkWabFUCGpsSwPe0CGbEYWYhqNeo2TpFmH5/LJLSpbAmU8GtTZrjAUSTgUWmBDq7kWNoA6o0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdogLviG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdogLviG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD31C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725603953;
	bh=0xdfV5csoIgy5n0VKPGEBb5l09enl7KhC4VNGwsPLGQ=;
	h=To:Subject:From:Date:From;
	b=BdogLviGwTFRDkIeORM/V7V8bMcy4xd+6QScEdzsWXSXdJU/mB1r92/enPJ7BuniL
	 tDB6Xqjnha2tMo5pXokmlctlQa6CaxspljhQGNBlqlrbAquN4AMOTMcS4j3Jlz0ro4
	 DmDs6og4J7E4GQ9HdFOCopnoRExKeoTW3RBcJcsW8FkK8u9Yn9wb/TMwB+SBKT+tM3
	 1MAE6heAuLb6pIteZD7SIK1PLPuqHgDBycs3T3uOc1u74Bwq9AJ0I/mk6KXCK1zTxH
	 cypZgj207SCUGoRdTOkHuP/kEsfEPVnxdz2cMsf2OHmOyDXaHS2k2VSmysKCT5PyNZ
	 FtAB28ahkPvzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A812ACE7AB6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172560395364.5105.14253800341022080086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae66769f4bb07cdb9ca89400a8a79105a955bc39e45e0f0482bfaf48069f5f7
Date: Fri, 06 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725603953
