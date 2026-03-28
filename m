Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F3A27472
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774658094; cv=none; b=n2cASVBP/fOtb4Gim5S+8gsqwkGjzw/gKqJrygfeZsVCSQJi88gyegF28kMrBwDu37Y6rXSDNtnWBlz5e+KWlPPdHzQ0/4Pla+JGXXxv5Vqi64ivpExyF64UMr5ugc1L6hdajdMDxnbAGszUGy2YkcIMYg4ioSa8eKABA6h+vi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774658094; c=relaxed/simple;
	bh=ttuGTY/O+iP1MxYv+l/iOYD2mRCBJ2nFzqi11fudje8=;
	h=To:Subject:From:Message-Id:Date; b=dLrh9v5jdNiLxWFNyi9YU2GJRKEyDp8FrL12QbRLZIfPBI6vWWTvJMcBWmc7a6+hXuTUE//N0aNybTlKsN69dvZEP0rKQK3NYxL1ZDRk0QXXrdhaHy53Ivv5fN06HjBpOi+zcq2LJRLDNC/A8WN6knOwMwh1qyi1oksz4RXKayo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwQt8Yl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwQt8Yl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BDBC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774658093;
	bh=ttuGTY/O+iP1MxYv+l/iOYD2mRCBJ2nFzqi11fudje8=;
	h=To:Subject:From:Date:From;
	b=uwQt8Yl+m5CQYaqTS5jxZ3KIwwDfwQT7Nei0Y+BViUmzzatV6RfQtbGJ6CXPwZrtU
	 NwqMbFFTh+FJGflXqlj4FwUCV5p7w4BeD/eW+YOVdWGAmBDmS8VtxveTCn78wg0uAI
	 3hvBNF/Cv9jiUuTC9eiGP6nKCw9u2ggLGQUffQVhUyr2w6EJ71sY4n7TcJItxLDeQ/
	 4a5135srBPIK3fcDU2DFX7+6PQnuCnWpDiwRHrMLJxldL4C6xzOpyuTeUab33bArWg
	 J1NmJdKlStm6/pplY4e8R2nbLxqy4P4Y7aUjFHhyz1K7q+dy8fqRD0LW+3mTsnHOyy
	 u69aaKcEOxkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9823910BA434
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177465809358.5657.1775959465908674886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edba3a4ba541963e462d19cdd1b1bb2e003d4bab46967eba7c0b89ee19aa2411
Date: Sat, 28 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774658093
