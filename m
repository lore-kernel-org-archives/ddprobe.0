Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD6630C36B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765453974; cv=none; b=qCqgT0GJPkRdJP89fgVqOAIOmmP/9VlU4EhNCoQszBptzpv0Tsq2vbGvKsnUpa4tE/ZqU/5nX2594KFnkMZrUMb8M2ZdDazLepHebPkGbuD+WEZkLnedp8NlDGFaDt1M6dhRgId6bjcUk+QvgHp3aliBprmVLc8fTYyYBCL5V+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765453974; c=relaxed/simple;
	bh=/liYShcU9SW+PPImszmuT681xobg+tNAZGVgPpzSuf8=;
	h=To:Subject:From:Message-Id:Date; b=ORdgJrk9mQcy9ryqBiHEZ/MpzYIC7vgEou9jZlqKn7sWO0lrzbsIsG03T1DO7kwWWMqQdlBTbBHBqzOCe7TlCBM9oatBtVGPDbspOujWgaZkll/7k2HQSKVUqnHQGlGGaH7GYM4s6JjLdIsTu8Y0wmiG7+HNNx6fCCSECQOc71s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpLq0c7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpLq0c7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C54C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765453973;
	bh=/liYShcU9SW+PPImszmuT681xobg+tNAZGVgPpzSuf8=;
	h=To:Subject:From:Date:From;
	b=cpLq0c7tfwWopD8eyK3IhfBJTcKsLchABSF77fr0OfJvOYQoCi+CISlbwqOoZ2Hv9
	 tsNn32a0w0+8HWdqbo7VrDXhsA5oOsSEGvF9Rt2zuHucuGyrEPVHqiJ4XNWHW5r8wU
	 1PY/OdM8nK4TYgRATNWZYIfcuNozhRDOh7h4VWpPZAeAGwrRLNZNCeSJAC0pnJVLui
	 1+lAsoXBNXj2PfgK7bATE9UTj7vkMXcUPL26n3u7GyTwfkfU7smKeizlRDOIppx7GI
	 +2N4fYHm+/cM/OtxBkzyQnWZOEkS7IMKvvE56qXfzSWwQgzjoUeGRz2ZRMkM/O8dJ+
	 1JcwG7JXAnJwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4608D41C27
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545397360.3003.15552233784136509819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c629e3099bbe471fd1ef55fa67d2e6fe02678f2e71cafb43178be44ae47fbdc3
Date: Thu, 11 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765453973
