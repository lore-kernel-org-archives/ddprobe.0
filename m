Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4461E5714
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784024914; cv=none; b=k9a8yQyrws2ggqoFxUVvzVw5KyJ2tWpa3hqT9G0qgTgXAJ1rEI+z+2M57Y4tCEKQUMmd4yjAKxQ5l1VtdQxNw6qbTaj5ZwF9MI9o80sRoz4yS4PYfVbTF4rRKD+Pb93CXo++ZRz5TzbIyBKPFnXT8hqNc5esOP93CAXCR9XeG6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784024914; c=relaxed/simple;
	bh=4NIkvhkfuDCi6PlZOgvyjg6fjaNc2GbPszTI6jxwTNE=;
	h=To:Subject:From:Message-Id:Date; b=oFvrJiq+SJSGU/lb5BoYIF3Likjo+Ol2dNbm+UNZFFklqRq1pgUXR2kmabYzRarAYOxDISRcca9+pDX5PL+SgrdcUZFuN+Te+Vcv9JSIxhxPIXv4P2V090gS5+tKSecvZ3y8KFAA2tx7GcVW9wvhjAMZwHu7Kzd/Q8WyBZyGMuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilZv4ZF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilZv4ZF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B8BC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784024913;
	bh=4NIkvhkfuDCi6PlZOgvyjg6fjaNc2GbPszTI6jxwTNE=;
	h=To:Subject:From:Date:From;
	b=ilZv4ZF2usNgUVRu3+8vSOKUiuCZTkSA31xWsitEh0Y/mDuQU1AN9Xo/cgJSM2It3
	 uxTszb20sWFyFaZUpfJl0+dWm8yknvplMpkcYLwR7yPjyRNH0EPKk5dkOmOxbtaQqO
	 d1PN6cXPzZox2+LMigjwf/ccg6DApFDmqV2H4c7WpFQbTJ0yJdLgXAuTYDvCXY/88M
	 2p3dFepsCsIRWOgBd9Voqc0yCVakZme8WTWO6Y1d32FNAbe+hv4ytT/NaIk4g0xwp2
	 IphCUYoG5bpSr8ki38clccBSciqPFuCeFvQberjqW/gtcoNNx02nPTbPsrpM1GgB00
	 Au0VDeSEFQUww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B20C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402491368.8846.12607755016230954454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6370a68358f9d19fae097b2000947739f770d2b48fb8e91c54b81db5262c94
Date: Tue, 14 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784024913
