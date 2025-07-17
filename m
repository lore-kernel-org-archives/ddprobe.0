Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7102F5C40
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752760194; cv=none; b=amGOiAEj38DeO/Q1c5fou1Hv5byFsSldgCq7Aibt02t8XETL71IpPYMd6/H5mSmAhUEst/rvMszddtKAIsh0U02Sqy/7nXFz2dZicBS6FLHjDtzVyXy2pAncnDPRV8b2uaBCeX+557zYltnBt363FFZDzEmxn2M/SDs63kPLdrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752760194; c=relaxed/simple;
	bh=ZOLiJkiTisAvEQDipgrUlt6YPZfFSEFPrtGKNUdj5UA=;
	h=To:Subject:From:Message-Id:Date; b=BlV93lRBasnb/Ej6+SZGVaIuuCcjs+3V2zrBTdmxrsGTBDFDH6lGB61gPqEPWz2C8xlGeyZTiiCa3JQmI/p/trTR7e5MqyZiUBK5wzVIoogaysXH+SQW8BRb5W4nERYVMFQDFuTDJby1Mc8vONWWK32gyC0TsLpVI+369rZqY9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNWV0gZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNWV0gZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D973C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752760193;
	bh=ZOLiJkiTisAvEQDipgrUlt6YPZfFSEFPrtGKNUdj5UA=;
	h=To:Subject:From:Date:From;
	b=JNWV0gZxWFV0rHxxlAUDl9UR83KPuh88hMua1YIZQKy9lJhbv2Bmwbxs6GCaiZavb
	 KgxkPmtlQCNLUeHfvei/GLPK4CNoxNxfCn7Plf7ZUCqgJscVCv7SMGFnZy87Pnvrhg
	 HpQ4HNxciPesnh1pW+wHpT9RzUsLVKGjs5tSBHuFFnaZA8rakT/TxpJSsGjQ+BE/iK
	 RQBua0z7D2KdECsG1MpfSJIE8dZ5ELs9GTyqpRJwChb0hUYeuCA3Kh7elMyePlL4wC
	 txr20KzV83gFk9ElnPcg3yegyYiooeJ80/SeDpfVKLJaRvif9BaVwpt3Q/xuTGs/bE
	 3Kanp8fG5k5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49EC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276019357.1195.10555245849799035363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d450d993f9b345c5f842030535e1fdc21c5c85ba9156c3011207769c2185449
Date: Thu, 17 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752760193
