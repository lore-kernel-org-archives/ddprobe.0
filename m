Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5D93FFAC5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774365894; cv=none; b=r+D0o33f0ssV36pUQsP8Kp2EsWim3T/O+NQfbHkdQyieljeNzNe3TKIFmqTmKyOKIqjq1POJ6xf31nJ8muASbvp5ZinVyfyIhsIA9Ya8XXiM3z9f20CAWXiKJ0Z8UPHYikWuQanoCNXD5SMOO5Q+IpurkUnMNQndBNS5/w0c0KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774365894; c=relaxed/simple;
	bh=/mUxkEnhRIMsSh5ICLkDPef5LrJbT1hOhA6yXxz00SE=;
	h=To:Subject:From:Message-Id:Date; b=qIHb1+FHaoo8PVc0rTFf0xYNTPk+4VOzetUb8/5qpX+TkO7ys7SRTnfaRWwx1ERyTqi8DKhG7VV4MUo/faVXeEcDxKrTBfcHv0oMfQayOyB1V4RNWKXkHgmJc/q2XNE/F9suRpoXiiRzXX4LvSBHAusTdrq2ckYOxwHwaHaITjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDDo7A+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDDo7A+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD8C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774365893;
	bh=/mUxkEnhRIMsSh5ICLkDPef5LrJbT1hOhA6yXxz00SE=;
	h=To:Subject:From:Date:From;
	b=BDDo7A+jSyh0Ue9kRkNd9HMXXOKtEwBHKDshdMKMdYRWSkobpfzAQT1O4rHTNGXSj
	 UglmLaGztKRXffPTg8jM038/vOqCk/bM2P2zch4nVud6ywwTIwTPuZuBgyYjBZUNZE
	 1IeONW98je1eJdh6lrVp9D3EZj/2PidxWLdocvSOO8g/7NdqkPXLquR9Z6p3FPDXm2
	 UhuGYSqbViz2bKKuqEwGC5kQ6A+3oJkbU+G0ZoXyomr6IddIpzFICnn9qfJYH+EI/4
	 0oLVbdsBFCL/4zI5KrfaJgIuicNayq2sqoZWZ92mckc9vnwkngLIZEGTONoqp5qv8s
	 PEFjQni8EAaFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903FCF54ACE
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436589358.2008.4949427312380157474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d36ac4068163cb5de4988a6952673d8779eacfdd54481a8a4502a620e217dd3
Date: Tue, 24 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774365893
