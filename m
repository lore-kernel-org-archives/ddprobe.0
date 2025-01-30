Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1171DA5F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738273554; cv=none; b=HN6LfO2p0I4TDgEEmswAfyok241Zdkv+f1O6Jqpb50qMlDy8vZitSF0W8hFjR7I2lu2G5rbXVBi2aAvEY6AkdBfx8D/VVYA2u5yqYAbra2B2TursgLfRENAiqM69YaZg4TXjDTLB3MjGsKEfIs1YrHLCXQyAtsg6LahwfAP2YKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738273554; c=relaxed/simple;
	bh=nWEUX2ucVuxKOHUZtJioeyEYaK8zQFTLsOhzRbC3qfY=;
	h=To:Subject:From:Message-Id:Date; b=GWDJZ2ndHPrykahUOJa1GU6u8IMtfU1n9ATcSyic9O6MDRCQ3Dr3BO1sQ6ZdHf+t2CEP6fK5s7HD+3iWZcBzPdxSAia1s5uEL+AZT8ZLEEpx3RO6XxA27iefAy6z+o/tymnfwat8aghs9cwtr81QhzhIlrpoLlxcTeFU19fg4RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1Cjk0k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1Cjk0k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B4C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738273553;
	bh=nWEUX2ucVuxKOHUZtJioeyEYaK8zQFTLsOhzRbC3qfY=;
	h=To:Subject:From:Date:From;
	b=G1Cjk0k2aNjivnPauMZXgIw61cSP2Bo+13+4plfmXXlbhRKayqgPLZFG9XWh9NXbE
	 sk5ulkw1LAwQVL9klnh1CUIK1Dscorj8wJuTOuTnspHd6qZ5XJzajsunUXTSGeKmWO
	 JgmGCnJ8q0f+FlJfs/iSxQYBdwHnBAKmQm8vUJ4vmbRuDJ4lGqhPaP7tkbhh0WntvE
	 1bIT0uJPNDXo9Wvc0PZLVv+ARjXvZru6Z+ZzsKtUj/q/CwuNvWxGzBjd50GevJqG3w
	 dV79e9J3doFulGeZ4vheqzswA9fpG1RV9VrQDyA4gHxn262UkaYn/MEzetQK8GdpKn
	 G64bCHltuCb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1BAC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173827355369.31850.17852097322995928825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb7221249dd9257030352be12c3599f286a3d5fe367a21c7bd52973e03bde26
Date: Thu, 30 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738273553
