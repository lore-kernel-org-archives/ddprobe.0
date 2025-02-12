Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B0B271838
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739377134; cv=none; b=CXh/VN09oHo+dmUPgv0Q9JstXKraDyUrms0RuPZg5nhBRMuA9IFaCdcbWm9bsTJT40pRJTnb7Co+B+/5Hv2rfBa2qNb9AyDlu/WyHt0a/7WlRYwNa8lVsW3/sog0oipwSIpnMETE0ar3R1YtGHXXVx46UQuH2cX0NSPLJRB6mEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739377134; c=relaxed/simple;
	bh=y02OKGnTuBnPtBh34dT++tbMxoQFcdLhCVED8XGnNBA=;
	h=To:Subject:From:Message-Id:Date; b=oMy4eboZfnc5cxRTJo2nh7S1Oy6RXUD8gXRhlT7S3XxBYl7HxqQmi3/s4J4CRKKMs6PNi8d0tM5HBsryCEDmvKvN8ffHFOkI5256a8nI4cliNc1NwB8Nc04H4UWmEBJrz7E1yrxxAuqnN/fbwWyvX6jbGMWxruGxZlrCNV/sQE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGukDrYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGukDrYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C03C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739377133;
	bh=y02OKGnTuBnPtBh34dT++tbMxoQFcdLhCVED8XGnNBA=;
	h=To:Subject:From:Date:From;
	b=sGukDrYI0rLY/6lwlXiUtGJQXEqgiiguMf7HIN3PGSSLlIuAtgt6U1JJoeHmRTBa1
	 PlWMLzEQK7cYvX41MZMXcikwYW/mpQD8PCFKT1S6jsC3jGTASwr+7JVLUt07nmoX3v
	 7VcWe6d2IiT9TS2y/7GByqwG/DBn57eWYpU9ncCjxWGY82uoaQcq71vfcWjff86DcT
	 hJzF+6CdjtdIwMyTruI9QAtvZ/7bmmvWbEXPpEdBSV+vlVkeOstWFpNkvqS+d8IY5U
	 73cPG1KmgtTS97MjtYrMW6hgBjtUvrIa6zCOsGD+C554tOfb44V+e3FwlrJFAcwVJL
	 /JYWgDrE8u1FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967B9C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173937713360.16623.2004628826969193484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977ed412c46e734fbc3509d866a1624ca43c951e807ef1af1951d4a394e2e05d
Date: Wed, 12 Feb 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739377133
