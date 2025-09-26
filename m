Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE0D1A2398
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758885594; cv=none; b=KyuHq3AsqIT7OWHiGmtV7c7MW915HWEoXR487Y5tYmIzujI9yqMJ97jLoj/WS7EMr/bc3X6pEZmvkcsIEHDdP6NSTpxlhLmYELjuafI48IsPQrVM4IRZ3kNwn5Grm3qZ4FtCJlVYrZRczMltuMl2WmD4N+IPO9+qeJAKkjdifY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758885594; c=relaxed/simple;
	bh=uvPZ8eUqQwywws7lPsDmc7q3ldEzsXXdT2Tn3cGroUo=;
	h=To:Subject:From:Message-Id:Date; b=scFwmndWZA2KPI3RGR0pncRSg/2POgBVMkpQi6/qPJr/RWV6EGCr9FrTAaWdnkzSYmsQtV4vRVSC0bXXccOfaJQ1EE/eQyUpVv0XnTBIdFQkX49oCC/TstzjVNIDyuE2vlY66PF91lqugVvDEgg0VDaR+rO6UAM47B/u45q1P2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XllhTUV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XllhTUV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A0BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758885593;
	bh=uvPZ8eUqQwywws7lPsDmc7q3ldEzsXXdT2Tn3cGroUo=;
	h=To:Subject:From:Date:From;
	b=XllhTUV5ctuGo4XualFMakzjTk2dDqMAgKdX8maJl2aqUf9M0oiMlUbcJjicPel38
	 jP0+vTvo6LlaTAtgrDNEyVblAQ/HexYGRGEB77sEQ2O+gIvCx/HXB1g7AOhxCO6gio
	 MB6CkrwmqlHr5XbrAqn+7RxuFI12AYHndfY/38sS2mMOCKvdxrgqqY2yJTEN0NMVln
	 yFb3UIvaNgXWpGG2749v1GYScBNC2FCgoWo2daNaJXUxbzDTGX5WKkaXm8Xy8z1DeJ
	 NcY7xJjC8fPfHeLJCtcFpPCJh8466nB2eONSmbwj1Leh8W/AtR4LYdc+X4p57zjc5H
	 NyRRmBPqSK7TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98007CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888559361.31727.2065542745551285492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aa0e88ab6f8c50f5beba34f87e31e1f080efe50049c9c07b80ce95d5b972b7
Date: Fri, 26 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758885593
