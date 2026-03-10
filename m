Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39E13233E8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773125094; cv=none; b=jUdrwgrGS0TI46B3dXTLUwjuLoZsG9GSWbARvw7+Ej2jnOPaWYpodZpiHqBNwLsjhO01a/4/wtQSYyUG3t7iRsjlk7s1OAQPXyH83fmlLD2Up2AQgqDb3JYEnZXD74aQLsRaANFxlcauULpXECDHGYH0WGUUdGTVXgZY9gUqcJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773125094; c=relaxed/simple;
	bh=Qw2vhfwPdMlrYI9wR3t7422FwNQuP1A1U3pssHcPRcs=;
	h=To:Subject:From:Message-Id:Date; b=Gv2pIWrZimUmSzKoMDR1oBh+IKvyR8/l+67VGybr6d6i0Z93WA6Cu1G+3+afBRlNJpc2np0ayD9wehWechOSB28/NouXeoZcZgYGUp2Q8zrxu0axaB4vpOPlvrVzPR+PqQrkXrxQCALql+yNBZEYcbr8kCpbK5DaJwMIMWdNkcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2TmINv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2TmINv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD15C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773125093;
	bh=Qw2vhfwPdMlrYI9wR3t7422FwNQuP1A1U3pssHcPRcs=;
	h=To:Subject:From:Date:From;
	b=Y2TmINv73VDEaGyhKXMKdeJ+ywPfxr3DW8Z1sjb2QwijDRagFpuwI8IosVODF68ue
	 2SD/oNKnIH+xIWl0nNA6ntfL5i2JNfhxCSxkH3HdHaKNWd62+Eh9WTMI2ye9HnZLs+
	 28/yW1tJTdeXBv02uuY4GoFs2KU92OLAt7XCk4a6CB8aitMYUtiO3SrwoahlgrPFDN
	 bXKZmNPYSRBtD4ib36zWqYW0Wepndb+YV4/DMl6SldaBmC7vRGGt3KImDjXbEqMGBf
	 mslFTSQSg+l4QSQfxjYc1DZ4WDvuoqs6/Hv3BGpRGj0gYvi+KdNEnDPpnOjLETQ8dU
	 e21gDtYwvvmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC26FCC9CB
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177312509357.11585.7966098984421521760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1927cb186716608c79140b7940435727530e3f8b2c3a9c6536630fe53805dc
Date: Tue, 10 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773125093
