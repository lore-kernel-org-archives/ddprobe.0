Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C39AB652
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732718754; cv=none; b=nzRd46lii0/XrFE6McSVoOSjrcu0XcL9fJ9F62ViCABhaiNYV0acnbjHAjRhTMGLbHNcoDKwPf2Ju+WXd/0hSJb1m9u69jNhQNWOQyHAm4UNFYr06RagvPf1jTNTlpY2TcSn/v83bPra3USXop6ETjdgG7yCI6QvEgVTYcHBhr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732718754; c=relaxed/simple;
	bh=RBPKbLhz9QQAVpOV4PTGduv9WA+DPYIadETjfb8PjSo=;
	h=To:Subject:From:Message-Id:Date; b=Ek2YcjxrcxiLR4d9Ax57n/xuwf+DVO4f741IENbQLLcPy1BQaOP0p+N/QIvxiDbEwt0zX+ArOyEU1D14ntsdc9LRfCEPXHjDGWzOFknIItN+WcXbXVZMV0kDPr2UTcAaift+o9DnsqkubPJS187NG96GF0IHXrGJDHwTuR+6IyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E66xB1x5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E66xB1x5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710FC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732718753;
	bh=RBPKbLhz9QQAVpOV4PTGduv9WA+DPYIadETjfb8PjSo=;
	h=To:Subject:From:Date:From;
	b=E66xB1x57akC9UsmYO3A+FTmBc2cNww9GYPNuC35tXq2Iz0/fh+mJBmp78OwLQD8F
	 INTh5GCpRpTCQ65wWZSIUo9i91/EbIYnGrU3NlKglZqz2jWcciyH+fFiQfEfZFWoqK
	 f99TAiYbdKHiLF/0wlchZkPZ0ppbT2fTECFhiiq/hh9sMMiP5Da8xBDNkMhncoD7Sz
	 MjtMQUnrrMe98VsJvfOgA2CqVllYthPC0K8qopyV1LNiLtiuqPaGjwIePoX1EFNy/4
	 4LM5MD4DP/aKhqFoROAJTFAXtVP9Qa6fHKQTRFIaEiXxbkge4JEO604VdWi4iokgKn
	 ZJYMD0NTjRNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B33D6ACE1
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271875358.31383.13563700752565897586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd144a83ef61c5b2ecdea30a50208e6280336bdf40be0c1731e05f5053dffa6f
Date: Wed, 27 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732718753
