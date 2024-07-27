Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B9A376F5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722108955; cv=none; b=ovnBkNgbxv9G9or/fZJsZC/A7x0+OGs+9ClO995GeB4x1oPABKYYy66TDEWgtIuXInPKe3Io6dH+ppmnJl4W0QXfguP58rT7w6H/fma1JCXFxM70xPcCOh+qRTfrdJzyqx7FMIkf+Rq8qslTL1A82NRe+aX7WTnUCZIeasX1wo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722108955; c=relaxed/simple;
	bh=6H/RURqKQSBUfOmWIUPSQ9ZxY331QOiEXdubMViEHFA=;
	h=To:Subject:From:Message-Id:Date; b=M3261+Yomq5aaKai6+P/kjYGaimO7936RqRNgLw2y9+RKp2MO9lODBwwRqIlxaMalgRDt4CWKj17YiZIQ7kLQFqgTUsYpNeT5LtT67ZMXHUd+jB+zpjw9PBUxaiWilzQaMuYOROmDgMNNXDuB4qIw6Zyxj4Uvk1q2WqB3P4azMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4KI5HqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4KI5HqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2177C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722108954;
	bh=6H/RURqKQSBUfOmWIUPSQ9ZxY331QOiEXdubMViEHFA=;
	h=To:Subject:From:Date:From;
	b=r4KI5HqGSxROuzDoIYw2aOGUHn0EpSVqbi0O8+uzkvFVC7gDm5v+JBPAI4LPs2e3j
	 pm+iuSgTVEawHLxAv1gUlmMR3fmpgN2JQ49kHJl4qmqgQUpEPo+qBEfysnDMw91ZC5
	 0+nPqcsU6hOoCs0I6KToNVfnV1PYLmbWknBNuPfsoThnP2w4mdwIWT7d0oFwkAtWmJ
	 i91myqwonsHynAEjlx+pWomC+UC1sJblnHuG6Hx0PHK/gLZcDnCCtL7HDqKXI2+M5b
	 jXIBWT2iA2pKQNS63WVPDIwk7D7/usTRWqR0Kj8TiL6Uyo3p1uk4rXhJLHN4LSRmrE
	 Tou6s1te5SQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95986C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210895358.3832.2306984373516765395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de70e904361871119512ba41a0d8f499452ba477db199d651ec0f7a32e426a8
Date: Sat, 27 Jul 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722108953
