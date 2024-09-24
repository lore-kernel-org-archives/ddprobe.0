Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C111C3D
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727176554; cv=none; b=iO90jM+9Mq3fePB39epZZdvTGgiaIsoyWiDmUvuob1DysV/emcoEBaegqyB1xVIFsCRk6OGbrAeHCIP+cLr5JEbjv12Nf92Nx1yWHQ88g3E8hLWLBrSFYYwUsJHoKz6UxZapvJMLoBeg5NNhJBKVq0h7Sl+JklAtbQq0d+E5ebM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727176554; c=relaxed/simple;
	bh=q4YfOyxNKO1CMdlb5S2QwTdm9W+AUqbp8XQdNdNeIvg=;
	h=To:Subject:From:Message-Id:Date; b=M8A5ihjW8tisR9yyyz4Hk3qZzYbq183ITYdVbO9txhNSHCIxWzBIPshZze1NcW5CpGP4PwshwmBKSSRuGE+/lIKe2NRVOzBOliT33Qrm4piGdFdWB5g961NQKId3Eg+dcfnR+5kawthoYkZOxenaJbQwfgQP7ksEVNb19/qS9pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGQ5u6Rd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGQ5u6Rd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB78C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727176553;
	bh=q4YfOyxNKO1CMdlb5S2QwTdm9W+AUqbp8XQdNdNeIvg=;
	h=To:Subject:From:Date:From;
	b=hGQ5u6RdCymq+A0RpLXkfOT4E+tWpRi/gcCVnDz1CzUn1wMyWfm16n2ks4exgmik9
	 PIwoYUh1VgI2ksVBAUsgBzg9d/FBKoOORF/jVgjBMrXgtDupWeTb9QFFI4htLjCo8G
	 Akh60iEPVGDXjMZflJYdz8wqdooPqy43vMTS4nlhRBK6/UkXrvFcl+eWVswAoVFstC
	 Vj7j76YcVRLoRQ0dPozFH1NpzJc0SeNB/W0pHhvUf+kDed6IiOA11pkhu54iGfVrVw
	 w9GphGvJPIolxOtSM3i3CrTPczOLKSXZGiEq+xzRvxOgR1QNutkcVSlBfmQstnv6cx
	 BjucaNYd4VUPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99781CF9C6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717655359.3827.5808597996511049140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd9b49335bd09babc2e6a46e586ea941f3daf0c978fc438825b9e897a8c420a
Date: Tue, 24 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727176553
