Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359531474CC
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787799034; cv=none; b=Ooc2nMasFMV9n6BSI9UsrFyFPRaR4FnC9EsqwcknBERKKzJVIS4pvFPK8GTDB8iMPyTkxXal6QuuheC3uzqVM1eR4oNxXafivBSzDScSUnB2kIlEPRnQ6n3w40bhLfgZ31+rBLkkFVO3v5hM6WR7XEpsXIRCgVDYtjSBEp3+Zgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787799034; c=relaxed/simple;
	bh=+ZcvqQTjWl6hq6As6cUukQp+myjNBXDydz0RML7sZkY=;
	h=To:Subject:From:Message-Id:Date; b=f4eXldxXTZ4lL37u1CbLTIyx3S9CPI0Mdnv73QzhhBEkkSPCJR6QLDblO32Pyi/9247nQVyWBULOQc9Hsv1AQOwz7WxKRYCEGT9iQDvpaLMeJQSUSmMKXbaRI9kMer9Ozqa/O1Z8pcHQwioTUhDUSqWLlQdclua7ZIKCxTK04wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/pf7+lM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/pf7+lM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3C1C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787799033;
	bh=+ZcvqQTjWl6hq6As6cUukQp+myjNBXDydz0RML7sZkY=;
	h=To:Subject:From:Date:From;
	b=u/pf7+lMHEk9hepBDWOVEfYDUhNs+XIPa+hNgcFXdHi84dgunzZou3qsLFq/5kU20
	 IN5qYmT7a3jif6L7U72jJu77TCbdeqCE7ae5UjUHCINrK3TXCIS5FXiUaXVdyAY/vR
	 qwNkzQPMJ5UxAOxMTbZp93BvQCs4s0tGsn5CEWCiU/NQIbgBWea0zoshDtWUZlEx9J
	 dowU6lMu9pW5vjO0cEIkdLWRGSStORpDNGX+k/x3m6frMTHxH1RN+LWRyPKXq93YeZ
	 qbDT7IcBp3iCkyRj76g6Ryr8h6KlTqFnSMYdeBUf1Yfqm4wB5X5p8I25sykKJpF+YL
	 2Fk+kpebP6U+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1A3C61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779903368.31067.14448336625914793875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d67693d5177d440bb3804ed9c2e29b60e704e3d152e1e72d5bee95d91bf337
Date: Thu, 27 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787799033
