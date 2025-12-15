Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF9A2D8387
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765784573; cv=none; b=MrrQIZOo7l1b0IM7qEqLPXbyj3BPMAHYszir/kDGse+6262l1H808wtaPS6ZMLoJxCrp76mWw4tD395XCJAtG0rt97GJtPyeoh9z2MJ6ZThbxaU51mo165tVXtFh9ODQRj2L9W0fL2R3OyIzJR6SmZQl3C8Hl1OjcNpOD9XCW60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765784573; c=relaxed/simple;
	bh=51wLtRxvNZ4xd9JRVPV1Uv4Dj6dNBtm8LIaCaNs+6vE=;
	h=To:Subject:From:Message-Id:Date; b=p2jaHky/s3Oj7yYO/1QGypo20etgWb/ZHUm/d5zwz+WTulb3tk7ZKNwClTRjly41dzIPQSBgB3N0Z2s9BoTHnLfsDDlXVa6gcoyPyclXmyNtYQFhSMv2/yDQTuS9GJIrKuKSC8bv6IF60z/JQOYuuk7TuGwY0Z9z13DOWaDN80k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2hnRvEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2hnRvEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D10C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765784573;
	bh=51wLtRxvNZ4xd9JRVPV1Uv4Dj6dNBtm8LIaCaNs+6vE=;
	h=To:Subject:From:Date:From;
	b=I2hnRvEGirH6Nor4QJvzDyH8w8cg3b2Dl9vItUyAbSl8TpdA1PLY5fIMosBfStcW2
	 GSaYE6hF07LMcWQOGpoSd9htmRyBsxgq0aa7Pco7ytmOS6Jp8+AvbuosBto6u8nfxn
	 B6OUuHkBHHgWT1xYY3LgMqKw+p3AQaVOSXE0G3SrelmA0ZVZzzKxCXYJtCCiCNM45f
	 Xx3hbFUbNYNKQeN1icqFBqEdfBFcVnz2uj92hsoVvvFHk7GEWsSERoCSr72FW+To2q
	 4WWlD6OeX6GaZuUCBv2djOKx7S67NCITFa+JiBHw/khbu4o1I0bs3VbRTiKExOcSts
	 E3cBqWbB45GIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90478D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578457358.5415.2062775559061653524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f0e7aa5254275fb74ad4eaa1c64535b0323912378867207d9106d360f72c56
Date: Mon, 15 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765784573
