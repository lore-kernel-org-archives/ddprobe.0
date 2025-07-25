Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9572EE97B
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753460994; cv=none; b=eLEfyflR7pUaYkGuSTy9wd8WuDrHcL4CYqcdsP/vb3pJ3S0cOxtp5np49SDTEKnJAE9Qi307I5aylgOOw+8a5+m7eBDpl6YfAX/374OFy3LZQ6hf9KXYHUWU+5R3mM/gpXB9HYzvGfXa7TAPrxgw5N6Tob6e7BOU2i0eSs9iW1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753460994; c=relaxed/simple;
	bh=HVfDgNNeUooMW0yd6suaP4R7QdQPPVxZk81XSeYqqp0=;
	h=To:Subject:From:Message-Id:Date; b=J3j51YOZpx69FYn9KhZt212VELSsjyLIXg3a8W8e2CE9gehZbkBWJO/MPqWwqLAs/XNVhOvUxfIl3ECuRTHew5PEr/9A2AhpAQuyvsm6vsTbnp8oEmM+UpHDQX/Xxpgnp6iI/6clo8pRR/k3JoEpuSipVUEFELhLgF3Wu4c885c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhlu2Qe6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhlu2Qe6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753460993;
	bh=HVfDgNNeUooMW0yd6suaP4R7QdQPPVxZk81XSeYqqp0=;
	h=To:Subject:From:Date:From;
	b=qhlu2Qe6tDbXtVk2FKtz9g+RAnW77vPlaL+Pwe+kozJqQcwRL2PZYkU/5MyDM4s+L
	 HGcPVL0a37FNGUehyVt/ZtjnaBp22hbh5QplDE971BhpGX1AsUhH2Lg2LXAu4EvZbi
	 yge2tClntleoxwIs/IVOp7Mk/eCArlzw+QmH4JxfwZY/MKQpR1vpGxrC708l5Hr+SO
	 hbLFXSvbD1Rm+SaE+yVjC/J1B6+kg1aKZnJqvdpLd7gtiHBq+MNDTR/g91oKnO1u63
	 8molGGfw4L8mx5/DppTxF6nLT6oI6m35/DcfmqpSKa/0n+groHCAL4x1jibz/yVN0D
	 esqjdk4mFCWnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E3C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346099358.16392.10060195493714627434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9534f2a681f9d7f3e0cc87dcfce13d6ba3386fc53bb5dfd7e455874e80a8b745
Date: Fri, 25 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753460993
