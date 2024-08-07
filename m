Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2B13A3F0
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723021554; cv=none; b=cI/Sd4xXJLTTdnpRiEYcrBlvPjQob7VBhtX2k+TH/pS5cZXccAKw1oGSmOp7NZKGT1BZlBuQZb9nqPtr4oPsUSbthFNBQN0wAbCAUSlVCHOMDwu83bj656wg2iGKpZ1aaGhHA3LuqTqI9qKqaac/jLqtClxSXziFKsozNUX9h00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723021554; c=relaxed/simple;
	bh=kN2QpqErBuy63fRR4KV3+owL7aCyR1FwhvKVo8gRRWk=;
	h=To:Subject:From:Message-Id:Date; b=bfvjGpFrR0EqRQEHW8YwyRUsynDzeXk8cSVtITmepaFWyvDS1N8p5bWPaRjw0yY4PIIIjMRlyS9ZM4UAqM8y3kSr9Z//y/nPfD+LhtO75U8etcSDLeg7utkRtD/pbOqWA0U06RmmdLHlzht2FpmejWXmT224LCGjjoYEAckqYBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vdxke6qD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vdxke6qD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF017C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723021553;
	bh=kN2QpqErBuy63fRR4KV3+owL7aCyR1FwhvKVo8gRRWk=;
	h=To:Subject:From:Date:From;
	b=Vdxke6qDeW+mdNYXvREkjEDenxA0Hr+OGEmbcghgnSIso1E4jx4Bez/iWCdi1vus7
	 +uC1CdVmSA8nV7Gh4BiURzbNexlnl0mnK7oH0j3Mq4PTKPm5246L6FIrfmxc8lfrJ7
	 yaX1mEUx+SPvFkU4CywJYPtU/mjaMcHZdgvZJ2TLVD7ybmHZDmIsu6nowU+L5CtZef
	 Hkl85XPv3TQz+dVibKCxzVxUBDmRnQaeZHBbD5UV3tno45NmNQ8hJZiBDQwPSeT0Mt
	 Bfz00cjAy6Sx+D0j2FLnqd9rbYvdgPNUaFurSWG1lxrtw3ZRnBzSqXGj7fjdDeWKED
	 jROdpKKKCmSgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2B4C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302155362.8548.1180012585141231991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4b8a1d0909f4c17e85ff8cb22168d3eeb3bfe02613269b072af9679999c2e1
Date: Wed, 07 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723021553
