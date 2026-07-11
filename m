Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A2B1DED5B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783808914; cv=none; b=h4RRm368iNec91fTzQeyN7eaEy+ocBsNsNkSyhnMQK82AsyL6QjsAnyhpTJTwtxlhsytViC/mk2ULdPL0larL0DyuqC17xAtKrrJfSLa2ExOM0Iqe3smPirT3AsD/d9RReNpLIw1llNsHyrQFVV6U5Ivgj/tztrsPrm71joSBmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783808914; c=relaxed/simple;
	bh=xmVgZf8oTLrCk/RuiIRAYmgB2Q87E5dVwqdGOeYWGOs=;
	h=To:Subject:From:Message-Id:Date; b=St0unknMg7kKkRUoZ4oS40g8uj8Bs637l96D2p4BqBGqAJ0kmTOPlGUgLlwhsClexHp/me72bq1gz0MijxVX5D0I2DNUTlUaZxnmTRMB/27fIdacNFxwP/IC9bKqq61CvkRiEumpd0ur/2HllaJeG6xUM4szQ+3HxVnFFQYaT5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+/joYj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+/joYj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE881C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783808913;
	bh=xmVgZf8oTLrCk/RuiIRAYmgB2Q87E5dVwqdGOeYWGOs=;
	h=To:Subject:From:Date:From;
	b=T+/joYj5YP/CreR+GXAU7u7uT54JgTePOwLUSigC/L/zvexmfxUdac/9SMQSBy6hr
	 j8wbCId7v84RWRKt7VJ0Y0P/UmoK+CAH/eCN/UPDwm+Q56vtqicWywS+bktLRqq1SQ
	 JUI5KMQ+yDMKVRQvl6uTEaUF6kW3bC2C6dG3IEYKjATukonJZ470JZ/i9ARYnEq40Z
	 n/al1IrqNU99j904J5U1Rcleix4AEnRQM3SSaH1y51Msidvtdqz0vB1Dkziorz36Vs
	 zisekVhRWDSG5ZtDP1Xz5aDtOtp+AL7DlB70Fw5UEfrWofXFoMdpuHYcLJd92kDnAt
	 6sHRsKfI6KV6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC56C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380891368.17567.13311420449274760078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aad979ea393376a9aab29fe72d9c6de334770320e899ad29991985ece6a8b0e
Date: Sat, 11 Jul 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783808913
