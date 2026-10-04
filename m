Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEAE18A6D4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791132034; cv=none; b=u5ACUcHHPcc/rwFOlpSMe7nqYdjT2V03o+LuMY2OpsKzZP0iZHmuyAOzIgwZWWrEx80Jjl2hgKjVfueHRSQ/ZSfVPRPiTQkaareL5j35B91crNIyaKkj13nf37ekj+avLOSKpUCICyPIgvdcE0KxKBS5TAjBnBiCeof+1XMAtB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791132034; c=relaxed/simple;
	bh=BC6i9iGJ3gpIbEuMyv9y1hMFU/4M7hDhCGDpmohtsjM=;
	h=To:Subject:From:Message-Id:Date; b=o2frKcWsqi5kxitzbpk56r6QsL2fIzIyh7gqxGI3JBwN5Tlgu/Y9Zxf3xXJjZ7++cTDtEYf8EMUHuhZ56N6lRveg1hfrnNci+euSQNGolU7V1p+lYXe11U74b+1y+8JNLbSzrOWMY+Sz3VeBE+pNhnQb/DXvpyLMfdocRnlfdAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqjxrphX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqjxrphX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2170C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791132033;
	bh=BC6i9iGJ3gpIbEuMyv9y1hMFU/4M7hDhCGDpmohtsjM=;
	h=To:Subject:From:Date:From;
	b=YqjxrphX9Wh7i+RmAw/eQfWJYEaWKpKgN6VbyJdDNLYmx1zzLvrz7S9QHIHixcWJi
	 6z70FueV7lEwG8t2BfvLWWBv/wpRDNqwOHokHpnH300UK1na37A68XunKrhxk1hIDk
	 deWZqOPGqGmBz4zysTC568yUmqpUDPOUGeZ1r0xYesz9XhEMiXZPcVdIXjyaQlmg74
	 Si6W+ZsdFQr5jVKSyDPXzJq0AQhIfBOLl+0IzrNGhVd5G16469OeOi01lmLJ0Syufp
	 5wwIn4RFZ0dEOl+Xp3IGKsRQbACigR0cF5sYWuBRdbklInE6YnZInO8R3N5Mt/LZMO
	 421BQEOt5PV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBFFCA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179113203368.4193.15430979255848079201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e16bb07cd30bd71d73ed9050a8214e6ad47c0cd18a8dc323aebd0e8591b0ff
Date: Sun, 04 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791132033
