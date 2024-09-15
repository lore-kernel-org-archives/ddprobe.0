Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF5221C6F7B
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726417554; cv=none; b=kPxBmxFBD7clyoJRaKbOXBeNLEZoxQwRQEXcZswMHXRktBifDkFH+D1IEQrtex9/tc6fgXxX08fOzmX435Lcm/mK+jhWdn35B9WYx2TUbXmL1kMl+boqZ65xyGGRtlnscdroSmHH85ntJEmSNhCnBlTxpFumetro1WqWaTgNyqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726417554; c=relaxed/simple;
	bh=2VymVW2sF9C67s91MP39DUbvht3ICf5naqZb29yEKjA=;
	h=To:Subject:From:Message-Id:Date; b=QsESYm47geSsbp1vsGLUs6G+25SLfqSmTUnJwUYscjGTTCeiXEbjuAXwFi2oh1xmPSKDM6c3+NNK1EJfqa6N07rOLGwjznWSEUFs6434yF0OkT7VcZQZz2Lp6QTQo9H7u07Q/PWDQbq9e/clADb5ooewroH8rwAigSA8WZENtpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBgM+uTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBgM+uTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD14C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726417553;
	bh=2VymVW2sF9C67s91MP39DUbvht3ICf5naqZb29yEKjA=;
	h=To:Subject:From:Date:From;
	b=NBgM+uTOzDrntpgXjaG7lVVs0Rgn+AjbapAtA1XxNJi1HRTMNnLbd8fhJ9DRfXsP2
	 C8NuhQkDIJS8ilrlZUUcHY376nB45go9ch6XBoBdxBk8bKCG93WFclNPPYdSpgNB+X
	 VHnGNfykWSW5osCVdYE9mqMY0mzfpgMG2In3/1BainViZn7JBsLM/cIri+JsdQJCVA
	 ZB/1lJ4+f1N4HijPBBWSlWP3EfI7Y7G+NtBqIn0MOSXQzR9xHbXVRk8vHT/K5jXzdN
	 DKOV21UEaYwwi42lcLhJuws8Qh9nPpWGWv0S/NSbBvINRdPeQhE2VN2PV+WW7/1pQz
	 B/1Cr9QOcumQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94071C3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641755358.28004.14354966051504361893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee2b78e6b27fdf715ebcb08ed0d4fb79073d45eb03e043d2c0342169559d393
Date: Sun, 15 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726417553
