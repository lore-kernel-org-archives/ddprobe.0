Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3473325E804
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745956194; cv=none; b=aUgrMIF0/PaLAT4QGiYZ140HSGvJiZPwFBLHGBiviVeQbZIDIfhlhTeBzdVgMpJIxp3RZ1vTfaiTH/hvOWdvHjUNPL2Qt0pTtvd+B6dKR7kYsYtXkhBM/5iimypaB4yeLzfOdxvz6euK+ts7l56hoSx7qPftk7BZErL1QxumR6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745956194; c=relaxed/simple;
	bh=Vwd8wNIThfCjO42woUUXTd+Mk/Pa9y4KW44b4OHqiF8=;
	h=To:Subject:From:Message-Id:Date; b=FCdi58mQwi5RtbtxMWFlDVqdFF0V5TjP48MmAMMWW3srRVhTx44kxMwY0/BklRV1U0VlhFpDZAFd6eOBRCt/L2VCj1TMV4q79tYi90gPz7kQx4M3HByIT91HZlrALAxVa4i74H42QwQ0NB6b5EUVKNm/SdClV0BZgacAfRd25Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBcngBom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBcngBom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB8FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745956193;
	bh=Vwd8wNIThfCjO42woUUXTd+Mk/Pa9y4KW44b4OHqiF8=;
	h=To:Subject:From:Date:From;
	b=ZBcngBomNRhWUKndtguGnmLDPm/gb2QcTgWsZgT35pLUCNIuQz9U0+G5+K8xIZYs4
	 udqBOle8UT+n+PpL4XBHiKxY8IfaSveBhIGpNvdYWzKkYACA1kDYmQC99BTdO63QEy
	 TLCqHJecvR1pzMRPHrO02af2zw8IMeHUBOaERwkZpLMciUCIrHDhIkQZJpsskybflS
	 aSzs3Rcyv3Xlk/7fJmfaDo8pPQq23ynVGP2F5qIVPYCxl1ca7rM/Cup9qrwKgYUX1T
	 /ugsxlQOD+0zSme/eKlC4LKKA1sdrR0N3BVJJPwWLLoUf2Ig0r2GcpMqIPfmzWWSQN
	 taD1xwBnHU8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6FC3ABA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595619358.9100.5184206997227965877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d7b7106412b2a16b49682fb273c8c9ace9fadbf7ba0b8023f32e4b5014018f
Date: Tue, 29 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745956193
