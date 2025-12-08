Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FE01C84D7
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765206774; cv=none; b=k4aqXMguBNCi/9y+sL0ncldjBX3ZZxzrPaHwTpgSfKJmS3epraqv+hzedYUjVNkdsND7do9u3sXIzkbxKMwVhWfsGTwoJnpVj3hWTkv3KXVB/1elGQ7aO0ukN+PXlc1CM4XXk1m+7UAUaxeEtAnp+gGubAHuV8tHjn/DtlwpryA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765206774; c=relaxed/simple;
	bh=HV4Pdfkc9PY9eAS9xzQfNyYG5nEJkQTUe7MUDYS2GhQ=;
	h=To:Subject:From:Message-Id:Date; b=G/HQ0AYNfW4dBXupoT804wVJD4ADvRursKmxwyKC73Lmwonz03qhvLdiYevAJbejZmeeghTj+Th74HtUZka4G+Oi0bP1AWysyNjrke1gSzc9eWeOGqyIX6S46KnuqGGtEa35emFbYhXwkCTBgnA3uH42WLbFa5cduMHgTr9qzAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orkAPCMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orkAPCMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765206773;
	bh=HV4Pdfkc9PY9eAS9xzQfNyYG5nEJkQTUe7MUDYS2GhQ=;
	h=To:Subject:From:Date:From;
	b=orkAPCMD0FdPxIsFgjEYuF5Peike4S2KAPY6smsA1kn+N2PfQZIbwRT6h4D90+Dfe
	 /zFgJ/R5XXTBnSzmTyhIatXxEaBVnto7g2kjmAfXQVxk3AoUTdewmUdPcpSdzSoHrh
	 07uJibt5P2ma22W82YF1PZ5bQmLd9+ezloIEUy5IOV5PCcZ2Ht59msrxSxcHvFMqnS
	 z5MIiYfh9BvA642p3TvWYomBrJgg/LyZa8JLcirywtx4DVpWR5WRiPMk5QWg05Syy8
	 ogMh97+IW9Ag6f64/GLrm6+fqPRUFDgxpzXfjnMscOeYowrYopajQf1c0M3JP8WhQ9
	 xLaEKsVmlwBmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD0D3B7F2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520677358.13201.17154298936642184814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7089f370b37ad6b676fb3a4ac751b90c6a49008130b92fda7acd9e4c3cb29a6b
Date: Mon, 08 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765206773
