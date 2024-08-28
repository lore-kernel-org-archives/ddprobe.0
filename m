Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446B1F943
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724845554; cv=none; b=liBCyJnbzhLGDJRTmK5HY3EfRWA31i31RTJ9pRCvEzY8Pg8yPcbQlLrpfJ/6OduebROJAG9TFjHa52R5CnkfBeKHrfG6IlJOfHsSQJUCdN5pdqSbfsD3BmVPghMoLjD2RwvDN3f056GXKZV4USIg4R4D46RuJiATALhpUdJa1Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724845554; c=relaxed/simple;
	bh=4r8T4f01HtP0IhpX/hIHjG0Ef0actcyNdqid31n2MtM=;
	h=To:Subject:From:Message-Id:Date; b=oN7KD+mZG1O4uH2oz9U7QX3SVbPMb+WWS0yOP3u/a1/PgQj5dVXtzKcgbaHBxh3fo6ePjp35gb7ddHN42ii0NgGM86llJl99MbZVLrHCGZgcjs4vU/wbVBDRAtiM5l2IQFhp3ont0G4byP9gaA6QR3sJmm9efjRJ0Y+SbFjwzCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpBJGR4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpBJGR4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB29FC4FDEF
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724845553;
	bh=4r8T4f01HtP0IhpX/hIHjG0Ef0actcyNdqid31n2MtM=;
	h=To:Subject:From:Date:From;
	b=QpBJGR4CfxTYNUa9R8Pz70JS2gBTdECkoawiZFMy/KvNTNnA9F+A9OOEsEuNrSeuU
	 dOA6cUkb0AjT29yg9X0PM40kNnzYbpGYXbFmAtlr0gIm43nKf1OKOH0ynj6qFNqSG4
	 Ml9U0Pe6Qc8p4Dkfm9yIYwbOhrchLhcRLB4RjzhJ58BgZqtK94MZjsec/Evojc2bTk
	 0/RfVLkOlkg6+euD0N4uX8WuLblRWPP3nIrvwTqxr8qYQaRDy+E3htIKbvp9gFjPRB
	 aqq8fzHnB6uSa9ik8OGdD/vbrCLifbsQU1sGvKbiBV5OIcmIY+OUo7UDMjuh+8OvcQ
	 RynloJeGEfgwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F21C54EE3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484555359.4095.11737556218687492170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9fd021be5b9f14d1dd9aded15402070b9fe5b3b715206aa650636ad2012ca0
Date: Wed, 28 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724845553
