Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3CB3043CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781226394; cv=none; b=UDdgFsEj8NHMHugq2HuXQE2jLPQvmwTs+0bvqM7ceFjiEDEAaC3L9M2OUfCMOufOoKKA5pXsgsQR1x7U3Xx7bdhdNLexOKxuyfPOvuYkDym7ZIqQO/9QHYHl2UKG6D6aSomrwaoXzhkXI/A4M3A9HfuaxDSUgH/EwW7UEUDnF20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781226394; c=relaxed/simple;
	bh=br4TRF2xGVWNwEleGrKWfnFUK6AqjZ5GujKSKlCyn84=;
	h=To:Subject:From:Message-Id:Date; b=RkKG7EaGrGxPjs1AOaoYUhtVMKjNIwA2u3Pe5Ajx9NU0Kjpogtb4Sq6t7461d9kwZMssreyV//qwgaf/a9HFjiKCTt5sKPdNA/apuDKq1TEqHXf7dxjREfRHjDQJ4RkaYQLgfEcOHOpUoYSTEajVsXtLRVO9hOtrbTqamk5Th/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4Z6Ms4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4Z6Ms4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F6CC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781226393;
	bh=br4TRF2xGVWNwEleGrKWfnFUK6AqjZ5GujKSKlCyn84=;
	h=To:Subject:From:Date:From;
	b=D4Z6Ms4Kxl9hnKTBDQ3NiF2FxT4i7KFTWXdWgijeQATaoHqmzx/9pTdANgPpEKGSa
	 YMOALAx+yyEnHtBmbGEwUbBe22I+HTGdpShEkn6PEWRn53pN1gnwyOXKRncWEquTWG
	 kQgaLF30E3qvZ9kqCOgbh315vtHNUgixe9bbX6qXhB1wE5zXclOfgOceG3QmUbYkpP
	 67JOExgKHzh2/ZLVlGnvuwUOZce6NXoeJCVeZt39exWlALbFYXnCOSzdtwNKPGRRsL
	 qm7iF5QjxTTA+a2/7pZwWOWCDSOIIZXqj11Ivy2synzrTX0wfsD62YQaRoxrHnuZEm
	 mGhy2MQoM8PKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26DCD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122639368.26401.4777812838189877010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9f06550b3349db087def764aa9c2c717e6ac7929c2a7546fe537bc3ddb73a90
Date: Fri, 12 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781226393
