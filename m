Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3533618B468
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726726554; cv=none; b=caN+MD2GyDnavJlnbNB8XratUiWZzB9OUAiSSGBq6eu/nLTDHNLtKuyxcuhKYiNV4xrCOYc45f/3aa9aLTFE6T2CKf2jnq1pMNMgqFYY8pCuLwiYy7bcJcUd1p6yN4CyRoJnu0ccovyqCvqRlpeF++fltfriAEwUoos0SjPLNj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726726554; c=relaxed/simple;
	bh=uWLY2ZKLsU2j8/L3fIwLLxlejbjDbyTYoIe/n6790Jo=;
	h=To:Subject:From:Message-Id:Date; b=c4AZZtWoPMx8BS5sevLM6g0dudfIO7WVUjUAmNcRA+K/N7Ca/Ed8LJ52p9va0a4Sa4op3bnQ600Ba0IwFFbhZsU7uqqqoz3GdimuQWOpqm17vi5/JxxWcdss6yUdF8aM83nlU+dhVGC81knffPIDybCBEK3mOc57voy/irKUbDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ydnkliwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ydnkliwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE8DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726726553;
	bh=uWLY2ZKLsU2j8/L3fIwLLxlejbjDbyTYoIe/n6790Jo=;
	h=To:Subject:From:Date:From;
	b=Ydnkliwe8znbr8OgzNhd9J86i3WM5gPuy42Llr2T2HDo4Wz4/bSSSPku3G7+il99/
	 mmWGzb5PzCv6aIUa4YOllFZNcUy+He0JZ0nwf1MhC1zg7FQwbboNBu6gp+BpjhZlOj
	 S8BSFKAEDoG0ir0a2Xt79MjEn6lBkvj9J9kkhINps2zPHLsJJ/5YluenPk2DmW5ypQ
	 peMLSKFKfrVZ8CbeytnSJDb3yo/0Vi740J3Ufz7vgaMQfiO/+kgcKRv/ljzgS6T+Ez
	 8GKwd7AeVljNVKhhELvjAUfBHTP47BagheR9AUGJkd82Wlr9ogAanoLetR6aH+/Jmd
	 SEGekUQHn18zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DEBCE8D4C
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172672655359.17168.493557752012125745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee883c926e6016d3f78f5255e603fc953f0f4f06a7587545d1e15f79843e7663
Date: Thu, 19 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726726553
