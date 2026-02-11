Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D6935D611
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803094; cv=none; b=pmSTEDdJc6eYudU3TABHBwgmr1IwRMp8ATLFj30goflImADW25DIEfUKcE725+j9r81oflRgyM1zkmvZCzeq6yuQNZ9nAeDipkd0kexBM1akTqE39ENyPlu9unbXBc8yTvNDISqEMsY4IXkPqLFQtGqdoR7Hd4vAVPmHl0U3bD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803094; c=relaxed/simple;
	bh=vSsO3Q8UTUv72H6xUj2/LnuFHRU9PNXc15gI7kSoQAc=;
	h=To:Subject:From:Message-Id:Date; b=GNj0+RumqDJNmON3PUD5lOy2C/SWtw1AALIRxvLWHXw5OFRI4bn5kS/ojC4kcJyyTTDUwFU14c5ZCUSPkxnCCayYPkryUjwoI6ZvwwrZz4x548UCO48JgR/ZvGaq0AqhPSAkp9i+4xVlyoLlAuNpRaVs+ru+lsH8UXO/8f024n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDCYqFXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDCYqFXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1861DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770803094;
	bh=vSsO3Q8UTUv72H6xUj2/LnuFHRU9PNXc15gI7kSoQAc=;
	h=To:Subject:From:Date:From;
	b=fDCYqFXkrSL20qRws07xl2FUzBkZTz4M8rmTxPrB+AT1vZsCDAENWBGUVw+9FRktj
	 OJodpnEgoow2Q3qCUNJBIIbFibcZjrGUMQs5c9+BYGUpPC/CjbxmqtAjrj9x368lsV
	 xpUqjxLhDNeS1ANtgs44BMxwjM4HhaN2HSsdBMnta+8k/n+WoAh73e7MVE755xi5h7
	 fmjamMBjE3y/snfhbNoeel79Z+St0M+8Sdusnn7UHcs0qOOIn/CZcodnboN7p5w+6A
	 3kUo6VE/RGV7PqaOAfG4x6WNr/b4A07McCMTbFrGrE6UwatW+/Qkh+TUWFdlERYpa4
	 jy3OyFeWv1bLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E34DEEB5954
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177080309390.26121.2601871052655762267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc234e2af6d99e65d6ed6f7c691267218c5530f280a4f220a2c6609c00634d82
Date: Wed, 11 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770803093
