Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4816125E803
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746820194; cv=none; b=BahjTzkXOZ+5xv9hP47m259Z0enH5mdUaA22cWVgE2sHOdkUUPpArxip3pMdeuj58a9grf555lAABcU2XzCPpgO9WRUhlh1a396b1vSjiOgMza5X37CVSn+RDuHqNXKHF+43u65gPjIurBCzyZkkUXHLVXGpmU1HRnApJUmrlcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746820194; c=relaxed/simple;
	bh=+LHhcpRhCZltJo1ISo3GjRRPKd1wP1hQvx6QzR05XyY=;
	h=To:Subject:From:Message-Id:Date; b=eDoGYuGlnZWkMNYg2PCABm7ODgP19ZCwcFmmaRdNfWNOYnU/3ilUueZeXmweWrri5wKHKnuSpR4+2yq6HVBkA99ya6I61QdjOdMBC/1rAxF4UVxRe45Fwg68idANSATs9zps7uak5XCZhCTNVGJ/D3r9qyhAPJ1886UHrwjbk5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3wXVnbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3wXVnbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F573C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746820193;
	bh=+LHhcpRhCZltJo1ISo3GjRRPKd1wP1hQvx6QzR05XyY=;
	h=To:Subject:From:Date:From;
	b=Q3wXVnbI+IE1THUAheAwtyr8LbN5a1n0/xa58zbC4QenHGSr9cj7K67lStIa6nvZv
	 oVkL6VGpymLQe2atKo8g8CBNSWlW0TDCX15eGKY5Tw4VCwaV3Q9RySY0rNJNCsyz7g
	 MhO84DZ6aYB+PxycuV8zW/pRPnM6+5UHhazdW/g+2gNAXcZMG8d4C2dosjjhwON1OJ
	 +MyGVTDeZgiD5jItAbDFYdHJK8QaovHpnxIpm4FKOoQc/aFCKrAhPiLWD8TEqfndJV
	 o2xIXnlvIHv1QTPlXP2XSFBwh3xft4w6dj0xQOBJuIDMfz1c7sVVV6fn86rH5ELFAA
	 oaTNOmcbR8Rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CAC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682019357.14804.10302908438827205518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cbab5e112e0221402c15b972f26a82aab753f3469728c1b5d9ffc965c97a1f
Date: Fri, 09 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746820193
