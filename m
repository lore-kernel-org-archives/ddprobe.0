Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7806344C7C
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718232503; cv=none; b=ZhnwNyYpcQrKGkCHG4J3tEC5hQrKr5SIVTLYy1MaToULogAfeJ5bUsSuMY4PN/EPvWaFyVi3cJXNqjugfH0p+WbT6GLsfeMRKkHnypk7xad8vsD5lGII5iS897yblpT720ztUC/YKpH1bV+1JdM/5kxw9ftJXBPV3A228dGUjQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718232503; c=relaxed/simple;
	bh=m6PRPkj5g1rxiPCxvKmN33aJ6W74z4oLmeSkVpiqibA=;
	h=To:Subject:From:Message-Id:Date; b=BDz7LgmYZGjuBOjio96yqdUY+oEkCTlCwQGwZOrec5LsTIhRG/5r6TrV+liBFN3NvVzb55et+wEcZxgGwYS4sT/TRoJNn0GXRbG+w1vVImvVG3jh3XKHCsHAylaSZ2+ZwC0lmRHbgYl8jVOAFw3SWy9hJKRfyEtwjUfPjt8XBiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9U/eYsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9U/eYsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFD4C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718232502;
	bh=m6PRPkj5g1rxiPCxvKmN33aJ6W74z4oLmeSkVpiqibA=;
	h=To:Subject:From:Date:From;
	b=k9U/eYsCHD/OU30pOHI9nLq1M44K7WcHQfLZYO28ILf9wY61D9IC/ShAR+u0Jpts2
	 2pvRRzSAIMp9p+9SskStonoDcFYIr5F2hprTF8ZFjqKUpbfxtbszRzOPyEjfFTVO0k
	 EVt9TcKc8c6pTWIyfwTD4EQM02HlXU/Z/aElnGQd7sul326U6Es6sez0UT269wD+7m
	 jlBluV3DM9pXXaFHnyb0etxfhnae3UYK3OJOho2aMpDi5TVU/mF7Ogkoa/T5jxnWCt
	 IuVLUfQA/z7FrTvPUrpT/7ocl833H621i4PcPCE8sOylI5tMl3UehuBWQidNIFcSMc
	 EceVhxi+M1Qmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3895C27C75
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 22:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823250278.6207.5345562206030516846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047cc00fc1099423353a79fe2a8e297fb4dc4442365c93e1b817d066711c453a
Date: Wed, 12 Jun 2024 22:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718232502
