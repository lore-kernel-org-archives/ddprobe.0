Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2691546B5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758439194; cv=none; b=R37UYodRcs8eNbqLZXNNNdmeT+BziDswSavBip9Yd3BguSkR1OAfKhTcE570qrWyIBl8UihTACbNqBLd5B7q1VFqFO1OlUVIbLqZQYf7ksY6728ngqlJkCR612C1CJLywHMOhSf0oH58xQuDU6sUbV15l2OeaVNAr3k0G/Q9O3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758439194; c=relaxed/simple;
	bh=HXH2vms6ymAeaE5JraDzfjSv+N96nmWzwaGLg3bTilc=;
	h=To:Subject:From:Message-Id:Date; b=P6sxSPpWF5Bq5QkurqQDeMY1j7ZmSQjyXztADKmYcseDB2YK4EP8FJXwjs0+7yEOJm3w/Yy1i/Fsk4fUwtQ9e+MsrL5S+EutD+cfPEaDp5T/1oIZ0vBjkDW3Nu9ixDoTUsLpKrgSS6oHjRlhOUQ3QhaZF5N4REX4TKDDXkhlGi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDi9Qd7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDi9Qd7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA793C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758439193;
	bh=HXH2vms6ymAeaE5JraDzfjSv+N96nmWzwaGLg3bTilc=;
	h=To:Subject:From:Date:From;
	b=JDi9Qd7SJIEQXD7SSfO32D9SIxkcvUWZOI1yTYJk2s6qDr3pfsV8xwSR18tkJSERE
	 M0vPqPNOf/RNC4tL1Vwbdkrk0RkQltc5gTl427UyMacHy7EZARuWrtQFGokF6YZ1l9
	 YogyiGRCoI7vgCsuSg9Nb3ohHsrDLNYD4voc1+zIFAvVQJ7G5jBy/Y1GcaJIBYW6iI
	 JR689amgHPcohjgCKMizgGybvF8xrB3jmlVWGm8wlKtdq1/5y3p6soa62WLhElP5kV
	 cSYMLRE5I925/Ob+X6263qQ7HyRMghUdlwtJw/Q5ALipjg176GvuceC0jZjQ7jzBzK
	 FH94xiNOX26BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843919358.23336.2907242457583922058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 861807ad21dec5216b79cb7da8d9ee5b1037f18122ca4de1ee56ca8f81b536d7
Date: Sun, 21 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758439193
