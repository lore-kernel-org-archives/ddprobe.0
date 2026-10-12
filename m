Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEBA22D4E9
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791770434; cv=none; b=c7IP1FWVLBmWzyjAXZWi9wAm1sFZJ1sBHyiU5PHV4DJvayM5FHCC/id2lypmxSr2xVZ7QFVd8IjurO+YimheLUXyxZ2LSgvUtf+sM31PlFe+aHhxjZT5o6cU1xsdYungi6mUKbGSvMXSjXOBJWeYbtTrL/WKsGdOFn34MRs1qrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791770434; c=relaxed/simple;
	bh=8dsBafVYxnv3B9RFHMHuiUQxqEblzVCPW7+Mgyk7Deg=;
	h=To:Subject:From:Message-Id:Date; b=e6sHh/rxJ9bP8ESqqTwOhAtLN4BYiqK8zfMWcDHherCr37VRPZ36k9MOQJmiE9w3EWU3Ufx/JcZdx5RrGTn1hgzfr2Fg4/6TGsmnvxrakTTBTb7LXJyOgZG5nq9KiK8xvdXbCa14ODqNhXIF/eq1T0EkT8oXhA8uGVeMHcU9RBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnBpEIza; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnBpEIza"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB332C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791770433;
	bh=8dsBafVYxnv3B9RFHMHuiUQxqEblzVCPW7+Mgyk7Deg=;
	h=To:Subject:From:Date:From;
	b=nnBpEIzaw2eZ1w8OzjsXY7IL20kKTU8QQfZkrvZek5+SDWKlp9Yow+8gLBOS3iR7x
	 FJ29CXHaz4PZ0uwK+roFL+E68/IVb4uAOsGhBO7SzUa2fa6FWg+6fLIvuTc59aI/rV
	 lJEAU91l4R75FnTbtIhWSewn5aT84U5FImqtt4PuZFuWYcqK1tXsBy4+gDlr3iKWHx
	 6OYujVAVEdP8s82Yli7L2RNu60Q64NfWnRnV3FuxHmwcDh+v9ApBrun04jDg2xMDCM
	 NNyI1GmKcPaL26jEriM3oIMtIDZZxQE6ImIKA13mamsp+PWSC/tULKWgwyFSYNo6XA
	 VUEvq47lqY4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA6ECA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177043369.3287.973293276254672810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c3125b6238c378ccc191be5ae003310247f33e3816bca7a028cea3eb605dc8
Date: Mon, 12 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791770433
