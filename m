Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5031C50289
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715432543; cv=none; b=iWdF58Dv7/sJv4xqJtJJ214Cpxzlej2kccPorSyV66mQbw+l2Mi3qNAGHl8QMYjkSIuaxlSAKtAdWlFvWGNRr56ByokRCVEFpzOtnVmpq+OHHaMlo2irMXg9GOiv/iSL+4yHOT7loUyQF9Wx2eTVlezjZClP4Zb154hultvgGvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715432543; c=relaxed/simple;
	bh=Ch3zdHrMvXv1wNEdX2bdEw/tyG+14SfQDS7+Qtrtm1Y=;
	h=To:Subject:From:Message-Id:Date; b=Da4232pSBfvrFHEMk41mcjYeC50TS78t+5ctlkcl/vblXLDjgSwaXzW3+hGitfoAD4i+/6ijdmFfng6KXhKkIiveM38n7x53WuAssristfixntgaQYnnNpdyAdaZct4b12YVAs8xOolRznBiZrmnRnvMduT3zsEDwEvEtuvx8dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo2KUmgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo2KUmgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5A6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715432542;
	bh=Ch3zdHrMvXv1wNEdX2bdEw/tyG+14SfQDS7+Qtrtm1Y=;
	h=To:Subject:From:Date:From;
	b=Xo2KUmgZO9YoNsIh892RhMArTVYNJnUiGm/sFaheJYUyIl2yPrBff80UycUFu3+N3
	 SW1iJVQS+xGbP0BrcE4PfjzRZbqIFAi1+NuZWXAEEwmPVEPd6qNjEG+s6//UAYgUPg
	 0N3COucRGu7iG4KVGYWv4vxqpK75wrshrQelijSaMcly4Xw81kUy9l930Ado89SkK9
	 XGigQmkUA4XOR+ygWKrFcCi+KcMSrQ8PgQr1Td9OrYdLlAa+5RnCPlUwYwO7e2gkqK
	 /w9f0A6byP+S4964AxF3Tlxo/DLkbPkTQVWcgc/UvJn2+DH0wAluTa5mgme03Mv0QK
	 YnSA4cTtK4eHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2735C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543254277.7628.12040519703878378300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7d3f2c690ef2eddb0442ca22ff51cbdef0d7064258e7c77a690dc2295655f8e
Date: Sat, 11 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715432542
