Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AF83B4EA4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785791434; cv=none; b=rfPQY7JoNq0aFRKBNKR9um6tGI6VfVQw9bNxUF3PSP3rDiZB8gvSrYPAYz2wE67N30QCpzsnq4+qNim2s2vvbJh1jCmK2LT8v0IFfQl1VYrcfuy37Xq8UDQcGZHMmp7+g275QAkEXRzcILUuro6c4ttA7QStd+oZLVc2EKKsOC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785791434; c=relaxed/simple;
	bh=TDcm6lnDKtrTI+5EZDq0LSEvt+WhVM8cju3rf66Eurs=;
	h=To:Subject:From:Message-Id:Date; b=Oq7zRAaf2JMMiLF2goi5Vp23EusHCmkIu6tWKnVWrJTzQF+i5SRGS3QgvDLw4m7gLQOE+X4fUaqbpLs+qA0OW5g+je9vnkctMU+HRICc5nBnIJwvEWKstM2U7q7S08meV2jHOBNvf4hjQCkxZdAwMSFrBuWUShLOY9PGlA/czRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDm4Xker; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDm4Xker"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D788CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785791433;
	bh=TDcm6lnDKtrTI+5EZDq0LSEvt+WhVM8cju3rf66Eurs=;
	h=To:Subject:From:Date:From;
	b=oDm4XkervUAw7t3aBHG29EuNZkHTlzlDoiKxPd/zZMxtSTScFhu+SmXCRmUyWjKi4
	 UdaTy4wmG4XPReygCks5qSGewCo/WcI4W6BBeCLFCdRSs6As1hYNi1uk8/YnoVPYpa
	 YuC1tnVEzMD4eYO0ftEJHglP4IUilKdmLgHy87/syMmX29eg50nER0xpxCyZWmo0Ky
	 3Zmc3qcWe4IpEjEOU+hvO/bdO/i01f8AsT2LWbbzS2AFxCdeosMaCsX/5vvOPNSaZL
	 ZQAzfTWazcZHK421m9rSxzpa3jpZ2/hacdsW2DWCTeZd92sCONc0VEx6BbqPdzMtSa
	 RdgK9piwZf1Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B363BC55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579143369.15824.10438983139213483777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f01cd297dcbee148814dc61b16801f4ac230cbb61eb293d7f4b0c7f3c0519e
Date: Mon, 03 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785791433
