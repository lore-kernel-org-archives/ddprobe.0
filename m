Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4278F6D17
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753147195; cv=none; b=XeWWpPnIa6dfhBQiOWe0yDX3ir0XpTz1pgVF/P8ie+42VQbdbPx9i6ynPxSVrW2gHlU559PZ6LBfHEFllK1xZuW99bA5/+ljPmyQUjxTOACD8XKD2MKwIxnSMK2CMjkHUXOdQjA+SbFaonByZMmVXpWdegsP4of982eT83FZqFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753147195; c=relaxed/simple;
	bh=kZT1J5VnbUPSGIi5HTzwu5w0TwRIRsLIJrfEMANtzAo=;
	h=To:Subject:From:Message-Id:Date; b=A/zDnBDC7j0k6Anjt8xMJa1UcI1l903BKFoxrb+X3OBaxzAEv5zh8xmP+g36vcUsjSmKgHWaQhL1WTU8C+NeKyuzHUo6wRLjadTHvV3fk41xV0CLFg8rGCNLNs+0eiL0sAssyeAZDk5Zb67NNImiP6ZnZdel78OyLlvKJJSyS+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MopPT5KT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MopPT5KT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFCC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753147193;
	bh=kZT1J5VnbUPSGIi5HTzwu5w0TwRIRsLIJrfEMANtzAo=;
	h=To:Subject:From:Date:From;
	b=MopPT5KTB4Nt1dFzKDAxNp88clIMCqEO1CBIvPdrlx4ndPA6GoyKpq040ZRcU+kDs
	 dVjl3vRcjGHaQBBdr9YO6Jnu1No/SBCXmF16Qwag0RQA/ygeLsEoX9zCSef2Grz/An
	 L352aGwuXgHLQfHfPQHJA+lyqzhHimOAaHCSwWcy66XaFsKwmj5432BSKguAP/yBCo
	 a03CBkGPblwIWX1zh66+k/BU0a+ZYwniOE6MahlUPaNXceEj2aIVMR/k7Cehj/NDH7
	 eBe/xrRCoIhqp9a54tbxvdvWR3jPyHK9To3vtNLpcPjvMerJQYVzYG0Z0myA32XCOL
	 Kpve6WWaL7PNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003CC83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314719358.22787.12236137975182954339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887544fb0db8a7d9c52ac9e50737bc438b3b573b70cd77fadc99979df30a1e1f
Date: Tue, 22 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753147193
