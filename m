Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337B9298981
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751963394; cv=none; b=hjLQk1DFwqZI8HRTRz5S+ScPYy4lCH5hTH37InkV6nMpXCSPDao8TzbIVQNNej2cJWhTboZ5ssr3HojkejSy/YwOznQJgA9tuAdzyqFdIuKLBsoA9b8xBE+hthoV61SjgDSSeRX7z3bp2GoH1L2bjVVX9wLu6iPNrJMS4+75Tp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751963394; c=relaxed/simple;
	bh=bJwUxXf+K40BPfHdG2JI7c36IfRdzKBV/1bpTCkLQXk=;
	h=To:Subject:From:Message-Id:Date; b=V29WyUX/uGMiCBK0ae/b5i9Xr68vTMv7y9Q96yzQWtiB+Xz7zNcgCXGIcxgoqVtYRvUA+bpmhEuRATuzFYGaq8WlMRVcjx4ZR4Jz3zanvSPYj0eF+traEU59HowOynV8Hw+VOEemr6O5cXtdDDQvYP73WfovKLYgPXKZnYFTKuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kv9DxpqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kv9DxpqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3BCC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751963393;
	bh=bJwUxXf+K40BPfHdG2JI7c36IfRdzKBV/1bpTCkLQXk=;
	h=To:Subject:From:Date:From;
	b=kv9DxpqNxf5buOnC2bvBBoAZZ3juOvVfSU5yZk6bjJMm81rcnmYRGMdEqNGHQn+50
	 9zXi08oFKn8hSzq2RQgipkcb5b1xJniTlg5fcOVIIeiNn47pQ5A/t1RYi3m0Cii730
	 ULOAMDpTeQRCs90MBuHmLjuT7bne9L3dtExlO4h0R5JS8iIfAZpppxSX2mlRSYsfSu
	 XprVDyoZfDHmxGORqQcdVj2rax/CwwWqIGEmcUjYYFU7VlFlqyElvIgeGkhP+cIqUs
	 sIzD5kVzvLR57Sf7u4qHlfoIPTzkS4bokvxReZZI4x+U4sV9PpZihNfi5/V7JeiM9O
	 2U/gVNkYW58Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA00C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175196339358.19205.12646560924825332907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f0fdb5581b377e5794b536bea071ede9c87f0d2017c04b0df9f3db9c91f76b
Date: Tue, 08 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751963393
