Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5CA315D3A
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757302794; cv=none; b=ESoTPvuKY1+IWwAAWe/NGe76XK/Grf1FpIMqRWsVDtna31uGJRBO9Vspqvk502M8yZ1FpNmODPDc4Ek4z/G2ker8ZPDPPBzTXGXGx9uq7pA/Bo7UdgRHiT1ojQ0QALtc8oI2e1nB4BdT8ZTwYKgjDmJFoF2eh2F2BVrQ+0/jbzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757302794; c=relaxed/simple;
	bh=154igXz6Fc+CxPnXtXrUzPpmlvd2jGuz17/bQ/vn6fM=;
	h=To:Subject:From:Message-Id:Date; b=U/tgGCu/yKsPJwva3svXD5mRzO7w1GtQLf247m9aUD06n3SgUyuDeigYpEKIcxAlwJxPBUdLo1OhE0sgQT3zdZiZKGkWctP24Z931aw6lBu5kCPG2tmw9m+YzO1rrecPfYxG2QywIZ4nWwdVyqXzxs2hBe3QmmFfUDZihcW7Jdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmFaWT0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmFaWT0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757302793;
	bh=154igXz6Fc+CxPnXtXrUzPpmlvd2jGuz17/bQ/vn6fM=;
	h=To:Subject:From:Date:From;
	b=tmFaWT0lnW+cInJEq48KVh0ZUkSnEC2rq8ZkHjna7DhvYOK85SUTa6g6DCavbRXGW
	 WAIC3la3HVr0tsGq/wHBMmPUH0YfIdziINjSO5YK+scGCDS4aoM57d2xljv+/rH97s
	 pd+Tz7we1CWl0uZtkN8tBWLnc5VimuRvw8k39j+K6EqEGJ0jq+l1MGkOLtIzwvRGMW
	 uOPPF4rHX+5fDByygYQRPRWQFjCxejYBaCEUMIbN/p+4c1XO+HV/qRfD4EsWI2tFnW
	 Cu853yG19PzASeJ7fuyh/tzuz8S7gWYw3zEreh9CdzzW30zxzkrhidNdpJWQlanB+d
	 8sDS6fXQi9tWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931BFCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730279358.4063.13999829840323556411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbc75e40d4704a175a0df13be175509386df9b1cf167b2ed8901b5297ef61c3
Date: Mon, 08 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757302793
