Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AC12572
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728265554; cv=none; b=eVN4ACOZ3PzKrk6q0u9QlVrQdMYy39v6SVhg7Ga3bl8muQx00gvcZk3xodn+0rG0mOnv+/f2QXIw6G4Cf1/oFxjpP46NkpBXfJuVtm2nnsQ1vWLVJSesuczubvQmQOURKN35JgIzrNL5Uj2RoyVVujZ2AZOMOmD/HS2Cl8PEvpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728265554; c=relaxed/simple;
	bh=lp2N4bJh2jwIStXyrtiqbuGbJFzMVhrjeK5hnUWtooY=;
	h=To:Subject:From:Message-Id:Date; b=tCKf5OjR3PSWPz1sYQ3PXhmLsv0h+YpTSs+RzOU49FYLh5VC/9Uuhxujl8Q9b9CTeMs7O9QXEkxiqbvsIiscC+NGZJg/svuPz67sh7MAjw3LQZNtynEDPLAY6AxKQp+HbBXADGfwlhrC6w4fvHr3SmSFCEt0S+353nta6PrsjkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGpZ1yqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGpZ1yqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB4C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728265553;
	bh=lp2N4bJh2jwIStXyrtiqbuGbJFzMVhrjeK5hnUWtooY=;
	h=To:Subject:From:Date:From;
	b=CGpZ1yqCeAQOmJFRa3vH7s+gorIVDkPfyhAQ5iWXgF4J06VnMyk5Ib/l8AOOaZMMi
	 v1MFcFpEAJQUPobX92sg38ayDHyWkRfsrteqXxb3gVCtBrSd8cyHXYhDW1n2nEZAx/
	 qUl6QIvngyhSnGuBWLrhWm3enLZadvjPT5jn9erPHiNt7Ktwj7ybyXTtZRz8msgAiK
	 q53Tqd8M0Yv47chGgk55P/ywv+FGU427+JeNYGkDh2kxa0C4JiQbjw/DtPK8a1hJ0X
	 Yb3RrF1SCCk9INrbfaL4WNQTTRAYHJPq28ITHsIJ57cYpmd3lrhPljV7SK7M+w+sBE
	 L/y6OkT3ErJgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3BCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826555358.22840.9393857573435898535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e0227c7f8e099daa55905f161dbb9fa45453afef63b90675e3a8c6a2fc71bc
Date: Mon, 07 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728265553
