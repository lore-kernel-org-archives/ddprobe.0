Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1926338F636
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780906474; cv=none; b=tYpXdYR0rETQjutafsluD7tk7En2l8cZ6GQ2WNyXp2ES06MVEvT16R/QRsrpFffmosRCVG7ehlIqmlVyn3C2PDJ9SowvzCN33NM8M4rKtCfElW2juNSerZfLY+MtW1aJu6KOJe7hG0fT7Uq81rbo54QUnT/RjopnVdMkP6IuDxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780906474; c=relaxed/simple;
	bh=vT2RK4butRW+T9qmcARRcMJK8DexlD9hEe4wMYZyPgk=;
	h=To:Subject:From:Message-Id:Date; b=GYS9CLUbusIlUsisjQhSxM3zgiHiMWjWchvzulDMiaJ+s7Te3ZMctWqS1wOFyAQWFMJmJtE2UEs/8uCGA5USBBdXaw+dc1AjfRov1sJIC1BnVK7c1Siv21VVtkLcoWsdG+pQoXQR+fz23+suIMLgYzWejPLakzqOWMpOabarVSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra7ZE79y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra7ZE79y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F97C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780906473;
	bh=vT2RK4butRW+T9qmcARRcMJK8DexlD9hEe4wMYZyPgk=;
	h=To:Subject:From:Date:From;
	b=ra7ZE79y/KFd0z+NJ8HRjxepQab4WgTOMfcFRj/70bEDbhkCsh4OwET143ssLh7ck
	 EL92X/TUysL6yh3xLeiw/GW58+TOtEMpB7X+2XSAaolnXYTksb75I1W0DPjHq46pzq
	 0A5cPJ0rLPik9cUQKOSV38Fcxo3K/F07v2pnhYAmj3X1ZAQRIu5VYQ3Q2j4i6CgwtC
	 prkbZ/5JMEZVka+th30jGWDAOqWSKfly5oJFn1oR2p99B4nxUpGqPiOSIaRNKvX2GP
	 38Z3QcUSkbpIMHt6fZFHnRk9UidnQP6GQMRwocwiDuOTxvORz8eMHzVW2k8619jHWA
	 GtOzpOqgnWqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADCCD8C8E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090647368.22130.14468207232135368625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6902cd307b06d0620f8b9346cca97bb0627aed44e5e690f08a603dbb3c2caf50
Date: Mon, 08 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780906473
