Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F83918DB03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752033594; cv=none; b=Grrcn6YApkqrIMFWDQfYCILHOF7qZ1Xzv7OAcMcV1chcIgLcBlJ3Sst03dNEjxgZn/mc6vrLksiSH0X6O7Rzwo6lWUwSwjR8KnrCcIlZGnzmucW6XSEBnPGU4ERlcbg019vQNmu7xVhkGpLNPHMjq1RpI4oPsHNNMR4cfXzRIjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752033594; c=relaxed/simple;
	bh=gyVy6B+gptVGwBEsXtsS/S6cFZBkBkeVtuu830oFoQw=;
	h=To:Subject:From:Message-Id:Date; b=HvyxlFeF96QLQVXTOfYVccZB/d2lmXXBX5lWC9tGf5gPlkjfNObi4cII95qlG09E7ikDvY5A4EFAgIoMlH+IveWpFzBcvLJDgnIe9Xah2nrBh6uuSIm+6UtV6u5Oqj339hpn9pLjAd6PUzCw8W3yC4M+/m1PDSL2h3iRwCHirSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMAGzhlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMAGzhlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A189FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752033593;
	bh=gyVy6B+gptVGwBEsXtsS/S6cFZBkBkeVtuu830oFoQw=;
	h=To:Subject:From:Date:From;
	b=FMAGzhlBWb9HYMyc2J9ioVLDJfbKQ/FZKTzWZI1ep14vbDK0VpPlR5UvE+Q1QOwwL
	 i51XKumKiUTmJVXDeW2J64YUdAN7/YQPZ8XwFm2XDPfEIMWK+sQQVCzIA4zb2YYASC
	 5A+hiwQh43UgPukNhWPDUTeP+ES2pfWlSC3cFkRBtEjgMgPpGBgY67Gw3UmImRgWyN
	 51jMlGEgL3wI2Dh8mKbER3CkZcM6b6UKOz1myyJnAZ4vMcTCTvD+ura46FztrQMYQs
	 2HBCkiOzZby+6PlavwVFl1IaRsbYS5JkvQ2FPN9LVqTQBWBeSjKyKZTm9aTLOD10tC
	 VlCifTCsOJstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91430C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203359357.23534.9422433707773470882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ea6fbbf044f76f20f9ef5e20a6ca8c9f451efe34199fd04080e9d05330038b
Date: Wed, 09 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752033593
