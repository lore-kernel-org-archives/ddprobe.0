Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BF01FF1C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753482595; cv=none; b=XvJkb6OsoGVtTDcNRIGdK451Yak3VzHBf1zUNAs1i0s9dQAZXq5cjiPeb7TOtNujcEN9sqfnloNWFcF0qDlP0V4FWv3tttmQ6hOWhOH/TPddxA+F/485aeR7JwLg9kG5qn2f0Uh0YuuRKLIPrC6T3/uGYw7rZMQrEv4rCg45ae4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753482595; c=relaxed/simple;
	bh=Pr7OeZ2oF4P/kaBf9qkyUJEgCrw99FqQ+LxK5RePcWk=;
	h=To:Subject:From:Message-Id:Date; b=N2rboPQfYDbEenILn4oPVfKcSMYwUdl41d1R96h0CCzvjj4bAu6bFPoYGfW0h0fMZjHGryiEGv0FBeDr4XS0qW8DDnvkjJJYLLQXLfzUFF2lv28SdvLfodyFt4cCgkC2hsU7jQMO8h2N6DHaBBITsiFVCnpKFH5ww72qeoHcUHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AWffiqcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AWffiqcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B92C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753482593;
	bh=Pr7OeZ2oF4P/kaBf9qkyUJEgCrw99FqQ+LxK5RePcWk=;
	h=To:Subject:From:Date:From;
	b=AWffiqcWn5WgbpOIs/2zqJBTGQ10NwLeP/lvFTsUvNS5GoarjJ8TuBwziG1lhWsEB
	 EpfIUF1WwC0C/6eWyBevnbmxOvigjlVpNTrAjlv9hMjNZwKcWwIbXlbmZtHKM7v4CZ
	 07ARMiBcJFhF27Jlmb+gIsaeSsDaGq4ONAu3UncJB3Eiph0h/ZdKOeVHvd5UpMbTEG
	 CdtL6Dw9iYlPmm8JLHULbJr3YuRiDkD0yleipBLxWXRyHC3sBwLbAZMd/tw3gKARKJ
	 vGRCRHKbQoTjvPSojF4lS5J/H2YFXyZtDuCaG4fCPt2XEIVM4C5X0EUb90tgmTesoI
	 PZaaJiI0U75Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164FC87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348259358.28638.16936505731415285306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c440a10a745a74dbb19e1e0da7ae0dbd5686e6037deca0fa608dcfadb2a599cc
Date: Fri, 25 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753482593
