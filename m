Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3450D37B02A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785054634; cv=none; b=Nbn2R30Ta7kR5WIKLUXBEvIIb3+hKFJWcdDP+uwV0Zzmp1dJwTZ5XihxV0o/xI+iWrbPhIqfGhGDZcO0h0ETgGynsuTufEyB4n1AXiG8KhSE17+0Mc5jkqi8DGr53gQmyFrZPEkXsnHb9DZFhSl0VJ7f2SSc21XTLkktVK2D5VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785054634; c=relaxed/simple;
	bh=u9xY5aB6kdBqFFGoVXi6cK1fgWI1kZYSiZey8cd0lG8=;
	h=To:Subject:From:Message-Id:Date; b=Ubdf0TgGOm6OCRklnL0nHoSFiEo5Qyvg8SpXBnTiLr6u5iueVPFoy2esNcD9r5sBes4ivlaZjXsjEP6sYDJq9dqwliOrSalbTxOHWY65zmWchYwagz81B+DEJwpLDQFnca7OdHzyA25Ipn0wBj7j/UsI7Q5Or2Pn9k0kX6fezdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSHKtprr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSHKtprr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3EDC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785054633;
	bh=u9xY5aB6kdBqFFGoVXi6cK1fgWI1kZYSiZey8cd0lG8=;
	h=To:Subject:From:Date:From;
	b=WSHKtprrkZ6KaQib6+jgFyCKj/Pl4e7no2O39KwUqXlbmluE1FE86LfUAbhJqppI0
	 ScoYLNRiSNK+xphdljV60NgqplB7uCJocNywB5yuUhzgB/zWppSs/AUCpn6MkiE8rD
	 E/7XaDjXfrQbAK3BA3UYYeKLkAl4rh1ulAzHkchJQscDpn0PcFoQhxdqeyh+67FINn
	 cmiz/YXrOjCwFrnNu0b+dokrQkZtkYlJnGAUM3GZ1CmK6U5oVywHBkIIKvIwePoK68
	 4+/80bIc9Rs3PJq8Lt3kZZ+Ok8z4viji7DmWSyyWNBFj+Ez0AKLUNmUUPa0iiUygiY
	 WUgAPTPURcFIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA188C54F54
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505463368.23347.16391576099613557573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a50278896fbb15cd11d9fc02ea485c775c4f5a4a661384aeccec1d8adbef242
Date: Sun, 26 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785054633
