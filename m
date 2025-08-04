Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B47634
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754341794; cv=none; b=rpQpF47nTDzvGp9CaIgPdFYEQonMpt9zWedpPoC/h9v9GBfssdyKLrihYjH2iayIx9JzRkluXZvs/BnKeWzQICAznQiw+cMrCb+ro27OQV4YA44hDT1mzYwcm/IMrNiD2J0ols+NGx2I5i9tF0djoK6m5S6Tcaoafi/1INdW9I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754341794; c=relaxed/simple;
	bh=NcSQrdYSTDjKQZqSF8tofrFsjwiL2H8FomfNfDG/Ur0=;
	h=To:Subject:From:Message-Id:Date; b=VMooUHR/0bwC+jz9qGHIafOnL7huXv+F8AeS0itiG9thBgf7H6ShfHBwwwRAJCZ7p50NW5obRtccGhmSFyiyxBcH3Jq3grotSNIF+pjIgOSZX5lgAVujA0jmwx/SKV6/X3Kdbq+Ule9/8YbJw/7NdS6/5qAGHXWPWMFNrHUMoLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcK/IWMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcK/IWMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754341793;
	bh=NcSQrdYSTDjKQZqSF8tofrFsjwiL2H8FomfNfDG/Ur0=;
	h=To:Subject:From:Date:From;
	b=CcK/IWMvlSMG3ZV/Yw3rxD47ioZvFvNcAWtiAkXBjP6rFYfpIM0W8s8a/1zSP6dgh
	 PHLp42f+rUPy8ZGoekim3a8l2JtRc0uj9STBvfQicA3NMk+zRM7TiYMwzED8+1On8r
	 fIWBmorgv0i3OrMMd+z7y2g1R15aiKCPgpnCk1vMyf8YJ3NsjC5noY6bRRP2wgDCpy
	 lrhV45G0iLcKAlV5WkyVhmgwusoWNywsNVRlh0TOolOItV2XS4On0sYHx1b+vyMWA6
	 nvi1QFj7P1raSb8xF0eNMnAEzhWB/y+CFy+vsxt86OKi9lSKztUw2STBolasLw4oXu
	 FMUmI7xYlx24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473DC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434179357.12678.17631764152949085945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f794fe1b2c7e4af0ee35cd768b4bfd2ed8ee6d12520a1eb51109a5de5c0f3404
Date: Mon, 04 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754341793
