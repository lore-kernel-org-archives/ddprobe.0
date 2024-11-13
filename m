Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A69B23A6
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731457554; cv=none; b=lJrMN91X3x2huUVNHxaenJg9medLonetX/aqcOWVEXKsldMyOCiVlN1RHgWWxQxyEZBPCk2ukxV21UD2WOmFqX6jppy+CAYA8QQzpyQMua58JotLRKmwyWbpD0+QoJev16V9gKxhGMEJew7dyRzzg3Pp/HlKsvXvIDSc8ucW1KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731457554; c=relaxed/simple;
	bh=kFOplQwC/w7VW1ZAlaEKGKyzKwkVEOsHJaseumC+M7c=;
	h=To:Subject:From:Message-Id:Date; b=JLBllukXdiizz9/Eu12Cpf5/Gin9GIbmsXWmfm32vfCsZPaxOX61i6U3OV1PcVp35EBNDTmTpgS8sYHlyWT6MY9MdEnnBxG9p2Eg1v4n6W26kwM6DXZHAL2apkwjACtruNNLsa3TMoYtn1/HrpVuTk89Nkxd2pSAdE7jgxFF+lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMqgSJ9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMqgSJ9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4951C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731457553;
	bh=kFOplQwC/w7VW1ZAlaEKGKyzKwkVEOsHJaseumC+M7c=;
	h=To:Subject:From:Date:From;
	b=UMqgSJ9C3hWiGNzafNGT9WT+G2rbKIZ1m7ABgFSH5wqM/E/LsHnf0mQKplLcie4F3
	 gcE/qaD0ltd3cTts2LmfsbH/nWGZTl4BepAT6wcRNyxpXCKJq22gCvaTZQWtHYm6dI
	 WAl1ZboasdM0ViTX0Qcto17Pgf5yuHLmMisV7H2yNEXqwalcLKp+RwCEKWsKGPJyEE
	 ojl+N70y7Ra+APCw46O8ih/9+UMukmiURyAwiwgG6dYeM+WPPdfbUJDHRIsBFzlw+P
	 PxGR4TtMtUm8Jcua7kzvd7SCEvKago4NjzMdhZHIHc8+cAj5Iw5qPglm3hrfh5mtOz
	 8JZx6hQ9ui6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EFD597B7
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173145755360.15694.2052839645945172889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f5b6ff560c04ec80f2af51eb59bdd57a99a753931b12e47a16da93069959b9
Date: Wed, 13 Nov 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731457553
