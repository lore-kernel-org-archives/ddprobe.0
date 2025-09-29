Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289CE3D76
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759105195; cv=none; b=csb2K5Kkf0O4ta4b752N6H8lDmAS6UO6BotG+LcCfA028O3wtfWKbf0TPtr8N2XuNYqHE2dhdJ0w9g1+ldMufZSYAzLTEOTw26ANkLb0QBIKO/WIJxNOitJA3gqbOlaUlPKDBLCxg/zgVNc4TZMs5gwusidhuw+RN4Q8MMGH9VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759105195; c=relaxed/simple;
	bh=VNjtM0W3ehfEzEkD/ShkFQ3nZoocWr1PfPLiNOPvp8A=;
	h=To:Subject:From:Message-Id:Date; b=nItXFDbckyi+UHvSJUNiYJSRPrlwgzfGn1hfCj9d/YgYAwOoZ7ASttdOoo0b2SEMA82LnNdmWRnkqaRzskof9+eAB3moUC5S+Z1FpQdIhnoc93HeEWlXbRfaA2EK5fajWcYL32GiHGlCJNJRKypOU5O6SLM0RhKU2472bCj4CpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/w4fUhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/w4fUhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E379C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759105193;
	bh=VNjtM0W3ehfEzEkD/ShkFQ3nZoocWr1PfPLiNOPvp8A=;
	h=To:Subject:From:Date:From;
	b=t/w4fUhwQRE4pYWKHKSNgOAWM5LmQ0yZ7df0KgJrezPqV4J2Ljntl1ctLYNTx+8/y
	 RE47ptU/b4kctGufXPva31x35ymvfDsUnksPvcibMdhH/u2GdPhzel4rTCDRPuYtb+
	 K9KZ59dt/0tPdNPnGB+eNI463JV6Vb2sZp/dIBLfC5WIWtkauitW50yi04XyulLiKP
	 s2X/FlA1wVSep9qWGmpfvZ5VVuntsjW0pO9ID4x6bUBpZ18Wnfofwq4f2LCLxQkqnZ
	 S9DQsLvNuPFSI26TcNdGKqRZK17qXq1un/50IhpiAc4Ndpekt8muUBUVYXm7WLreCM
	 eP6iS2XARslTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F307CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910519357.2534.17084702395728375581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8a7e6cccf16e008b290f2d523720bdad7f0e2210f7b265b37a5389c8a5c5c8
Date: Mon, 29 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759105193
