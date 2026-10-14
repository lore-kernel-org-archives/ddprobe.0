Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F2C64D2ECE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791983434; cv=none; b=sSN+oMnMky3EcgIUo34mqKYa/lkfWLQ8CnorVNCGDHhYTMFoiS0HBCbUMS8TOJVCEJthQQEIhWx/qJum8oW5p32P8qCyM3XtlD5Raihzan/cioZWI6fRPdL+RSjG1h+Jyyl5SK9PaFaopVD1PmFC6RUNQOMSqPSdmXbGn78MoMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791983434; c=relaxed/simple;
	bh=9mzE43g7tbaFIqo7FzVDIEIKOw9IPVIi1taGswWn4Ys=;
	h=To:Subject:From:Message-Id:Date; b=qRRa4jW6ba7n4AWGtpgThy9UB/SGQEBlSp09Po/lclAFlO/OLl5ah1bfCaHTea6nq/pAFtuqHJPcxWdX73D/HtY8ivUd6I/L0lMawtfDA4FI8UgThFZzGNQXx516Nh45sHYFzbO2UBIiNAXfBDqDLLS/6s49MjDDLw1jXZudMGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRjOn6YM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRjOn6YM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F67C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791983433;
	bh=9mzE43g7tbaFIqo7FzVDIEIKOw9IPVIi1taGswWn4Ys=;
	h=To:Subject:From:Date:From;
	b=LRjOn6YMu/+X3q4k71/dOomKbexhe2BcWHDsJ1N3yVTevriOn4QTROXDxQMQdMDDq
	 ikWF5TY/E0as5TjTWJMgl+eWK71/zVSoQVsDyT8pfTh0lzUcLeIDr3VKsXgYijoImq
	 MdmqZ+1OyEDzSyalOt3m6veQGbzfJQSjTTCymGfn+dVRj/A7/H4fzCmnPfmayA4wNo
	 fzHVtSx1Hp3/HDEoPEDNRPhw/dwMdyo4nzB2yAehyRxnomgV4/IzE0fFdYXJ/HT6HG
	 zbwy3yA8FE/hARVZgXEMORdh++Qe1si1SRoLHmnIDZ7X6P6bQVKbDiGffrrOj+E5Vt
	 6V1HW6wXWfwDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38F3CC6B2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198343372.20254.11449877782552138505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3905216a32fe91c8bc22993cce617ddc421df5241a2428cf01848ddbb87666
Date: Wed, 14 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791983433
