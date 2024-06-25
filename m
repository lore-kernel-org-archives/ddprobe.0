Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE3F15F3E8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719322403; cv=none; b=Hr3u01RcgXfCOkn97NU4xfpT0VamLkRiM5A5lbvKkqyaLbmjOiO8n3BH7n7Ad+rM6VCZSBKqql9Ij0t09Apo/Gj9qyrDWohQX5nG24d9Bs0iC1sk2y1JPgSELbjXmH4BWkL1tKWOeAydTKLS+5IGBxp5COpxY99Zx87oBZdh6VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719322403; c=relaxed/simple;
	bh=mRjwKYG50W34fLHViRA2qq8LkWJ+wELGOrJFOPwrUns=;
	h=To:Subject:From:Message-Id:Date; b=JBh05YMskv4xl3uaX31YfxzU0bYEGP/Wb/yanC5VUlVIUp+tA2I3r0SxRvoAAkUBE3kd9u7quAxYtGuJWSjyys6fdoekFT7FvAB6VEa4dWbv8Zylg6d1dH/nPGKr+mlpVBzli8eErlpH6L3w8CGgISySRzHXYdC3s6UZyknjFP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ina7BSly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ina7BSly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F1BC32786
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719322402;
	bh=mRjwKYG50W34fLHViRA2qq8LkWJ+wELGOrJFOPwrUns=;
	h=To:Subject:From:Date:From;
	b=Ina7BSly16DtDKRgqyhhVMu1GFCEcOhOSWHBPpellfbt5uy/MnjypXTms8LzRjxrY
	 8eEBaEvdct9Vllkm2/dIiEUYEDn0XUvIFi8vofTr6xEd2COTHSRapQlNJAlw6P3y+M
	 kMnwNnXZHzIz948T6AeSCFphJxUGQp9iqOuCqSEThHLtPFEeRVelrEXQLA/iaCpXbP
	 KYP/tRoqEzdnoYx1zjqpykvBxrXhoJcjBetD18ARqsmES9BDtHXjVDQ+plF1cc9q0T
	 V/TpVSU9GRae+aPvqpCySy2g2YqKgXu8dYrsAU2Vw7Mwp8hzB5dEq/GoNLKKkEvMkn
	 3MZUJqEFIHpwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A01C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 13:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171932240279.15820.1956158999823930861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0948d11ffceb1fc8738f1bb77c1fb7094e43a8eed4700dded0045f304ff8743a
Date: Tue, 25 Jun 2024 13:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719322402
