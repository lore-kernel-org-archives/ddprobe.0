Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183281A9F97
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787067034; cv=none; b=Z8opiOsPX8ph39xDY/Hop9v/eiZ7LDJ2Bf7fUCNdDsfjuoTMsFGEplSKICWh82zRyPxqy+RwVSp61I+Ftuy+gSQJQxHamqlrkeC50N/bvhaCzLljlfuvzCrZyOagyBgtO177R4VZ16ZNe46BWNE7ZEumq2GmX3D12v5NeibRr50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787067034; c=relaxed/simple;
	bh=tQqawoHTMij2EBN+vf4jluvlnxCZQFiYZVpDKDzuzFA=;
	h=To:Subject:From:Message-Id:Date; b=uCqi9E4RIlkxAtSkBAUEvWYXT7FWbXqji7ltnKL5Jm6S5199C/0ULZDG0dlAzaW2p0hg6OQoVwr5ta0KlRcTFCw0S3hO/OzTg00mW77dYUr/tHZ1PSf6iIS7UJUBQgpeD+qLuGQ48zEqEQehv6n4aU7KQuGUhxCKDYA588nG8dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6sJDGbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6sJDGbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE08DC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787067033;
	bh=tQqawoHTMij2EBN+vf4jluvlnxCZQFiYZVpDKDzuzFA=;
	h=To:Subject:From:Date:From;
	b=E6sJDGbYyAgiNgV/2W8d90Tu3fYEL4zDvzD+x2Gw/Fq5b6hOhpYeW+dxPXkbsI3uN
	 ryh9oLFx9PODmeuTbda/LA9pruX+9/fCjVsIPU+fA0H2bVCBVhecSTSLTF5zQiA5Ut
	 JjJdnjkc3JiTvcilu8e5Bx3jsnirLryYbNI9KgEwDH6F3Oc8qfITn2u546Lqdm3rwG
	 IrAScw0OWLSyfj7Sz3hdqbuTvSy4428eb62WzlEqc5GKD2ekUNgUbpPf5wKPDnzlPh
	 ZH9XlH7X0WgEsSmKK8SccZKuOKVVL2z6Kv6zu9vPLPXyO4mOWYYfj4USBNeFwghcRv
	 TRgCmY7dps42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6EC5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706703368.17288.6017437197888744243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca03f7f886c302b74eece3cb26f4d9415df63451beaf99fa28d3d6d959401b5
Date: Tue, 18 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787067033
