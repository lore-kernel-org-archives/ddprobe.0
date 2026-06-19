Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48741394798
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781875594; cv=none; b=K3+ldGABQiSp1t9ekU2sEnSxpAZn7Kiv/IM1a1kbW/Xu44sT9hexWUQLIPhsAKQwEI92y60QtHJsCtCEhviuqZCfXNYLo8S6SajWAC9D3pd0PGnLOOX7GncjPHzJ8pDDfcelcXsKbGNbilcnJfOmZTIuLfJRh9woXEIj9i37FH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781875594; c=relaxed/simple;
	bh=OLDR35wqZik3O5scDXDZoCWVl2ZAANLWCEv8aAB8xGw=;
	h=To:Subject:From:Message-Id:Date; b=OQq1EPh/7F1q32EFFzXR7C0rbbIjWKQB3QBuKPxIGvo+OTJTwdMBHHdR3ySHV9MJXB9purKPpZWZQ2l2CDqxmYmkGjtFRgF3AJM4JljiAQqKxljOYosEHJwx9Fm18V+7ckS7rZ7zN9iyRXfnR4uZAs1TmpHhB/TPFnCJAA7H2/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhn6N+Xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhn6N+Xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E3CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781875593;
	bh=OLDR35wqZik3O5scDXDZoCWVl2ZAANLWCEv8aAB8xGw=;
	h=To:Subject:From:Date:From;
	b=uhn6N+Xf9H8LQ0O5wTZ68RcE+TLGpQkzaPLFzPDbzJAQng+5NvCJVj9vLjphW+taG
	 WZJHN81u7rdiuU/YLT45tepMHbLafeJoeyFqY3Vh+6JJXz3806Tnn/FC8UeNXZ9YSo
	 tx6eE85HWQu6VbkDfAlSskFZNIW+aoBkqzzfRYBadpxzb16+GGX75v5KmjKsaysFzG
	 B0UCXf5vZ00hI2OaMAH8fJNVF7mMG53EVMg98toug8wSfh09zZDwmZ/04oIu09rtvz
	 Mkhv4/00WDHkgPXfnhRk1cPVQIV23kYw6oGBJRKemQ3IQucz21+ZJTE1M1L/63hvXL
	 pzsu+8T0dlMAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E43CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187559371.7129.1543443167323360955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68abcfb47e235548e43cd308d481d795a70628852f2cc4fe39cfe9e291fc572
Date: Fri, 19 Jun 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781875593
