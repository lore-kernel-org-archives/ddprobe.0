Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D422AD37
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764281574; cv=none; b=tyzZfvjCoL2A4X/9vfeEkUI96OmjGdXmRes2l1cXTRVPBngmsvA2NEjC3150S+JVpXlIwOdavRcE4hsKBuKZavL45tTGO5qm4KIZPkAXhkZECfJ77aULOhoDMFWiazpbl4DXqKX2Gx9QB7nYBlHcpW9GaLD0/0594B5O86Tw2X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764281574; c=relaxed/simple;
	bh=F5E9hUNSFJ2AXUZIBKBlEsRbngRKYks13baM5rlNmn4=;
	h=To:Subject:From:Message-Id:Date; b=t4fPoGYZnAkjEBL/jIFvt4A/5qAr38LuuowYmKnK2OTT2reYUH75OFtO2l0+vN7qYqSDMMC1MTpy92mCLqPY2YRTSc7buxUbNHQZrICnOMbargpekg/VEDdKHzkgWm18WChbUWD8L7iWuOXE4ZAlfnkRMHQRt2H5cL0Xl4D6na0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ9HcvL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ9HcvL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3964C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764281573;
	bh=F5E9hUNSFJ2AXUZIBKBlEsRbngRKYks13baM5rlNmn4=;
	h=To:Subject:From:Date:From;
	b=rJ9HcvL/TXoUq1IINgvaST2UaA5E4FtBzhE4spREXu6hblu+lP00s1wUJpg/Wngfn
	 ItjYnteF7uyfoBrC2nM0/LoHr0vazV2mwxOVRonTmxb6awRaSmHjoE1r0BRGnQ388g
	 fsq46zFB/ioIWAeh+1duyjG8PJLU4pwrz6sRbkWaX60sQ31EeUbJm8LQLQCQtIllKm
	 xHufRciysILTuAOR2I0caA3eGYOn0i4HHzcYUbFPumI+t6EGI7s3eSPdZoQeluQO1C
	 ZJONoC7d7xiM/OAVxa2TmB1X2HeQid+kUwsLZYKS1q872Ie4VIPhY12DqZXlPUgK5g
	 NlZ0pnrJBI+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E10D111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428157358.25849.13827852508832313373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680551e995e7f2810df57f4fd4ee4b9ee9df6dbda5848750eb77cf595dea1f5e
Date: Thu, 27 Nov 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764281573
