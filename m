Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D662E62AC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780895074; cv=none; b=ApG9qnW5LkITOS6VxBhKAPK+eOYq5PAp8AMUBMtljPyMBbs61JkPtc5uWGDjExFI84E1ApKtKrO0a+qgS2QMiJpIn9nn/N4RiyN215fVvHRvmB2dff+BeWwuopyHtbaV02sy22NbtJJnP4lSesfO9oUi7rhvFq+wIs7IJzHluXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780895074; c=relaxed/simple;
	bh=24tz/XIN4Q1/6kjISp1M6WrjOac1RLSlY88W6VCJYGs=;
	h=To:Subject:From:Message-Id:Date; b=azEwyG+BwdLAhsBKPlWK6asIE0yivr7t7wHCICYTNNIy/V7oE9avHZTWAOsDFoAOykPNiiz1weSitk4+EJnew1uHk2N904d6rBS201Uan7rc+oyjU4LbGxBqvdfONRiWT9fKUdmCsdcDB43J+9p07eWkB3P2SCpFBaHbP9+vtNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMSH2GUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMSH2GUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DFFC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780895073;
	bh=24tz/XIN4Q1/6kjISp1M6WrjOac1RLSlY88W6VCJYGs=;
	h=To:Subject:From:Date:From;
	b=RMSH2GUTikc5O657ySHdfbgYltQLXHfeppUVss3+Mg+5gjekKZFR/jbgwAt6+8bKe
	 iZaNiDeO+vrnPwBQYvBOUVB9ithVvrYW5z0l9SQXOdWaVYl4aw2NofxsQRcV4yWq/Q
	 rQtdJ8XiTVGqzyWwRd676hZoBUL3EnX0B0CrSdzTmNR/AV1DpVA/8YrxLgfus3qrTI
	 slPVPaiBxa0e/MkBsROagGenQhhNvaNuHIrjmEV6OANKuRwXSrK3creLWQR5gx5l5j
	 uMKt8RnxVG3c4sdV1ClfQPoAk2mhaex/YzsvNJ5wLqKcgxkzgU75yC6d0ZzwggguC8
	 BEdMamenXuEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4FCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 05:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089507369.30511.11866341474214252044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7583e46afedc7759886109bb0b54a9a407e202909f35b3e272cdd856e3909fc
Date: Mon, 08 Jun 2026 05:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780895073
