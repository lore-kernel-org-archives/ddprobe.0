Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C703B8D52
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765843374; cv=none; b=IM7nsXAfeXTL7n5YJlSJX/vX8lsCHS8dfaRd4Ckc1xixQS+O7nz6VQK5Bb2PljwY7dC7e/wHvbQ1iilhJre1uH6+2w1ud6UZr3i/3pBDHF4p1cDZAGX/8FYqtWKOQXh4yxo7ABivrPiOufk1CRCc3FaFUwV4t9wh6B3msV7KG28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765843374; c=relaxed/simple;
	bh=XnVXuzaLha6xzdY8hGYdJ23pBVqfwSB3AxDhZROs0ME=;
	h=To:Subject:From:Message-Id:Date; b=SUdSgYzuZnY573Z2E4YBCB+UpIxpixMgfzhef5NNdf17RxgmS3oN80ukqdH5FGyFaEwqSzz1hnqDi/3et8gqBm3GiMfYiuHKrZh89Mwv08w9K8xuWuDKZIjOMErfeFec9wX5VkmcaJTc3qLkHkd6YgMNpdCmqckcEJUeaxrwgto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPWZb7bl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPWZb7bl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24C2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765843373;
	bh=XnVXuzaLha6xzdY8hGYdJ23pBVqfwSB3AxDhZROs0ME=;
	h=To:Subject:From:Date:From;
	b=gPWZb7blaEddixtEUkIsLcoRZV8UAxXTb8AC2lEHUbz3wAMfYTMXcfvYTEnrooZ6G
	 3FPcCcEGxeoJQSymcSZkjSuU/3JTpeMWT835W3Rdl6OEoZC0eVbiKcQQnqygoTS4bk
	 yqx/9yan7HACUT+U65lZBO6SZYDT5R/xZc5ZJTFnlnvc0FCKcqXk3GF0luedEKCylA
	 A0oZeRQxbmhj7BZNKimlTVZ/riqAjYEnpbwiWVU6ZwykiUE7RX9PmmzD7Tkrnzey+n
	 Zf1rM47R91fWUMfYHj8RBNmRWtqJ2EWhIY1M/m9hzvxGA3qAyJXvSBPdRxxlO0EHjT
	 8EoB1n3CG0Bcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C58D5B87B
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584337359.24192.16530631838989022798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37900aeef4ca2e0b1da9e2e699567cb3ccfac055645cd24d0da22db945efe64c
Date: Tue, 16 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765843373
