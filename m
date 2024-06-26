Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6280C19004D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719423803; cv=none; b=GNp8fWemDnwdGG9GvgFjk0XutBXFLPdpd7l0or9/tGYdZpwpDczrNpsIS3WsQ6GBA6G1Yb5wELRmsKK0nUKxAf+chDKLkg2frQS96QrnyHWmXLSA2vYcMy6ynns533v6ZQ7j34IrOuzcImYRntwpaoFEf51lFk7PovgNglgRg54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719423803; c=relaxed/simple;
	bh=P4skQJNPmynNejjc7uBhkyd8VY9hz7RbPaWMqa5m65s=;
	h=To:Subject:From:Message-Id:Date; b=RU67qsaUFdPjTaDxb5v4k2FJISS5myAq+kvX4tutaV4A2HCkJzvdY2WZ4N612e5bvWH9AX3JjKAupxLDA49sCL8kkkadZwABP4BjPcIMUjZCQ68dN19sMBNLmXKfBVET1IJJpaufPEbnDJBpPw+Go6O5xnXFGJYXxxyVS02enXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/FsNzDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/FsNzDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF90DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719423802;
	bh=P4skQJNPmynNejjc7uBhkyd8VY9hz7RbPaWMqa5m65s=;
	h=To:Subject:From:Date:From;
	b=E/FsNzDkQdYYcyUOFHtigQEiyhKREzpTQZH0MVT8m37co/apNVDxn1pCiSOHNxicP
	 5A0/c/jYJS94VOIj9KDow+cDlL2SSGsCJxRomsvhOXS0+bvD3+JHmRhHna0ICVx50+
	 ZJBgUpNSHqlcbgKaFuIUw7x7S2aEhi+MRQBx6QoT4tVacuBaZiF176ECpY8YCBPuo1
	 tqeBuBf7JNVodIppQ31AtnXmiDfkHPFGMF5MN5UjA+I009krIKJy2jnL7KtkSrE1Y6
	 wezsjE7br14gS0l0L00PugftA3R1j9vGtZFT9NtHmHm4lp4usb1WGzQ2j0uvD+QfnC
	 UAhvSZs7Eu28A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0128C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942380277.8281.9862034812480716665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f4e4ed9ea248f5c6f2817f1b99fb2f84e010d833bbe8700b9f1d523d8a3185
Date: Wed, 26 Jun 2024 17:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719423802
