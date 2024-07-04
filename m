Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18A9632
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720052723; cv=none; b=ebLxmL4pchK3AzKNGwnalOUxYgMe6zETi9RkIcf98xDj/aEKtfBNofGxpH8QtyH9xNzS/HCErXOuPji3SOLHIgM5Wn/8VUW22DQtyR2rQKxmnGMpAF/3fp6o93r/XLaFHS4QelYVjCj+5VorgJokPcUX4cJdJloYvRVUu7k/+dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720052723; c=relaxed/simple;
	bh=+zWBCbMvroTDCPB5LDlCNWaeaononbQTUh2En3HgPWs=;
	h=To:Subject:From:Message-Id:Date; b=VDIJq0O0D3UB9fDfDx73+8PiuBjAefN4sh/mmHR+RD2/uM7RVax+9XUQQ+jtREMY2XhjG3nwxPiExQt5QYl7mps6KIVtXRct+ekS4EN1y0UEFRXI0nQst30JiO4NU4FclNSToRg9CA3BZcu2zpFSLjpQHU3aLHDbxzSEJROi00k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+w54nmd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+w54nmd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE82CC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720052722;
	bh=+zWBCbMvroTDCPB5LDlCNWaeaononbQTUh2En3HgPWs=;
	h=To:Subject:From:Date:From;
	b=O+w54nmdCB0BTQR5CgYUbTI0ILJVi5zn16KtT2nlfz6NqKpRsLMmufDFgGw1CjnUQ
	 tuI4HGKA+nh4Lrph00D69S579KAEKvUMJ436PgZ81BiTcgX4bm/Uz3k5+GGQ1iSplJ
	 qcUg3KbJQ5QeECac9WiKfoi2L0JTGipEAyDzff0HELKzUkCsoMSk3cSTIGNeo4bmzm
	 AUnA3PE7chGjq5L9939ny3ml4cVas1Z/EsqRpqQoTN9DZQ12F+c3V69Zn+DRbbXsNf
	 AAAwGHKki8yTTaPmQviiw+z6N/o87UBGLtz+w9gf3QfeFDYe4bGHW61yHw2z7CSd0I
	 ATJVDmMvOus/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA9FC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005272276.6810.8028566730606897004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9700769ec5309efc487463f077fc6da68ceac0eded924472e9928d6c65f4529f
Date: Thu, 04 Jul 2024 00:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720052722
