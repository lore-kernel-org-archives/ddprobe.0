Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A22C3FE354
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780574074; cv=none; b=g+37xF6wSEVs/K95bdeATieqWvMP4t6qgy+N4PAZUTP3MGOhbMU99hwJhyQhm676sLtMB6Ix/QJJGIoJQz+4Ai5f6JJxIlA308qFxJIVspUAz6s4Q5O0DnsrjVtlLKHLurzla1kY+TworPz23gRPi66xO8PZ9kOXIJnCwrIcS0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780574074; c=relaxed/simple;
	bh=aSWopMVe1xRYig2xOJSGQUPizmziuc6ivKOB+TAe/aM=;
	h=To:Subject:From:Message-Id:Date; b=swf+HF8cZzxZIGfnhX4ns70vrQpljoHQ134gMwwBjROfWvZY4GMWGUqTql9Sh9T2JnwxpAz0rsecKboCjPCs/BlGeq/nXZ5WXUcfTpdyztKMCX0TYUts23sjlZtNJg0Cb/ekbKBHfMggouwJezrB8hmfzZ0ovpYlR/2ovr96om4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB+xtI8N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB+xtI8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CC0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780574073;
	bh=aSWopMVe1xRYig2xOJSGQUPizmziuc6ivKOB+TAe/aM=;
	h=To:Subject:From:Date:From;
	b=kB+xtI8NsnB4Tpr2vBurP/smzKk/qtpsv8sEXZ6fU1Pz7eyl+YP7bSpuztZpXBye/
	 cvjqHusPFsCSXYdhCCZPTRF6/wIGQqieCOBbHmF+IB3VlxJ1lnjcWCNU8ptlqo0uxW
	 QnfAJSFAsBEuQzFPAeyF/BnLgChAGgEPNIPArARRefb0WOU1AzEP8a99gTlTXpG6Bn
	 W11eQJ1dHyJ9K8iSMFtfO1m7zbVZOIqvYOiBL3npVr15kOE4CmY5yyV71SZCJH//Gm
	 pH4tVAb11bgTGNMkALLUc1IAUE8p9BzkA2z9TTf/0UeFQvBFqrxXStglRvCk/NPWKq
	 5pS2QDDRdjZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9816CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057407368.8138.4752761833987820803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd8a82a4d2745c09f6ddf0d7b610d81e25f17b454e38f47ab5a30e34a55ed41
Date: Thu, 04 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780574073
