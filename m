Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7C42110E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766446434; cv=none; b=QFYj85jj+IlEuUMbH2IQkBgtIW1v9LeeNKCqJRuetSRd/PF+ZYJyKtjbytREg8pe8Lxk/VqzS6scUsf+U84ZrxZnaM28GIZksuApFky1mpVAuST4ChxPP0ZhAwvtaUSW0kvV0eULfLYVAZUyHO1OMxV41nRdlkyMa5ctotEyvJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766446434; c=relaxed/simple;
	bh=ZKWL7QYpGqPkrWCk9CakKVK8g7x8Axlb8zsaQEUNMkg=;
	h=To:Subject:From:Message-Id:Date; b=q4iiM9LhKKhHiBqwhYdy8O9Vjtb9S/OnFlyI2od/qJ8OlHtO89OzOxlaZQQsWd/NR6Q4i9ZG9yCs+9l4k+1PO9ntEeWM1u/oDRcTITQ1P7Y2AWWV0Vg9PSVaR96JCmzx2cn0KBysSACicZLdn68xHbhhJadtcOH7OwSZdjYVm8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnYy21U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnYy21U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1936C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766446433;
	bh=ZKWL7QYpGqPkrWCk9CakKVK8g7x8Axlb8zsaQEUNMkg=;
	h=To:Subject:From:Date:From;
	b=RnYy21U0M15VON/+gGrVewTqluUDhBa9JtMxVaYaLyp0hIbNlE6N/otMANOw+GfGh
	 nFxVHWALsH9Uk2LmC/TidRSP/SAT1UaI8GwB9pGRq2Yr+WY0bSe/TnHrKjgwxvLIoU
	 UwvtX1tR6R3f1CGBf89K2tyjfQKWOkkMtSUjJ1uT9N4nLNUIU7+EPSqITRtDjeqAu8
	 aOZozBh5WXe7jgMFhgr3lMqzzPyrHgYCgMhyx60jecZDYglyund+OOsy5oMvz8KLan
	 UOROrn94E/MkMT3oDuRsYzwQQf+XhEkkSNNIIx5pqXiispVoPeMqicuKdYzuYQyBB0
	 cj3l349uNNpAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39DE6B25B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644643357.7720.11466044770361893006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7a2cf818c63831cd7c2a88bd0282702a3cf1c28696f110926b9053251f1a27
Date: Mon, 22 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766446433
