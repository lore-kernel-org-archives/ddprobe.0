Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4262B9D4
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728523554; cv=none; b=HQ1mHDMlIkNamLSRRVosjD9mggiq9iIbW9cW9sdg1S9lrh6Mh+yr7noMvqKaFvnAe14UJl7B6V4hWGtuKGS3kkRilOranqitGSLTeXiPnc8iQnRuOiGG/HtWULSh7qqfDMnMm0AzLZEJUqbFYyZzqkkAdUCrBovp1t8k+fM0s3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728523554; c=relaxed/simple;
	bh=BnI24Ep0EJq81aOoSKeTJGfA+iUljgR3mT+0IAVl27U=;
	h=To:Subject:From:Message-Id:Date; b=hFlLDSxYyhVj2WzLM9c2U4ttT39BSRbJ4XpWPPDXz8QKAO02WVEu5m6X1Nq3sdN0irCbMn7DnQj0MbwmuOIEIHwPKsmP7DArQmyQnP4y2eh5aRQXapmbCGH29HsMMs1LJBmR92ou7js5nXcm69kIq0v8gG24/+gOuYkmlD0SyXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RW936ZTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RW936ZTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37A0C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728523553;
	bh=BnI24Ep0EJq81aOoSKeTJGfA+iUljgR3mT+0IAVl27U=;
	h=To:Subject:From:Date:From;
	b=RW936ZTzZhXtPfN35hhledZQ/+Ia7HcNsM0Poh/UoxKjCd/r4Tufh30CHGTc25Up1
	 fmX+LAxeRKlQxSz+hrOQNrWWRJWHOroA+4lO1QBxhZ/KCQ+/Bav1CudwCAk9AFgZnc
	 O0p1ESg2Lh8knKkCn+Lq9ZZKPb1CLPkCqGgayBYd/O1mDsE10nUGZ+ZId8k8C/pHo+
	 Hwuy7qBrlOexk4sDYOyMfq6qcDQ3tPtt9qAPFoMp5z39fwKnp3dERWFGbzVYrap7nd
	 HfjS5jJIFEYlygXnX3IqL+dTJJccDbeEXRj45mQoNeczInBxkufIfLZBLjZ5GwA10c
	 BapTZ0RmZxrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE892CEDDAA
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852355370.5909.17570479914034359225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc60eeff3b26b5e8665c6b1046504a1d4b2598ee8af5143e3db2c6dd1c34f1e1
Date: Thu, 10 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728523553
