Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3003533372B
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764252774; cv=none; b=FFOsqLxrQ6kO06k4kYT5ScFBZJSD8FhmppU2cjtfRu/7lfjmydGwdKtxKpy9AlxeN4t2DBgzt0mH1z4tzt2iDu+ZevbH6byhaJacCizGv/Q3Fq1HpeN4SWW7owdxBL+gd80W40PEzcimogyqYo2IaSDH3FA4A1jluv5b5NzWv40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764252774; c=relaxed/simple;
	bh=ueWahfvOzquYtYJqb2CJXTUdy2PEz54hdLdjprxfAB0=;
	h=To:Subject:From:Message-Id:Date; b=NW5qxkIdhVxHD7baGRlrJgHcpaP5D9fXc3D4YYp5Zv9FRXaOcW8dpyVfDsCfHmrekc/riXF6ztxwkOWghkEJS2mCPqVC+xoc+LhsBF+IIUFbAc5+uEtk2d3sv0Ycsa2PrspBLNkAHzaJIA2bhKL81K/X15KiszgAuod2Q1mYtk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeN5+Mu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeN5+Mu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFACC19421
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764252773;
	bh=ueWahfvOzquYtYJqb2CJXTUdy2PEz54hdLdjprxfAB0=;
	h=To:Subject:From:Date:From;
	b=LeN5+Mu1UYByAHehrqcoQm59r31pD77A3F5KNw8KrEfyvVdAeM96Tm/0prUcgxzsv
	 wL6C+oiApgGiyITfJ0lihNtcsBPT8oK2nzT1q1bvKh2I7Lvpvv7GlaEQnsbPVqHxZi
	 SzuRDttP/vupFZNXAiv538RC/ZBeFhg3JrBJueLaTdStIcHjo9AxojrxnVmOQgESOb
	 cldSTIpLkTAco1tuW3uZCg2ayVcivDI4oVqlcE/1GPQFEpLMRpaxzgOWirsXhiyhQm
	 Ih0TLNAmgACyGPcuN+bhLIn9PN52QQQ5a0t4eYdC1BiYQRM8htJlcKoejeppTHucbf
	 d7RPw58dM4FqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D83AD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425277363.28580.4666779924610134322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311fba1796ca1291f88aacc2a8d396a16f2a41a604e41ff3687ad02686b6796b
Date: Thu, 27 Nov 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764252773
