Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CEA1E5B9E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767547434; cv=none; b=NSmKHfoPj5mpsRDS2CYW+9WLeuJT9p8ytISFlSanJDK9hznPinmHVziifhU3QbuQdmqRE0pmO51GpgcNfZS69A1QCJICeqE96kjTUdAWe4xGQjQ2J5MB/OAakTR4xdZz2VfcwICNUEFSPVik4KxxRNVWhbU59Hk7km81eFuhvjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767547434; c=relaxed/simple;
	bh=7oiTXIkp2AgUCMC9dvrYMT4f9OqgqJy35+KFpG6fUVM=;
	h=To:Subject:From:Message-Id:Date; b=RU7qNmtFR7CNwfny9DNC4N1OCR9HUp9WjTk5DZyOrHsIZ8uaIFofKFU0oDujwQrl/NaX5iweJ0k3AF60C0Kg9QbSwZH76JJBk+6/Q1KtL3+sS/HT2qbvn+gfexdea04K1pEXyKVSgDVjXTlmARtvcJs6LQUj6LpO0vpKdAbEeXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MldXzSLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MldXzSLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767547433;
	bh=7oiTXIkp2AgUCMC9dvrYMT4f9OqgqJy35+KFpG6fUVM=;
	h=To:Subject:From:Date:From;
	b=MldXzSLfLR80U1E4lOBz2QHxpS6qdXx1ao1wCBPMkbtERd0EDkkjYVHmUBFlwj2Ej
	 ZCJnywxyeznNGjIqX0hIUHD2kuDF/g/21Y6M79tA2S1MGBolEzsDxNLVgcOwcc0a9R
	 BO9fjZbAd6AotiTDsZu3vww9qO2UbinUmzmS/+8o1vLvYVwKg1hEZMsnfzgXZ9XQb9
	 2e17MC3Hs0bzkWQexKXXNbbKPMbLbljVipFij5LPC3vAY/ihjJ58/TC1O4TRN9MCj4
	 7NwzznPf7g0X4ykcqtvkZfDHre/huhDQXqdQIqVBSfMHhf1dlSTBTcd5KIJb88bPzn
	 YKFUsJIoiogjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E06DC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754743357.29509.135544704900057886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2baf9e45c28ac99eb1b3a6aaee4485ee3041cd2c55addc3cb1cf45539f9eeb42
Date: Sun, 04 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767547433
