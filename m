Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB8617555
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768680234; cv=none; b=hac3R3cBT12+iN1cqByiyf7Z3vfRWtXGGHMhuzh949W0RSml7J7xCKCNBdoss1DBtf1KcDGk9O+hOnaTVwvpmQw6iXFKSOhXVuRWKYg0WxQOggYMMJnbIjtMGvFGHREHq23/csBu7F556sHEu7TdBgaeNUB3DIX1SFCPhEje5lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768680234; c=relaxed/simple;
	bh=WH78wYeZUtxIOJ1FN+mgiV2Z6FeHetQ7a7ItROFJOLE=;
	h=To:Subject:From:Message-Id:Date; b=aoqPz5TAN3AGgBNjtcgi4f9BoTQYPa9sHafcXNS0Xl5gCF07so1sSB+QhDMDkpeyqCaLoZKv7L0OqGN/cwRrvyVdQfXCvm4ZVKOwZVLQtfm7a06omUyvDCrVSBTidcJKlA0/FJIiSyx7gv8Qj5PcJQom8SBW/g23sDkKMW4XUn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwkmtZeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwkmtZeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768680233;
	bh=WH78wYeZUtxIOJ1FN+mgiV2Z6FeHetQ7a7ItROFJOLE=;
	h=To:Subject:From:Date:From;
	b=DwkmtZeA227C8gSTwjZQDD+oEtsothLZ9wAxbEC3tzIxoyiiQhx/bUCgE7u4Wr/Ru
	 QZi4ubI47G5l3fV5dkCF+4zRaLRO8HX7Nrz23Jc2mrYzp5NyBQcC9fxVRSE5tMgyw2
	 eEQEaBgGB27jk1jkZ427ZGVefY2iJ+PO8d76Va6wwuIo5U+fHwSwmnYRUqV/VaPbQN
	 ymH1p39UIXOxbVwrAPMcuuFweeFcen5cApUUaZcHYB5dMLtYJwLwWSLxf76dmisNNP
	 4SrGSfDuCcmE3Q0umL8yoSkJ6cfTrv5lT4wf1+rqi9v6GCSIufrKqlPk/UxkCjdI9Y
	 iCOHkeZ10uU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FDC98338
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868023358.15021.10082918787378470811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811f5c3f1a7ddaf194358d1293179815e306d8f5bda84c62a55814f735fb983d
Date: Sat, 17 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768680233
