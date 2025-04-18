Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8A31DA21
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744952394; cv=none; b=rHgwiIijSxVE7EJCn2A29kGIyBeujaEx2vWLhkPYWotJfPHT/qFm0L+kKPjbyxaVjwT9+7V70iH73MvwTNpNyy9WSOxX1RW19QTc6xEM1cU2FeybGrrZBx8yJKZGH5wDUxgtEOZTYDCgkvDTXfpfTlHmzpeFEoOj007zMCcsAfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744952394; c=relaxed/simple;
	bh=8EoJJsOKQoqmsElOjbs9rygjYuk3DlhPkAD90H7MqF8=;
	h=To:Subject:From:Message-Id:Date; b=YjgHVqIA9Wfzh4gaJj8y5ChGWaMAfdcBm54GRfcXiESysXnXPK14PFrXWBSOcfbXM58K6s9McNsNzg8LJ+d/CGVYimDc6qFEEQ8x35TgIUof9MCAOTZ0KbtWDLNhQplfoNxD+h1JX+NNcX2zDfxE/PssDm0S31jBwN+jPpGs9aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zsrml8I0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zsrml8I0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC18AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744952393;
	bh=8EoJJsOKQoqmsElOjbs9rygjYuk3DlhPkAD90H7MqF8=;
	h=To:Subject:From:Date:From;
	b=Zsrml8I0RPJwXapJvFMGR94SdHJ/fG8UFtICoAdCFKb1H7ta8LeWNvm7HfTLrA/iH
	 Jlc1spgtku68Y+xhnj0AqwX1dMIh0RxcWtA8yKJwTN0bRMkABXuztEY3i7UIBswS2C
	 GeZcOE8np1QPFH4EFKPqsAAXWGm6YnFZ9vG+WFtMp68SByitKMSM9iHuh5kefz87XJ
	 A7nHFNpF7+415tzc+iBc7AKEnK4KyX8lYKHdlSB4/LOT+ZQ1k0Q4OxR7kGG5NhlGDa
	 u8rV/NAzHJmvO5ueI7LNj6CqIf8yKfeZbFZQxBJefOsMskNIzLNqzJDE3NDwCMANR3
	 7uDcN6xGM149A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C8FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495239361.29677.12389637850699164986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d6408f89bb302510373e3c088b8ab9b921dfd6b2514ebe0c001df7a79610a0
Date: Fri, 18 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744952393
