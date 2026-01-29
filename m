Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1944F20E023
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769698434; cv=none; b=phgi8EKRlUmlpZpsDCUWgPLbu8uOMEzVAL8xrfoiQdRXWhXTL4m4GkJX3T6ix8OdhCyek9NjAqDMnvf/QYfLiB4Xx7Mdt7OoXHiyCdpnaD1WXjDC5Usmzg0GukLsWhg74Nth+is91DFRrEXIAkhh75dODcz2jCHmnMh4ryvPVKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769698434; c=relaxed/simple;
	bh=xQDSzNSIXRQYpLMyxGU2FgyhDn/imI8yrxBfaPup9HU=;
	h=To:Subject:From:Message-Id:Date; b=qgaCtq0BKqmr9jIGiBYfTz+628rwke0DjKtRhxYyA/nJoX6mDmW1VvRWrAGCdt6pJAwhu7/H6H8j2LtSX6lBpjcxRIUbYW6PfzRCJdUCZ6kvXPaOfZZiMea2/rjrxpeXGpxGTgeRvYUF09WKezLVDL/MEe5De8/lqDjdZ6KaGFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzRuaw26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzRuaw26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4431C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769698433;
	bh=xQDSzNSIXRQYpLMyxGU2FgyhDn/imI8yrxBfaPup9HU=;
	h=To:Subject:From:Date:From;
	b=JzRuaw26YIqNlMbersPCD3NNQq+jyUGNTmR5mvTunH1wdzlBH7PyOHqEbtwYo+WTT
	 IY1zrvD2d2MdY5soRvUU9u77ZltLmbH+ea1bciw/L8SCHmtqmL5y20VhZXOkVtiMYU
	 89liSxIxNIWGtty8oG28nr0o39EgyESRKiQMIEM00s/iLAFc6r+5aUMkJAcxjDovx8
	 FoHQrZ/8hEl7UNc4Y++7mOBoWGOFT9Ih3xONOOYQ3frFKaRuh003cHXTt+JAvP4nxq
	 dgjmchmk9OxzeV4jwkpB6rYvRlfhUPR8yBBTXb7KiOE0bsr67YcmQxrUALbrYPRiaF
	 YB3ZFnv6zKQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206BD6101A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969843358.2746.17626360307561569384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8867918f7930266a970c0de70d59fb5ff747be6f1ea8bbed54fc1e61169b6f30
Date: Thu, 29 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769698433
