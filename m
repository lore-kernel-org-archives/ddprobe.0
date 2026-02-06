Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BC9314B73
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770364434; cv=none; b=JNvYGX5EqA+VrD/+O1S7o2lZuJrRC67ojL/pIOdkDI0+K0B5z8UU9gbxxnbSOpYFRCSXw8ErPYi5rQpD39I3lKozebCCe0hDIKAEgf/dWNYoDSPYos0o9y+0hMhkEqNwqfZpsfpH5TVN+L6ToUAGy84NuD3PVez3z8/MYBCh5ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770364434; c=relaxed/simple;
	bh=PIKr1p1m36/vlnhKKM+lrAnnYAJC2e1ZDoDbmEed1dI=;
	h=To:Subject:From:Message-Id:Date; b=XMr0q6gL8EaWGrO/pojTunzAJni5Y5uESqJm/lhoAK8k0XXG2x/NuylnL5iN/BGYjQAqzS4IfiRgvKtYn1oDG6IShSZjHxXU1W4XNpzxrpuKH3nWRG09xiHGoWM4xkbBXba092hOudGYtlSSP+xT+dtr/CCIaRTLQZ2G8HAJlj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAWKFzHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAWKFzHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4071C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770364433;
	bh=PIKr1p1m36/vlnhKKM+lrAnnYAJC2e1ZDoDbmEed1dI=;
	h=To:Subject:From:Date:From;
	b=cAWKFzHkvUpKSCvNwVWQS6l5f4nbkAqebXFuVGoyzAQBtf/UXpCmKIgFLKkdwAWZL
	 QuSWhw8Wnw0oj1ggwvOZNXsy+sXJifJcB4tcJmtgY0FmRj+sARee04XceeqWZ0IP+c
	 Rk4Syyq1xGv/nM3KsFKIQ6r2CJF5s5m75GoLSscQfRb2NHWXmWtJBybunzAlu4sslb
	 W6KOvrYqu5lpbWUXMuu0RxYQ2W0yoiyex5yjCAqvAJdCdqZdIZdCBXZlrIrUYRzDHC
	 ZAhrJE7xRdWa8BUrePxjccz1b8QEc13l3to5huMLz3LCJ3w9F176nkCGnguw+ZRzlS
	 ZerLXwPoebCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9472FEB28DE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036443359.11640.15394634135002403151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb173f2342df30c9a92d4f2dd8c2d49cd0fe236e0903af7ca5e35ae674a9b73
Date: Fri, 06 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770364433
