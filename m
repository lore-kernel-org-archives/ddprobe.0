Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A0173
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766338434; cv=none; b=RdmfTctY+ZVUF17bmNQaiiSEuQslQmJ0DOqyS8qzccz0VQ97TtwWE4xx6W0V6xrIg6bDpiEKeqYxBof/iIdfVWivCAv4XzkUdiRlAu9DwGMci83fmnuNPDNBm2dT+rkPFSeC7t91cfjko+67taQ7iO/rPr5HRCX6PP6KO8U3EJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766338434; c=relaxed/simple;
	bh=aMtp3nit7LJkRS6zIEpl7achDSG03BpxMzAu0kLyb5I=;
	h=To:Subject:From:Message-Id:Date; b=KXigwbytULictGyduwQRPJHVNXhrxXaE/zmGq/Qa3PfICQGm5D5A9ypeC14nbm8MiPO49omghmxJN6ot73Ejsb2kb4efwGDa5tAxWaWUGbMRqgD0Lbm4iviUZNQsVTpi12zPhxOhklEBEoGwtElnH0/mxY3kZ6uHojUYZyqIDHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRsrYwOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRsrYwOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27C8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766338433;
	bh=aMtp3nit7LJkRS6zIEpl7achDSG03BpxMzAu0kLyb5I=;
	h=To:Subject:From:Date:From;
	b=jRsrYwOK75lo2TGYmCIRXKCK7+66pNrQH4VsTNWv/uX8zZmNZpOCDLVdNJXELuhUt
	 6vyOZM3oObE9AOYVS6MH7m209Rz6EEKLxALdWf82+b3gC9yhBrp13RLYypNlARmGqN
	 dOODphthbSTPcvKKC/zqOvzA6qr/PBYJ41Mbo2FjleXfaIvOThsMbJMFseQA4Yl17z
	 8Z8LBHLrUlplRCpAZrGcRLCzxvEACzhf3w3kpJr4CGUZ4Rsiwli8I/sGdU2Xk1MoUa
	 8Y26tGJtWIV4B2dGjjgSAFq8hRKkd7dMRuhCIyCD3+7eSv3Rc/hryAbxalqkch2p74
	 tGV9EQED1K2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90732E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633843358.14921.5963810746439534556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc8b78acd29bc8c021b63322095d486bceab266d9f2cb775625366f6ed0f0c3c
Date: Sun, 21 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766338433
