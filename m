Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DA2132489
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711057097; cv=none; b=icpFdLEdv9lsPgVDXML5ZXWNJ+tl9obDw2DoFAN9oa9K7pI2QtU8UjpSOa2E12cpTajZ8MlLwlb60Uap9FK5xO+K6d3wWPa2mCO+FMznymQcgTO4XvOzNHK1grc4DoSnPd9cTeYx13TtZO3Kf9oxeX3qTviPo9FrYleFmplYLsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711057097; c=relaxed/simple;
	bh=3pBdWgET10SYPZBIqrQYtWndYTpfEY8FygM8wFfhrNw=;
	h=To:Subject:From:Message-Id:Date; b=YOgFniRSBi8/KcW9Ogvkc0muOAkisJ7a7o3pPziv9GR/tu9Uaik/fDFdA/5M1Gmc1v0ElXjPmOp9szgYb1yOdNrwy8j+S45WRcEiSSAuXNXGnApMktZqCGF3xYM9tnxXve49rJjeSL8W3ghjinPIbJeNPAHsiVVkM0bZT6iaw1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQDQK0PV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQDQK0PV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7757BC433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711057096;
	bh=3pBdWgET10SYPZBIqrQYtWndYTpfEY8FygM8wFfhrNw=;
	h=To:Subject:From:Date:From;
	b=MQDQK0PVXe7LIWwbrAnP+iUfBLpuH3R3e+yGQ0UKrPS/hapkxmYezeBRxU/yj6m9j
	 ze9QWq22oxjCqCr6zSbkB5MrKm61Q18GT6TTTo+UAraelkdLOm149syiEmqlXr3fn2
	 vhzam+ZXqSrf4UK1kFb/pqBD58eVTrs6Cwn2Gld8+eOSuzsEaq8bttMoqTYZ/ha5RP
	 WChRAmiO1qTe669IBBChJcuehc0SX7cd++XWnzYt6jSZRrOm6l2X3/Kjz633afU7/r
	 redKm1WR4czzbGqsDQ8OAqJSK5yBZub7+yqxwDvEls6kxOv+6/2h7q824PbJ+l6wZJ
	 aByNFylF6dtZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6192CC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171105709638.24688.10815197477858395783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2af20e725f8fe798d8d9f5a5b6a8a9469a16e975c240047bf41fa2b283bcc5
Date: Thu, 21 Mar 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711057096
