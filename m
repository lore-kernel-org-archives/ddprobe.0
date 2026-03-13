Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AD21DF751
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773380094; cv=none; b=aHe5y1EbUxVp1BolUTBlQycjzjsLG9j73sTZz0IQri4qXd/Pk6XV/drjG29xR930CoVsm5GNRLO4bwwMspXw4LUbanhaDpDUza8SZTgLFV9IiHAmMMpH01JBtgDN+wisB00YZriWnnXTx2XuEfTpy7o7o4aBWVNLNT1tDi/3Ows=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773380094; c=relaxed/simple;
	bh=6cO7+4ZwcTsj09IrjN4tbOPAMGFIZu11N4vWr9yAtuY=;
	h=To:Subject:From:Message-Id:Date; b=TfsB5dnDEO89xoycy3D+t2x/X92UcIgI8U3hkHIxuxn9XIwIUja2aqxLXgPwnAP70SwLVM7VTmse3qSN91BoN0zF9O2AUVhv1UzT5MPEKxd3uuPhAMUoQKvYFeDyu7sIT2/SM/dTjBaZArj3dxAeGwNiyyljDSAhqFK2iVR9UbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqPJUqFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqPJUqFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2452C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773380093;
	bh=6cO7+4ZwcTsj09IrjN4tbOPAMGFIZu11N4vWr9yAtuY=;
	h=To:Subject:From:Date:From;
	b=nqPJUqFeJenyaDh8u4PdEIn3l4Ez5pWZuWwwg5udFc7rMF3edCU+sP07SC2bvlYAy
	 JSbWkh8bQTP2jV/ihjT5yt6SK+MKMuIALWj76tfId/IvNinf4arUZhKi32xPtuFuaB
	 bdPOsiGIY8JHAkeh/lzm8ldDEa8oDBPXXW5teJJbsAeBFGkah0tRD8Yz1rnNd+bPXx
	 dzPHg6tnTNEEc0YktssK9Bm7up/JQe70iPSp49Xoj+l6ZVcemDlWPLMtQLdw+0JJG7
	 6cK2FafoZ1awhmJ2PvmrNPXbZB1HBZkP01U9vTnqfpjYbJJydqFeEZiaNEYkuwMmud
	 BWll6clnEsR2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F143106FD80
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338009357.14136.9074727208591725554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59744d55952f6c07703a18e08d8486c498f2ef455fc358c19739ceee14691274
Date: Fri, 13 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773380093
