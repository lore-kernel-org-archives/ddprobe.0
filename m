Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24033228C99
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761742794; cv=none; b=rllDEurPU4gsT4R9dfjq5iMsWpCbXUCYMS6xA1uk3zz3GQ0P8Wcy47+JFlnhREq2LLiRJLpn0dZ0YlDLFmieERDxomfEINJC7P8/EgAT/AQaPhKi9FSTdBKtqQmiERsAperR1Hi8NS0RCzq94Hn4+J2caIf3zdi6fhUZ8cW+ucU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761742794; c=relaxed/simple;
	bh=b2WkK61fDWHke+uHwg/gkdWf4625bAlABjTWwqikkLM=;
	h=To:Subject:From:Message-Id:Date; b=ETDWCJlnH9p+0Jo9DhYWMFOARQLofWFRnrdV5DxwfgI8e4h5WP+RlVYajjIxy7nITzpZBBFdxDEukPuxoccNwpIIUfbv+IQ7oOXqI40bYl0A6bZJTCXSO3q5Oal0oNBRakRuWR3PkI/521sZF5czp6tpSJWGEbZKrW2ySWqjtmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+paJohf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+paJohf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761742793;
	bh=b2WkK61fDWHke+uHwg/gkdWf4625bAlABjTWwqikkLM=;
	h=To:Subject:From:Date:From;
	b=g+paJohf3XOUA8CnSqjVPMmBgJEOoX0BJ6yhsz+gBgdWQVmnygVgZWIAxBcVPcEQ8
	 Mrew1FvpcwFIV/N9pnm2LEDWtwea0PD/8MW70wd52DzUqaZgHq9gg6pZ64E9PIngAl
	 eLzkDf7G3R4tyxUSTS48OzyNEeRBMWAuuwCV0agkdLdE7aQ8hxBC5ciEgKelnYnc7u
	 bdMJ/qeN/IsLiwSD7hl5temOEGkB459DiRq+6ZFzlaQKJhXqgFkyN3h6b3HZgkmnNV
	 hZN9k7AsZOhDbpIfwIw3P2Q7rhrLkLCumSvuVFuNZLRLSqfnPilz+9tjtQ3u1mfQa2
	 cNLSgfs7nrseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9613CCCF9F6
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174279360.4831.1733661964030862782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6282157440d879eacc92311d32c3f49450d0bb6d99e8bf3c8363114b62b797f7
Date: Wed, 29 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761742793
