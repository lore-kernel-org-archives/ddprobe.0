Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E65381C4
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766537634; cv=none; b=REvqJOV1NVJVjBfgqTNAKKjoRORBgLRIMB8HK6IhayHEUainAoMkH5Jgs+J8wLXO/wHa2m2cJcMzAUi915YfJ+BOb8PxY9Mt+sfA/0FYrDttkmeVVMMwJVh4OvOp1399bfCkm3G82HkJCKtBvXWVZhNR3Shks2WlabAfE28R+74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766537634; c=relaxed/simple;
	bh=aUrmSHMQzObqdm7ZSg8hl8eshw7AXzvR8f7Bv7E9y7A=;
	h=To:Subject:From:Message-Id:Date; b=FgAwjPpHtAKnpENMUWOdFn28yMAKYEz+Kgduxc7SKO/nmyAVStf9Z9gdsSfEbKGK9O9gj+py1Mco7OQUfgLq37SoAQlkJUNM3vCey4xmo7wqKcdcAYg69amfj8z8GmXy8iTtXRQvaKd8muSq13okpDiJjDNTTsoNNcfeE13RfJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtVTDR3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtVTDR3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2158C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766537633;
	bh=aUrmSHMQzObqdm7ZSg8hl8eshw7AXzvR8f7Bv7E9y7A=;
	h=To:Subject:From:Date:From;
	b=XtVTDR3V36pYBGZsMbPgXtEbNQoqIX//pcD4200Negoqo+xGJEfvTZ7795EGg9fWG
	 loCfl5Q7UAWdj8EYkVRKOXfmCzvDjgWYWELP5JW1m4fTPdRXXY8OMDhSvCPpteI79K
	 BXTDpiWH1+LQsLpGvFiNq62ScJ9QzcWcYXkjMBtHMk0c0oTrUzszwbaJlgtPZvdg0k
	 NurEA5jEXLzoAuFaN/z2Qe3VDwuw2FKcdRIQ8zl3RcH4fD5hZEDe8gDA1ug5EB4HBG
	 zRsZupZlF1OTOGPTY/6mez/fpcpVmYAgnNMKSeIDFydkO7iSrW/KrAESXJfSZwt7c/
	 5rp0F139cwDqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CDBE74900
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176653763357.20782.2812695603041566814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1e7b54fc99f0cc54a226648cc6ef67b7a159b1a7a542210c45e2c4b5048004
Date: Wed, 24 Dec 2025 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766537633
