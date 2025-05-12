Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB508149C4A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747057193; cv=none; b=pOlmAFBvHDDSjZoc44XH6dZLAR2NPxmhmVEPLoeNwx3fc4W2knnDkIwAnMi0WsjrJlUbzYtk6s26EL3yO/4k/duE9ejqkhut1c2vP9/A+AnOMWUVWK2c2dP0XfImullVQGzET63XXTQdE1JBe1QdlwVaiafezj60ErUBWFmNGWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747057193; c=relaxed/simple;
	bh=1ODdbxu6ojY1awdmPGvMqvm9bBGgLWXCiHnOn76GUmk=;
	h=To:Subject:From:Message-Id:Date; b=s310AuS9LC+zuBnan8IhNhzDz3WNhjUhSK7gyJ/Uzgh+3km/r4O6wD2VPuPCs9/fjJL5eHPqS6JiustTPO/KWj0w2zwGCUTIJS4wPD/9Mdsfdb8bwAgu68jQAMnoUr+ExROtdwgiK1nDclvRNY/iUtsBgUmqD9sq+02lL1eYinY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tqd2htr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tqd2htr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A123AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747057193;
	bh=1ODdbxu6ojY1awdmPGvMqvm9bBGgLWXCiHnOn76GUmk=;
	h=To:Subject:From:Date:From;
	b=Tqd2htr6/hNEXjNDzBNfJrYDTWsrbftdTihtojGAKo3ofX7V2KToHM+Rfk7PeuVSl
	 IEiOwzoQB/KITbLGAwFDQS6tQYZp4bC9jB76CPX/Fjxnl9Hf3CeJS4+XSAWkPPxBR+
	 dJ+XslAMirmp8D0hz6kpRwSHpZL7u6nsmOYOquVx462W7pL3WQImpa6LlC+IVvYwK6
	 Oc1TjfzdKQx8mBrO7XfjHKlYaAL04+Lrm1zgEqIaEKZmSOOqBW5Y08nQuQHr65/9bU
	 442sGw1y5wdUKdHsfTNsHhrYAv8E077QbUpS7s1pWNTblSzH82TjG3AJ4wmlneNLF+
	 2k0/Hwp4Jo7SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90858C3ABCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705719358.8458.16032242037830421646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849bf009d89f10e5e4751350b50c1d75ca52247d0746399c2c45d94a5fd86f20
Date: Mon, 12 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747057193
