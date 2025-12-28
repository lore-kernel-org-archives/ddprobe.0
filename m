Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8C113C918
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766934234; cv=none; b=c8v77AvKNcZ8UmqfInk1sozuOzEC4IBXrRFb8WKMMoWPaqt+vwWmEJeRe/Brpd/CXf6KMcL1KU346nMC+ctFl6FabgPnHP2voM8JREg9V8J7msZe8xB+qyry/T8yH9jAy6eqgYQ6zr6f4j2SekBbY9DsehNR06aKYs+lqoUPlmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766934234; c=relaxed/simple;
	bh=PBF4Lbmohif++XV//x1IGYjPJ1iFyU+vliKB/WWvZzw=;
	h=To:Subject:From:Message-Id:Date; b=VFEAvt98Llojca+yqDyThQXAUUVee20MM2Y4JG2Ii6m6TXO/z1itUWfTIFtKK5IINEZ4BXGPV3WCUuQ0Mk0zQtVUCl0f/Z7WBJ8N5qTUqBZQR6wGoLVAFKHoIIBlx11qfBQPP6xrTdxwUwk/jtBZUhBcj/pJodr9FmCWAT3j6Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FlNT0HOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FlNT0HOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC73C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766934233;
	bh=PBF4Lbmohif++XV//x1IGYjPJ1iFyU+vliKB/WWvZzw=;
	h=To:Subject:From:Date:From;
	b=FlNT0HOfRmm5++lEF4cuVGmzX4ayKLRrxxjMQpmAbAh3j528bNlM8nXi8L8+MpK2a
	 t7dzMxEys34BacDIfm4GJjshncfUwcVi4Q85LfdbQIgQiYL2F7u7cGUT0CxnumSXKi
	 jJz4Akex9XmcO7yISw0HCbV8DOy2hiQh8Ig5aM26excrUtmXixlgFeqhBb+m3Vhn+A
	 BP1RUxPUYJ98csBaGwH+EiLr5LzskfSw/YHUQiLzY8AK2A2cebRI7K3Nk211ZteX7N
	 VuZ34/7e3sIxRytpEnJtaDtWeMnjK8YX6k6Csc9MhgHeQ+GKRhv4IfAdDfocu6F5WH
	 iZ7eQB2wZrPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55A0D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693423362.19108.7030992195438254032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f333133da54020843a9aba8448971de3cedf844d040115915b0eed240ab021
Date: Sun, 28 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766934233
