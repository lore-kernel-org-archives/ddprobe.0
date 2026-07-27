Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D21D3EFFA7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785145836; cv=none; b=HQbD9+0JdhfFaFetFzC0b0idwc2nhcJh+pu6lLfR7q1toHTHuXWILxdSSXIzNM3opZik5+H22skloDZizFIjUl4RKG/RRvETCXCffax0WhoUki9aW6pk9tGgTgSPOBVFm0XiSxLGr0YjH4WODm3ps4CSrS2VwgDb02mYeqdurj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785145836; c=relaxed/simple;
	bh=ADNQHN6j6RDZEym+BsG2aX6BCfqiTxTBwVKQ6jBr/zk=;
	h=To:Subject:From:Message-Id:Date; b=i91yQMJZRW4atIMDO2EVYlSza+veZ4VwoVNeZuPX7oHr/N0odEBnpi+tHU8TexwMeao3MdHoK1/E63prLskB3EX2M9k3YAkJ9wvAXlMTV2BlWNZ9dRh2P+xU2VfxMAAtHsODkvnme0JmlWjIZAYpx6R48UpXhbyThRTpogkYLUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRVVZHko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRVVZHko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5FDC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785145833;
	bh=ADNQHN6j6RDZEym+BsG2aX6BCfqiTxTBwVKQ6jBr/zk=;
	h=To:Subject:From:Date:From;
	b=PRVVZHkoDbbN/GsjQgY68rN96xlOVUSpYt14g7gwsdfYad7f3QeG7GkyYrrYx7Dw8
	 ZPY8IIc3PG2iHrjyN1kMOvqTe+AWlqlWlCX/B0HOVlk7tILrTwqjmEcWYGvCy+UgPh
	 nIkdlLZavo/cs9L09sEYE32SiRrQuVDhUbzJscn+11xyGWuwlRgdIRxdTb+mncw93l
	 jp6FTnhL+p35g97fh79yKC1RJP8nxnBSsYu2iYUu80Kw7uoPPSYDSLg9nfeFwf5BCi
	 PY5X9nRfSupJbK3i2dIgT7CXMXIkbOt56ZUvvj6i1VTY0mbD42yzS1VBH0DQRKc0B3
	 JJZaknowtUKdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53BBC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178514583373.25559.106611743960552855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acd4770d4e39f22837eaeb1f711cd6a0d6f88b64eed0e628f38d3c5e170fe01
Date: Mon, 27 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785145833
