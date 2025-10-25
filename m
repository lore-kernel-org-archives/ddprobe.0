Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267EA5D8F0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761430794; cv=none; b=ewEeCHkea2xrPP9gCbz40KRe/zTg7jBjFSkMq8Duqk3dkkqwF3nvCmHBDKZBEFXrLIsmUCXmZSmi/JiF6IYYtRTnjpr9UnZdixHNH6dooQM1zkKtz3xTFzE8AgKiQy5gt6krLjCQhCNgiXUqO2PzeMZRXhwbwpj2/8swEcmVMOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761430794; c=relaxed/simple;
	bh=kKR0oOYx45j0DRdir0cSaNc5WcJq2N6JLKOax350Bnc=;
	h=To:Subject:From:Message-Id:Date; b=KtNGKvCq0JMc2YpO8LQlart11MW/QJTn/FSHpxE39IjcffWjRM5AhJvnTI/y0v3SJBWbZZTd1OJ086EzRVHQrSt5p6fancGiE2TEa9UZ/JhY46rsUW6DrxVWYyiHxN5ZY8K4fRom3uo0oYwvLadUEveMqRi+VnRn+2dzU7aZ0k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Awx22VBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Awx22VBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D7C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761430793;
	bh=kKR0oOYx45j0DRdir0cSaNc5WcJq2N6JLKOax350Bnc=;
	h=To:Subject:From:Date:From;
	b=Awx22VBNqMbgQN22Uu6QGXEHDMowrohfklfS2EoAUH6e6XDmjfZ2jJE4f5+lFZVJC
	 ncQ2HrXu/DQ+BG1wEjU9hsNMEeZrhMogojn07hZtPyHrXqFyck58M0YE3ODCzNDjSy
	 NfGFvYQDBbV1iFYJ3KqjqQXtouyILpTyzZa7AP96BMkSLMJzdIdpn/oJ2AsfbVq7yw
	 9nO0Kb2C3FuFOfEGuKjqCRChHbJM2hCYx/evQloi5DGDXCv5QUSLIuWEpS4jLv+Tgl
	 QykQ1Ly/F4HdGkwZ4zM3evqAvkcnu4Kq/B6hWCl44fYFoHU++oFvmA/G8TbUbJtbsF
	 kXPbWb0JKhZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A5CCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143079357.18957.16872024160336289118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45919c7874fc0d1795f0b74c461d566e6767a2efedb824402a3d6fca27cd1496
Date: Sat, 25 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761430793
