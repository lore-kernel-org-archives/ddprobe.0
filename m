Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2462EEAF6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751251194; cv=none; b=Ix9EEKgjy+eRg91waNIgU58to4aPdG56d8lguDQRaDD2BWtpB6Iaq/c2fuqnTNzE4HYI2kDCdzdMOOY36O4FUulZYSRSjKaWF2fxlazyobfYZyxEft/lsLj4i7+OHp8pNfNYpBqXrLJrBThwb+YOjcQaP/F3Rk3JCoVBOLMdX+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751251194; c=relaxed/simple;
	bh=HXQePkaduZ9DpLKwuZJ3w2qWmACTwHXFi25bzOlqVFk=;
	h=To:Subject:From:Message-Id:Date; b=OarhfxHf/Z/10uQRa5cUXRhsASqRseD0Ic6GWti3z56cBTyU9G6KiU0wtvgBDLfV6M9J/7AtD4/8CgtyBboOiJc2b8M5nD3Wn1H04GoahzDHaZnpvk3Chsszme7nOCGaialbCO+oNOwV/801dyODHiuOkXIR07X7ssnWGx8if3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZR1oOcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZR1oOcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01DAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751251193;
	bh=HXQePkaduZ9DpLKwuZJ3w2qWmACTwHXFi25bzOlqVFk=;
	h=To:Subject:From:Date:From;
	b=IZR1oOcK6UPC9Z1ZrVjjP+RPsHcB8ZeTW+ySgqwtOp4mSKOeFlY/nXcWg40c4egWd
	 ofwBnMuwbqRrZVplCSIvmJQLBYJMRyONm0CmwTT2sL/9K8ougM7b5XLvxLgjCZoo/N
	 ISeHcdQHi23jl3n9D2Vd2m//74WxPTzvLR0mxERU+KfoqJr6KuzJKzUQvnStulNyY1
	 k/mO2XECgvjodkNUMcfIfrR1vEJzL1xe/IPPYo/63agEMLANVTm/AzM+K8edS7HrHu
	 oyHCpG60bMCsFX2ezbStGp+HyFwo4OxYEJO3x62Cgr4MXdzv5jwPc7MnzwgQ+AQkkX
	 cUBbpzLxxQiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E382C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125119357.8573.5574691569012749151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eddbd8ca8e5bba43b59914e6fb536eccc36fb144e5447a7b84960f383739c15c
Date: Mon, 30 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751251193
