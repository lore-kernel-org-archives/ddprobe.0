Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5621F9A99
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902354; cv=none; b=TrVGfVACWr59tCaUvFlfZJxAuQXu2NcnCn4Q61E8TrWBJsuo8nZ2VoAPmePVTSd033xXhAK1oEXjXx0FcQ8aKjkbPmUqTYEVz5T98XMgOp14f7niTySuQtNCrLM/dlXU7OZmLeUq3j9SDjr4gNECw1nCDkQD3oJHV07HsnOJWAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902354; c=relaxed/simple;
	bh=RtjcbzD5ZXeWEgZK08LMxapCmGLCDSRjSZEPiLtDsGk=;
	h=To:Subject:From:Message-Id:Date; b=ts0anev0AJ0nzyXSkhmkngVTrT9CCChqod7pLsYTFnF22cmAml3ZC9WSs3UBhL4IegOH9x5itMjHn2sRcEA32QyKo4A6v3Wd2eOvfbiZFFj2hcpatg6hTKrCNPIkJFEyfKbWFJpAbHd23grcfSGaQ4KBtZlUmZGKk/WSRUJ+0sI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q29V2RBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q29V2RBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC908C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735902353;
	bh=RtjcbzD5ZXeWEgZK08LMxapCmGLCDSRjSZEPiLtDsGk=;
	h=To:Subject:From:Date:From;
	b=Q29V2RBcvHX2Ena3ZFTzJDs7LMPtCW9+Xh/Jf7fBzGEXSdPPR14yTd7jKKq8JlTKS
	 /p43D5ST+tmjXsd1FZwet+2MTcAX2GetMeO3zLIEQD1STdDmn8Nkrii+CVktGHEkhC
	 c7KVqsDmaQfbhp4J/22DCzchvz8DmCblzqMLwoglWvM+GocU+aGh0tkO1ztq+8DYTj
	 fWWZLNbAuF1xqkvu1RMxg9PkIDV/tVp/gtvKNxf1MMhYJJ89UUxoAUBgUTOYUh/hJ1
	 BxNMKQhebzXVaOytS16bFOURfV2WJMvWDHo/z7qtM2S51KfhVdbwnXkNPhShUjjoLR
	 K8IDwDDWLUgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98203E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590235361.25278.10260747759184375349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca89ac7bc2d1f1dc5f29b6cc84180b393237d247f2ae460e54d474a71a29851
Date: Fri, 03 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735902353
