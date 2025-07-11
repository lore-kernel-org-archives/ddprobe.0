Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CBCDDBC
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752194393; cv=none; b=JdVeExge0CAZKwf5ApvlvLcyv2HT5YjkpvECZ1oeflwVx0BKvU6s83e8SqL1xs0h9V6EIIs5fyts5OcUUZ9Pn33ZcSj29OjtaN7Omz3nASMQBP7LdwETo3dhHCG2bC6yDxP79hMtsD/SLKOWaMIX0CUkCXAu3v7PsPqyO59CPLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752194393; c=relaxed/simple;
	bh=NsXDn5rNOi7YjiY5IEcKtET4IP3FVw5iSYB2L5RfBz8=;
	h=To:Subject:From:Message-Id:Date; b=HL3YhrFNeMXNuhyP3OrXLcO4weWUT3hk5r6imSb8Iasw14OveGNji5RTSQFl8eWbJauxrs+1IufqeQpYMOTKkF6ecMTZW0B7kSt/z6OQ3bTk/7J9y/qlejfn1MMCCw8bLFG5Tf0mBpP18PuSVAFlAHlTSQFgazwc8e1OG8Yidqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mk1ChbUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mk1ChbUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D383C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752194393;
	bh=NsXDn5rNOi7YjiY5IEcKtET4IP3FVw5iSYB2L5RfBz8=;
	h=To:Subject:From:Date:From;
	b=Mk1ChbUGtyZ034X+iSktjgOlrCyA16jEF9KkVGFeFjEcOR82OeVzRqwnUMJBAtqbT
	 9McMi3ax8efhs9MZ/uQgWy4mQTRT2CVVXhGKfzU5XmWMSYLxzxnP5g27kPSDhbocXJ
	 K4akiHohtjB5JZTYsUvpSjhA4BLxTw13Lc2omFb9mVmzuEYyUS47MEeJv0+ICfQxV2
	 hbZi+6qrkhQ0VId5iQBwTROIBNvWznwWoqmocr28lTqwsqKqYyo8DcTHwaKCWel75b
	 iRcA+o5Csi8sOuF28PcPjMiwvmti+b1HKXqWX3Wsws43i7z2LScYMiTAC6Ha1M6kPx
	 rDF8qQ3dbvwVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BFC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219439357.20857.17632186169249141277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8c2accd83cb777906c17f57be709b029fc36a66dc6df7fde30378a1a50284b
Date: Fri, 11 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752194393
