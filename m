Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2066927FD52
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772351094; cv=none; b=JUfrk5RsO6B1bsUHr10eo9hWlNJQ2IMWCEgWSxAo9oHs9EY/kTS49c+tcreZX5Sp5A688wx/tjmsc8zeyy63YhxPiRhXfdXG9KH9eN1OktrsWiLTSFtoikVUdTxz5v8yWB0tDQoGjXwZXIecF2S4OdxPLRfyCA6+EiouqBJKEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772351094; c=relaxed/simple;
	bh=FOQXkMiWT5yQbklVCw7cD21bLqpzXbiLDKk50ix+i1c=;
	h=To:Subject:From:Message-Id:Date; b=EIfkOsXJ9/dryM0cU+hR0L2uShOvoP0nsKt/J1s8sfIf6XTpIloyMZD4h8FKjd0tu2QmXLGrZPFflpSW+hRthT+9jn1BvhQI8V+B36+hJsaI9yceSdfV1bPGPrusFDclqDw3NamVCXSTD6tln98k59Qg4+8iD6YvwTJa5ZAcMRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vx51w4Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vx51w4Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99E0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772351093;
	bh=FOQXkMiWT5yQbklVCw7cD21bLqpzXbiLDKk50ix+i1c=;
	h=To:Subject:From:Date:From;
	b=Vx51w4Q5r3aP4RdgGw9uvmBWhtyPeeGWDip2L+Cox27XKsBodrFx+9dZaowJXb99G
	 yUOyY3YCbnXQRr099UuQ+4o9HbgmOLYgukxnInlnk2t2ryv8I7ZkAhJ5GtJ24IcTKV
	 Ay8DoTO/KG5pS4WjxsENeALyxZf9ZPYUFsBb2g0E9sjxjINRKzenp4Kxe8h6vEUzC6
	 FA62z4rGY6na60pH6qr1dw5aTpaEslmdmJe3Qc26ShH4s9yiPA09vWh0ekS4/YbVzf
	 KcCM/plUNmDzy8kVOvzXG4QzZCNyrh7LOO6U/g2MEgqn839iFuJyZqrXK333Bel4bb
	 S+8O3RhKZYOGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D73CFD0056
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235109360.2017.13316853991616000680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66259a53b9e5b91ff1db8c30d0f0f2e0349427a0a147200961873faa4da622a8
Date: Sun, 01 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772351093
