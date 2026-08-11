Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374AB30C147
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786465234; cv=none; b=hH82btj7OWFzqBYPgK+ibCKumWBc7peGFHp+HKgiOc9HRSQp9Y+5egIo+NDVI9pHDM/IalHDSSfPJ3Mu846PHZ1lBmXNtZM9o58sHsih45qQfopIOpxtNopaUiAvlnmFKa0QDvnGPJeNNoh2zWz3+ieSb5zkv0H/zbfJDBVVZbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786465234; c=relaxed/simple;
	bh=dpTWVMKQl2uTBe+IVU+wWWZ+lDRII49wPbxUDUewTsU=;
	h=To:Subject:From:Message-Id:Date; b=lNeH/mxPk7lg2MndwYoa4y1zao2gi5JtCuoyHxNCSB8rnGs0Ut7XwV+0Xt/H+xdUuiXsZXW6ofxYTYdoXfgGmId7KA2uGkBehKEM769XV1bT2nMSuA0Vsv00hYVgNMUA+mZHqIgHQ4FG9fdvSk2XUqF9UX7xTmkPN7E1Wo2zTTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5gq6iEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5gq6iEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF72C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786465233;
	bh=dpTWVMKQl2uTBe+IVU+wWWZ+lDRII49wPbxUDUewTsU=;
	h=To:Subject:From:Date:From;
	b=Y5gq6iEYyGSl0oluJtBY6nHKcEIAFT2OX0xlruTtglGKiY8cnQqQwpogsSGoO9e4U
	 NNg6U5lPewhDk6PUUUpYfPj3dx5jxxuDc+XWcHWTSLz4SmO4++HLPbXySsID3Vl8EO
	 BSGYboyN7cy04/GvdkqgSXDaGHQ+bPCyyQ9DbJjqw9OOVb0PLzcY+jBCMGFvomqau/
	 r+GRw571apkZc3J6PBs8DZcTg8Ug424n3OI8N1UPFhmu5oHrdNHQje6DKo+yYTr0bR
	 PUX3kKl9ih+8/bbui72i2JN1SZC90JYp4f5WhvZicVfxcrtzaogoiIigqRnpnXsReJ
	 lIng1GwgcI2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9280C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646523368.14242.9006155200583616099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae8e551c911df79c65dcd82fd311c7dd19ec1594e996a00a02fc8d724383358
Date: Tue, 11 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786465233
