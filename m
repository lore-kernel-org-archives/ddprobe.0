Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E52416849
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785508834; cv=none; b=pBU137KdYoh6biHJR5PpOzYeeZNqRTKXO/2t9e1P+oCIkFBQwVU+qnq9AMhph2VH+HGn+/o+gQv7NQyRuFvtiZCdtluOL9/1EaC+UAj3rXcAXcyeqkHEJ+PNJDmvu8bU3BdqUf8s9PQHsmbZNOiVs8IHscFoPN1REv8dbgAsuA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785508834; c=relaxed/simple;
	bh=lLY8zlyAfDHX4UIhkRd09ofrjSENcyA0BYryZt44FlE=;
	h=To:Subject:From:Message-Id:Date; b=amwoiFyvQh+MEZ/Lz0rxtg/83xLpV1+SA30bOg8wp+bN/99Rgdce2w162oAmkqcBek1abMolegN0n9GzdHpi+1IaXGdJQJXFWJuG2zsEGd+/I+tqOU958PlsmVcJBbV4IEHlgRo20qRBlw1EDKK0+oztdrDW47bQY6prWMPZq2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfNSDphi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfNSDphi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F6C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785508833;
	bh=lLY8zlyAfDHX4UIhkRd09ofrjSENcyA0BYryZt44FlE=;
	h=To:Subject:From:Date:From;
	b=bfNSDphiFBE6UkDyMLzVdDTMYDVivrXlp2dVgOGn0PeeZ+RKsYCmFMyiT+9iKxWr1
	 YEKaFKvc4HATIr+efnktquUPCKY8chLHGeYmhj/D+3riGRQmeaG9+Nmhrsjct8ng1l
	 kuFTVfoRwfm3yk1zOSHQkrPLYMHuFIPmtADuB23LL1TvmIJRSWjkEE8/jRhRRxbDua
	 T39URC/VF6+wmZDSZlywsB6OxJt4O9L3bOM693XOBlH0cczTv09lq6YEc9x/9D5TJQ
	 CXKv8TfmXJhAbhhjumFtnZC/OX7ZsH3RdpSroobIqrsyGBXOGFJgRzix9HSJTmS3T9
	 vxhA7MD9BaMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A2C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550883369.27952.3208031353671714187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edd56c5b11fd56356053c01ccb1ad9183ff8cece352c687149559e93cc1234e
Date: Fri, 31 Jul 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785508833
