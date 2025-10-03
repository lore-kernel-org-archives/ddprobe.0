Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F1C1758B
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759471194; cv=none; b=O+NHTk0v7BbrG2uaFwTCc95uYYpzXJdSY3+iLtSp8Kvn2oBDtou5x7vTIMVXYxW7g/WhvIIPyVFtBB98b0jb2ws5Ggi0lTLBO4JGghy/u9ezeOKNzy1BksSrkyKctXuJc/64/xPntvPz55ICyRJAYyb4ohj3dZ/Q5oD2gdCMQ2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759471194; c=relaxed/simple;
	bh=EOFyGMdZWgJ0ycqxABciGPB/XvY9dALrZAEVtOnZ1yA=;
	h=To:Subject:From:Message-Id:Date; b=g3BHu3+e+p3i85y6eRrT/xBYuMs5TGMmWzWkUIzdsUanO05XXuRxgpa2oyS5n1dXb+Wprw7qiafTMCzeFMn03TmMPZjUtrPzp2ofqYfYvfE2aV7IXCAlliQzceAc27JsXZlHvVvazLHz5c0/zYAMK8tSP05hurlhXmsNJpbkfhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMP2yIEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMP2yIEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E05C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759471193;
	bh=EOFyGMdZWgJ0ycqxABciGPB/XvY9dALrZAEVtOnZ1yA=;
	h=To:Subject:From:Date:From;
	b=TMP2yIEvgXu608rEEVOFkn/iKC/cXI3KpITBIZ0ZF8KxfMD/n5l3jGBZLCy/RXyX0
	 aoHOHoJOQauyvYfNjMw6ciSEpDLz9Xi6kledTxFQe+MhpDH2fAZUISVnpKwYNtHgG9
	 QIMVkzgc2c6BXLB6CoHfHMXc57dGRyvCRLTegL7WuHnNH5x9XfFws2neZXwIqXA81E
	 3AgKbj+FKkn64JJZpWzTvN3RnyHIPWsrOEJMAhyEAdwDPs6auaaBbrHrjc2UmwOESU
	 w5LeY7lUkqA0AzXGgEWtU8XL/vRQSTD6Sf5UiTpV5GrTjMsiL29nZo1YDRStnDLRRB
	 m0xWaXidf+Jfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5ECAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947119357.22551.18092531465606375460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33fc1bf904eee9619b101f4cba7734b41e24ea6f8684ed6ce9b953636053d57
Date: Fri, 03 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759471193
