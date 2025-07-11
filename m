Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D44C1B0421
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752275394; cv=none; b=O74jFcPTLb5hkpA9yoANBqtqewc+FYcrvy3WBdu20BUOFC4S1AW5f3xv7fx2sx4dlXJWnZ/X6KbXnbCsts6OLPqXbG99w0gDVJq4zijUrk2T0gN+3IGOKljAd3tlCC4Fq+KGfC8OQy2yHNjpSLnPcxD0mmynXXQORkgkuNRjqyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752275394; c=relaxed/simple;
	bh=j0ji7rZbCmHBgrfTxCCJYcyV5LQNGPmzEyltz964U50=;
	h=To:Subject:From:Message-Id:Date; b=hDQb2NyL85ZlbDNAmQZIEX3kfUwsezsMDSmdjx23hTFxNtj6DMsMznz/z22a7nAoQ7VXaLfLSHTShPU+w57y1rzXkLmCj+FvmrUqQdQvy1+5oeiPRge6TZHCu1pSRC/GV2zv9hXcSDSxnJ6dfMn2HhkbcDtg6aOqRSZPBh0+4ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC4vJQbl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC4vJQbl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD9CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752275393;
	bh=j0ji7rZbCmHBgrfTxCCJYcyV5LQNGPmzEyltz964U50=;
	h=To:Subject:From:Date:From;
	b=VC4vJQblTO4uuAUOsubzYbi42a2DbO6hPbGRP++2k2/jIFSbz4lBSjHdjuzXFcfA7
	 B98e7ZefljSl9VqYZtD0uLhuqLkEN9RqLBy7Mj5MeFIav6pjHb4iandhTsF4nO/YCg
	 gDUb+OYfoP7SZ0MY7d2hLdLAO5dsum2yNCKr8U6SwzeIpSiuckK9uPp35sTLgyHYmJ
	 fSV9L6jbYeQQDqsvubJI8aEaA2HOE4gxoF3c5xhW8KdI4SM4bb2mihwm9VAZZEpy2V
	 qebQZ360XkgTNT1BByR29z9ouM54z1oMDBS7UbP4flPInryeKGHY6DMH6eH1TZ85Vt
	 9xOm+qh3C9MUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCBC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227539358.24251.9291470386767632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6becabab8da754f4be771d9301b24a71262d6fdd52eb01e5a15c6f67b930638
Date: Fri, 11 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752275393
