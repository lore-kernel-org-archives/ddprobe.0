Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502E2495E5
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779405754; cv=none; b=Gg3GuwQ7xk8kNZSjoV6ZM2YC2yrdlnxBV9zi+TQlPasR8fmIpLfG32MMIF8xpzagVYbElDw62MUokK1IamXnVMjHnT+jltcZ+pNTifhJ4l+ylTEm6Hf09gdrUp3xSwAXK0yEtRywuQobrIHXNiJu2D6LQ5eI0Fib/cx58SJmFd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779405754; c=relaxed/simple;
	bh=4Z3xvJPDx5Dq8UDuNQm5o6X0DcsCYbmXAg7C4OTiU94=;
	h=To:Subject:From:Message-Id:Date; b=fl8uGdST3jErjdnAeoLzV8QgJTkETk0alXzZuYsxj3+pGjELr/APEOftb7syf4HuzkWhcoMtRB7zv2MXzmDyvzqSlmxLJVK5+vGvUXtYUI7l4zFzNCltkNXPgAFTJDrjnhqpGUmS1bBpKNQ2Ew6VPjZOdMhhktJjbhrnriQN0gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6dRjf8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6dRjf8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED80C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779405753;
	bh=4Z3xvJPDx5Dq8UDuNQm5o6X0DcsCYbmXAg7C4OTiU94=;
	h=To:Subject:From:Date:From;
	b=Q6dRjf8+twVYi70hs9t+AYH72sMT1RM5bSJQgOA3mCS8ZFVw7BPyvTlRPv4Awwokk
	 /6E6nHBhBKccbQJ+a+NhOW1DqrQgEXbp7fonoxrc+1rq6Y8RH90v55Z3sI0s4H3ojC
	 CdvCRC6FNYDsRz+IHkooIgiEg9Ba36a5+STur7cv3gkw+MDRJ+gKMb/nB76XBhzB1p
	 iBKnvx2ElayM6M0F/w9npAh/al1w7vDPPP20GbeTUCp9stP5dZTdddjASgCf3WDT2j
	 LRwOocxlVExJNpV8MDHHhGI72uqX69VL/VeaFUjHFZ3CU2jz4wYWZNcRbhWg+Y+eh5
	 0DZOLXBd58AIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA339CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940575368.7943.16243626959389912545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d055efd14b87703877c6588037443cbbe9efa39f161c34fe4a28e3cd2c5a79d
Date: Thu, 21 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779405753
