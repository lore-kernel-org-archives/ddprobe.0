Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E9243DA5D
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778068054; cv=none; b=safE/a2X5NQgKAcj6LgT8YLzlSoyIQLMoHOMiP4MKtfPC0bLu/wTPJejPlEwsRBikiS2mBDq2ONR64MRjD5fvCRypkuWxGkKjBPYQTZT9mLd9K3/HkNsnJnE0r9DJPtlgQlJj7oLqNNiqueMvFAsDen0v0ri+Q//gQWK3HRVQ/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778068054; c=relaxed/simple;
	bh=2Aih2ujWTnbW8NpMDLiXRA4pHFXidulLh8IHg9UJFH0=;
	h=To:Subject:From:Message-Id:Date; b=AbHsObiYU63MDEHYiX5hLv9jtpy4tw1PSBXuACe2YPn+0WHa/Oj2NbRhjPjv0J9vzZOrP4QpX8w3quNypQ8cPmhk6tCMkydHHzjI5nCgBOQTB5MiSg/N4rnYtAheq0W3hgojT+6HRusUrmp4fqkK3v61NcFjXBUfv78Bf0bT3RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk6qgSIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk6qgSIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FB6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778068053;
	bh=2Aih2ujWTnbW8NpMDLiXRA4pHFXidulLh8IHg9UJFH0=;
	h=To:Subject:From:Date:From;
	b=Gk6qgSIb985m5qCFLSBwoYE74b6u+hTGtCwboXS49Y75CfuxY0nhwc/yNaodm8Bwk
	 Rmy+2px6HNyrGWYqZPGOCPWls8tlwoAZLSYfgGXdDuHnqMxM7YGzC5y+fbwptXLHeI
	 xOOt+86RezE6k6EyZ0cfz1NZHqri7fvOX3N/7mRMSFb+AqFAYQrypd4/4dyKh+cNML
	 1WWy0z+3qk3ltNFA/NSfwtb4pAxasEBMdOUZyKL6O2cJg7rsx5WYQ27h6Z2hks72Vn
	 +R42VhRFVGdMdAgsHkd7bDXdP7qdwEGNzImsKMdzQiRHNYfn/fw64eXu9nUaJwt1QG
	 ht4/aMrVVZ05g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF015CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806805370.5741.6176741416533018524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355f79fc631c78412773f79ed76071e67c6d150d6e835442f66c3439f8701008
Date: Wed, 06 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778068053
