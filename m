Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00C03B8BC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773072293; cv=none; b=TC0l0qlAO17LlBT/yecmZK8aOYKMYtc+guhd+YcxIhShmB9KZhvTTk6bGyVzc3bqDnqptCxyUt4a+h2yENXs7mzCCxMofh8r4UdYGXMtrazvNFD9LqESUbq/6BEHhFWQyHPcnO96Z5yK00uFaDATE5ASD+R8+g99kruZV8h1cEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773072293; c=relaxed/simple;
	bh=b5EEnW2PISI/1UQJkVPWMgylhyw60vkS04OBMvU93Tc=;
	h=To:Subject:From:Message-Id:Date; b=ZGfto8pZYkffrevDItd0TVmJNT2U5ub8WTqT3e4zr4m0PGHCLMq1+UZ8qLPT0oAklDpqYdN/DnpaF2Qr8sNqjuZ0Gj2EKcsCx8dNZfFXf4EDnhNylYGV0Odd2Z8ogsQEDbw62YyNt1no2c/QIuSYWo3ALxn0l3TTx1mVzI6s8f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAf8HQ54; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAf8HQ54"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB93C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773072293;
	bh=b5EEnW2PISI/1UQJkVPWMgylhyw60vkS04OBMvU93Tc=;
	h=To:Subject:From:Date:From;
	b=nAf8HQ54wyCL/b9RdfX8mgkKV5Lg0u8GTqo814eG9Ztv7eP7IyVBPmf80XBK5VYv3
	 KnTsFoOW+3aOSeCzyU9XVSX0TcHJ6y+G/D6HMmaJOXDs6KuP4WQPzROtFIHqnEghgS
	 arrqidqGsfR4PS5BOQBLROFxCL8X37ieldoLN9jYVbFDQshhr7Dr8YbBgXqT29nRPo
	 yxbIGAeErAQKeuafw48JssK4Iz132f7pWZymXYAnEoOwo7fvPgR6SPW0l5P8jyXE4f
	 XHV7LrgqWdl/IoRxxcY4Wby5XOwtML4BePdm4CO/5EUq9+uW111O/GWvm4pQnH8CPD
	 I/8YQXU3r9DSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF0BF4180C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307229358.7370.1296495804553623784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e47ee130b65d0e5116c5023211c480e41d9f551e127a50d04c5097d41aef05a
Date: Mon, 09 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773072293
