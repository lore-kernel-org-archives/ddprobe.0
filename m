Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588C41946A2
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575983; cv=none; b=oL8WT2T6OWXadSts8UvsCV5IA5nJnNlavGtFsJfx2uE8QBkQQspZiMIv84/MLA2JBYEcRKrvaxDYx7ZvtK9memXy43S+HwRGYLGWJ8IuAR6bT/ITul2vfQqfrVuci9em+dCnqCD9TKlfEdVl2XzJC6oH0hN/NNzThKNs64clits=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575983; c=relaxed/simple;
	bh=Apu7sIuBVgFJmPWx7fRk+5/yVapC/gnB5GNXBwdPoTI=;
	h=To:Subject:From:Message-Id:Date; b=BW3th7QSYW/0wkqOrhIbYXNFoRn7ObIPAeYd+Hcvn2WiQjeKmCmmX+bjEZXMGEWZ0Yu8WUfYW66uZ+2XnSFgMzc/bCttugr82LCfcqlwQX9ms5GFIBqDx0YToOP7+asm8mmCZmL+q0QG9e8t8cKvjURXqu8Lw41xdtEZAF2ta3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki29w4F8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki29w4F8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3601C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717575982;
	bh=Apu7sIuBVgFJmPWx7fRk+5/yVapC/gnB5GNXBwdPoTI=;
	h=To:Subject:From:Date:From;
	b=ki29w4F8gx7x1NaoTr5h5Y/iIUwT3fOoSHrgeM6rTlIInVTktHoR1V2Oxgs2iGItL
	 +Ccm9qfRzcho19fxgviP/jQUWi0xHFC4Y3l3EvNc45GBRrDtrOPNlBeYKN2siGP32Y
	 P42N5jGkRKEo4Pt5D/qn2dozvlUcvaHFFPsqmwyxbAxIwtvdA3ftTw1mermCQqmVku
	 fmsVAy+AMVfkc5PeUuPQyDdoUn8ECvpXu/Gr6bvOdfYUNQJ/gKmyqwBUa+j7xyLi/E
	 J1mV3baUCEwbJaDba0x/Rin+0+mKm2aw7Rnbi5TzqBMpav71BlZfZBFR8YH3m+bazk
	 UrXFKQw3EbBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0265C27C52
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 08:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171757598283.24278.3736365354792240389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98041cb5c691ea449c97479bfb8e1e48c63cffe8f3b7048c29b7dad4e2d6d18
Date: Wed, 05 Jun 2024 08:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717575982
