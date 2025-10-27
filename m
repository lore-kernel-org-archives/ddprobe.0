Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE9531987B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761587394; cv=none; b=q4ruHq1LgfQaQSIyvBReaSRLJ2Lw9c/TjrXdsHVnwIFNyNo5EpADdWgKS6VjkYxn740LQK8971jiAiqxTI7ZzgxLUvSEj9qVEJI/iuA7ELS2PJCr8FNcMT9vHP++cZs00NDDVgfw63UNsihcCLKxCBDAgtu2iWLrgt8/B2jzr7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761587394; c=relaxed/simple;
	bh=/WrGlf3PdEjAJKWYYJpS+l0auIyFsBdaHFaSFySU55o=;
	h=To:Subject:From:Message-Id:Date; b=FdtMIOCfZK8DQj/W8y5RkewzGst+1sll9OYpBfCCVBBdnbDqRJIRCFsNeaoxsZhvRp4sj+dbiVpt4QhYtOkORtH056MKY5U3Wd/c8uzXKkgW8jQQjs83j7bvZJw/rhMXM7akGuBIKw8FmIlJD47eIDxSR8t53F1bqrLlUPDC6cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2BwK0X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2BwK0X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC72C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761587393;
	bh=/WrGlf3PdEjAJKWYYJpS+l0auIyFsBdaHFaSFySU55o=;
	h=To:Subject:From:Date:From;
	b=Z2BwK0X9VeC2FNSnj0alFsCET1i51pxYRnc4kZTLfBWkIsA8bD/URMrhrgWHZ7qnq
	 cxhQwO3tihaYx21GgTHDeNSTlzW/+aGeuERfHvkBhLwwLZdbYKp3H0ArtoJ6CwhqRj
	 x+bwd+JmAPS22gohaF9WUpuM/J5cysMCPaJK4d4c6v5l1GGbVXoQnF8GIpXInIoj2G
	 pPVXcXybVpjrEEZqu4YI0gsnHicCkdsDx+v73ccDxBUMX5PZg27t8l+h1iC2jYr2X/
	 k/OQc/mmmpiICzBeeM/btwUHa2z/X1yimrZI9+an3uNIa6ONVQs56i8PIpQ1ZQKrC3
	 VNKGNZTQGlylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3DCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158739359.20103.2175566785774110407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e20dd17496d12b02a510f868ee055d93c532927f1488db4b6b84b423768776
Date: Mon, 27 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761587393
