Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141891A5B8B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761586794; cv=none; b=Eqr4NXr3kWzX6RIV0Jk39syP4XMKt9k59Zg/9r2HdPqt6NCwoMSRa2euFOmIDd0ipqb8gwms2ewUW1rnxUNavqvxqstriukFin0IjqpBArViIVMPxEhe0SeS4m7nS8SJoF1NQs7m0jeeYp3DDc/OPoNIuCD2sPqfTKauNHVdVZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761586794; c=relaxed/simple;
	bh=eUYoqCNSKO59kB3QRWpj/5X3KXc9r+OWEdWiPi579Ig=;
	h=To:Subject:From:Message-Id:Date; b=tAoMKnmmYaIu6Opk/Ziqopc+YTkfAPIscgVvFKVDf1Cr9myI/jKx3ZSS5FdGYdiXJehreUvFAl/JHKDavp4rPOORMxszF2WnZgzHB0528RGHA3hi8FZZk6VEmGpndUuzXUtnqfZB8rMTPR86gkNRG1EXRwXs5sA+nne2HDPaIHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIbvr1b/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIbvr1b/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761586793;
	bh=eUYoqCNSKO59kB3QRWpj/5X3KXc9r+OWEdWiPi579Ig=;
	h=To:Subject:From:Date:From;
	b=sIbvr1b/cV2SKwaBGA1+uAtXGG5FsFRp3SXSpgwi0yc/5TfJ8fCILFIU0AnIvnRjV
	 lzStAAOoth2PN91I7a4qaJapqTF2PeLrPsVem1WbD0WSmlS3HbzaLgwobqlNw9QMvZ
	 VegGGL+Ro6j4Tr+1Yy+QnwY2Fr4SP+9htj64LbUtCOTKnUu3fGeccvrdyL2AvVLqtZ
	 l142l0JPtzpzwPMMXDRHGmPGP7Ik1eOAxAFPZwD/lDsBLXbUpEkeik4tUVjJSkISPc
	 EJEPN1v5M8MjJneG7eJuULdxNa2Jd2MdwD6iJmJgbE0YJdDSOEbYvd90IGDd5zJur/
	 Ikmc61VeARG2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8ECCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158679357.14687.8585688143226740977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d64e28cd09c392cf53625213b78a11fe270ddd861ec433b91985a3be0fc6f9f
Date: Mon, 27 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761586793
