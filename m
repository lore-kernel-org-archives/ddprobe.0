Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854E035677C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787591434; cv=none; b=UblK4LjyKsYuho1e30+j2JON65cB42oYHhS7NX7C3ZWLS36MRd+Jdh0BrncR1Y5ikhk9dWdF1HdzFmbNis8YptcyPBF4ZZ/Y4HN1Rd0vdTbhRskM/WwFWNd/7F2X/BeiDtw4x9nU0ICUotXaRlAf9XK4OCaiW6fHb41ps0+C+RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787591434; c=relaxed/simple;
	bh=PgcBtDXBtn9on2KUqEqlIGV9QjgboEMWhqpM1ow3eBA=;
	h=To:Subject:From:Message-Id:Date; b=llvRBJH+8k18MsL8JdGoozjJMGW4ht6MfBVueAOVWV12NFoPS65DhLBkxFaSlqqJqJWabjlZGd+XHOWlYW7Qad6oq6ynCFmnXtEhb3xFUUtu7jZmBONMPwfJbVYcpnhy/FVWZKLMkAS9SG6C5q8aUrytkogXzgw1VmbGTbqYuto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qG/uYFqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qG/uYFqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D390EC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787591433;
	bh=PgcBtDXBtn9on2KUqEqlIGV9QjgboEMWhqpM1ow3eBA=;
	h=To:Subject:From:Date:From;
	b=qG/uYFqQ4DErCv5KUVMYs5aMl3ZCrKal/F+s/F8RCly+9HyvVxnQfs1V1osk+94k8
	 +AwoVX51S65UIg9axFzK0gPrc+RSNQ9X92GAedXanfIWaR49EoZFob3EHXFiccywaC
	 v+RWxeJE/QxaVI4vu2Y85IxD6ucUH2o62X0/+7rn/uIjLXb9WkYrN+yeOxgxURBe1Z
	 emNOoTHuWBMjIVvTXWlMWLIkmQAyMLjz/FzrKRLSLlIMoz9+NmlCYpftlVJjXPFQ47
	 o9wS1Kv0or15QHtbuIks3MjZBBt4KmKGttGNqVm9aphJOuz+VJ5gH8sw9BdRPovOHK
	 LGtTbNYXzwBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE100C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759143369.1484.3441470317387286405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 415f6a85a7ed870dbc8f1ff5d275133ceed3bdc6e5b8aa4fbeee79857ad1d757
Date: Mon, 24 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787591433
