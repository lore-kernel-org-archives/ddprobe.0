Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BF630497C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771188294; cv=none; b=bHLcPju6tFDJIn82zgfZ9eKHB5h07QTYomFzT6nbj6duLQ1P0IsRKCR3PeuYtPMuatqOAdv5S/tHOA87w4+wIbl6I2VyJ6vv9LljgQhYfoAenjxUVo7HxFlpVmIkxpDYkcIM7wvVe7pVzsjiItHxfwIiAerIE+vhqtoyc/zZRkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771188294; c=relaxed/simple;
	bh=ldBOmrrHh0KgBNcozy3YjLszTB658YijjN4Iewm8lso=;
	h=To:Subject:From:Message-Id:Date; b=gFzfiWLaqDBkBtghQjU6M+gIGYu/Zamkd1c/lO9mGu7L7kZkucCDFCQdSK/TIjt+gSnaxLUdG+N/7XQJwt/X+VB6zG1wRcuUWUSZEQMNccFTOIUsZDRHXJtYnyJv/eiyeSZBDXSlo79tCnqimD/nRFQcuWGZaQqdZC/7e1ikveQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h521nNUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h521nNUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B29C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771188293;
	bh=ldBOmrrHh0KgBNcozy3YjLszTB658YijjN4Iewm8lso=;
	h=To:Subject:From:Date:From;
	b=h521nNUDkJ6lLZPoPc252VLQ0d1pGYGwqeZ+0+lopJDMK8PtKl/ds5IvFWdv/FR6r
	 M74OiM3ocVoj1Ks7349Xho/S79XaBCh/paKuEE0QNQxQEfcpnbzK38Gfw5BR+kAQah
	 2cmCY4aOkYIPXVRh5IxBnCjtBS+kXHldWI/Tcv9sNuc7O5FS6L+TxgixB9RNvc69rT
	 /sSQ50/nVl1RlI42im1ZnLRKgrZNixPpLKuC/i7t0XWKzzFEQxGZN2ffqk/t9qXWCX
	 ygrRtd35pMfi46WbXiETkiDOURBzk2JK5rhdk/n47tB2RKfsl/RHplxhGyvrxztd0a
	 tIKHX8xya8DSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D18E63F14
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118829362.21659.10389967270534173022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5bbfd3064d128ae69d648aba38e596233a590fbc20059a904c88ec3460532e
Date: Sun, 15 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771188293
