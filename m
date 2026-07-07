Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521DD26F29B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783390114; cv=none; b=RcJFHX25OtuUeIc/oVg5YVPOPk6AYS/FeIUimHsTLGtD1FT0htSJjZ8eHQNccG0QhbucAkX/7noNC5FEbiOFIxiB1OAMRAVHCS73QEvR/l8nRH4/aRkReYgAvFK9ja29CMVmlrf2KSP6Or/gumdHsOAANaGwDvADPBLXj4pni0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783390114; c=relaxed/simple;
	bh=fKjbpmqaGbg862sXlr73WiN7mA4w4mIgtr95CVcBmR4=;
	h=To:Subject:From:Message-Id:Date; b=kivZa+wW7x9C+5hXiz4/bSv+dzymN+AnnqSC8jyxJuBSt2KsX9y9lAgtTKkFg+RP3HdSYnAKrmdbCcygFD7KkPPNhRYThyGchidACNS1/tIPxwwL7JXuOxo9LRLvjqgXLpWA5PDRV1JZPc65d9CWIJVGPQfxFxJdcZ1CbgDWTKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF4LGAG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF4LGAG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14F3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783390113;
	bh=fKjbpmqaGbg862sXlr73WiN7mA4w4mIgtr95CVcBmR4=;
	h=To:Subject:From:Date:From;
	b=LF4LGAG0gaaOKGuGghDgz5MCzSzkyL6ZwARctjO2E6W5AAsU7RpIwqNTBCdXtFVz2
	 /MEmiAKXO/6ELDzNgL8cLzj1fQvSB3UiRHReKZ3R0CwIFoOs6R37clWAbh3a3rMzXz
	 zUIr34ru0whiSrC1ZtlujuNIUMzCQQqCQvL448URdlDa4mKNtDtMdV8/hhkC+qJ/yY
	 CPiJSqzaDp9NTzNQzyY1uki6W/9XrI5kV/qNhYCSCQkVxK1o+9gt+YyT57WKTbKxFe
	 9pHKBSat525mAxIneO0kTz2Xzs6cIglQiSiVCo+NT25ufZxirIe9sFiZ6MT+RXdLKt
	 c1bvghS9nh1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC0EC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178339011368.21081.3890058425346983010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6878f403a910d260898f1b5a633a28f2d4fa868c7db145670fda606c00d984
Date: Tue, 07 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783390113
