Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C153DD52C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777966054; cv=none; b=l7YraLiFQelcIh0u5lUc/mhRAkb5er3NazndqzczHdeGqjZxei//ZVmYNsoqgp6MCTtjMSxsb7TMutzwuT69AL3Y8oly8a/MIgsNT31BSL5pF8rTa6bAzwbnfgD8gSPsCqSInG29DTt0RnOgg+sr28oVpG8m10XsHws76Vmm4Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777966054; c=relaxed/simple;
	bh=ey5an7k/pkLMD5jp+fPRpuPuMyh83Gkix+Gr1oi7jdQ=;
	h=To:Subject:From:Message-Id:Date; b=PPuD7dnYDlwP3tmql9Lh3nOhbIH0hXEJzyEEYY5iiSGcZiFprQkdRwoV1feHf2VKZTXJ+2ktoaszx6OvTtgYa+KjvxB/Wql3CdBwCQr2jgTJvBx0u7XqLl/VQs1Uta28mn/VFPvMn3wQeLgqqtJWywrmXoverAL1xo07DAGycq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxcQ1c/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxcQ1c/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FEFC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777966053;
	bh=ey5an7k/pkLMD5jp+fPRpuPuMyh83Gkix+Gr1oi7jdQ=;
	h=To:Subject:From:Date:From;
	b=qxcQ1c/jER5mSjs3tMnbSbMjrSOX9fIL/raFhyQjIiOXz46lam54Hd2FeGvV0Wc52
	 U+bJE31zC2fndNqmfRusHDIZew1Uk8WBkr8icTaQr+kKzWwpp3ULFk3m5e8kwJqhOV
	 U7vt7sOG7lYD0p6TGOP/9bW5ouFTJTkuFQoMQxO0x6Us8tFEWQLbKL/CZjTJjAI0sq
	 8MkpRWyFtK5zXvbOqDk1kMkc3L8m0GRdTBsnpIC2MeJQcpnb/5xU/hR+mmJ5voPU4R
	 j1qvHmJzYj4hFiyS8+9NIp5ImmB8QzFELj4Tbo1FMILRLEw/S2fr9Y431E1f72bysT
	 zdD0XNaKIwyrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96EECD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796605368.15762.9105583813973989466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a0f7d63cc0e8f3cc0849473a6050276d09e540a3e6b78e3d1980f256c7db280
Date: Tue, 05 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777966053
