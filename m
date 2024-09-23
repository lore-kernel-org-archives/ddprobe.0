Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0CE198851
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727096754; cv=none; b=aiGGaeAosGZSs4AakPOMhVPkmmwbLbJGZ5u0jFXl/FUEqjBAXkFMySqyR4bsQR2jvqprtvXzLyGka/ZH9V4Zffb4qGdz4hoH7M8BBdsw2rj4dkvAzpsPbC453ttm3UKBn18w8XyKJV13R1uyQuw3C2Svf1s1QFigDAfDAVN9IdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727096754; c=relaxed/simple;
	bh=ZWDge7NzNHFiufPA28sgA27z1zjPMSo5tab352ptbvM=;
	h=To:Subject:From:Message-Id:Date; b=m7uk5eXJsdtoEuFSgyM2gLdc2sd2kCOb+N8qC91PYE6ti/GUW79MJrlFTRpRTDBV/sa+rtj0kkWeNybwTeTIVSJHtWRT3+IKs6pC8YSLwnZh8kbLBCLX7J8wK+gyaEFVUouCRDkGA1uAUPnGuY7oii6lmkrRr213D4u8hkDsszc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kq3XXt3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kq3XXt3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52FFC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727096753;
	bh=ZWDge7NzNHFiufPA28sgA27z1zjPMSo5tab352ptbvM=;
	h=To:Subject:From:Date:From;
	b=Kq3XXt3BOvyYfaiipkcg2ZeXqTpRrqbFXfOcHOSoD9u3TJWsioU18YYzm+YnJBcmy
	 siFgoaNKhXOYsrZ41tD91PTjDFjRsz0a/EB7URzPakkvDtDoWwbr9yyvSiHxQuJrRE
	 zdiqtJXfAZAP+ZsF29eQPJ/6nQ4+rx27SGc+QUo1OKgn+2ZsXbaRBJpR4PO9kI/J9+
	 MMErhzeM3nHdKHsn1lVmZmGhrIsqOC0phUV8/Lb7lJH0UNeap7tyms2zbORApnY4zi
	 lQx9e/byxmj0xW3zMkwXAl4ZDVtDODwoQCMZfaloVND8cPNdFB8L211WFIeodsvrXy
	 mfSqPCaEaZhxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A422BCF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709675362.14102.13899353595777102227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d13c8729c1f8f94664c864c8304f080c38014cff0aa5cf8b896f18500b95bb2
Date: Mon, 23 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727096753
