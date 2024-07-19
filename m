Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B578C9E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721418354; cv=none; b=qWnBswSbeKGlvZEoNcVuHqDGwWLsL/zdh8KLFNd+mEzihIoHfTyiEsYBp5k7oS64hUVWG6DYhhxuaWo1abo0Kf00ONtau2KhskiCzwbjJixY74ttuiKVr61HB8c3oQMDwq+NVecC4WygTS3Hg2PfyRbOvhJAuN2H+0qStFT0QBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721418354; c=relaxed/simple;
	bh=iAHMCnjYpf4yq4SlyRZnL4HzrEDtNISSV/TLbCWHiMc=;
	h=To:Subject:From:Message-Id:Date; b=Rd/6943k0X8EB3wyd7kuSCd6pNg6B2YVRM+kr7x9UbK3SWiU1pJwSFQw9VpaaCGTV0a34qVuLTT9vgfAKIWLvxjbQFbQJKbJLP3kGf0VNL7WgWVlnxMHWCS+zrU40Ad/dhnfJLp1f1P5IuX0TAwvV5U08dFkQD0h3ZG9NuzYaSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVfTWKY7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVfTWKY7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16F7C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721418353;
	bh=iAHMCnjYpf4yq4SlyRZnL4HzrEDtNISSV/TLbCWHiMc=;
	h=To:Subject:From:Date:From;
	b=NVfTWKY7jXqQmpnDue9XGmxpAXoRv9Iu/1BOPrkNuw5O8fFNsKsVj7U0i55pSo8eS
	 +ovaKGAx5Uevz942sDafaCb4TTewy4icesiMjBNadfE2fgsvi46twzTQ3Ray4DFZF5
	 tkcE3EXPqNTfJWbnjQ9MBLqR3+tLqb6J7chWXUzY3HAS0H/fBPGPqFwYlUov6Xu4rk
	 pUUn54PMtIh4QiZPErbyy9yLNKC4/4feaiw0bzOXEUU7Nz8b1n7VjdN21cWLjxYljo
	 jQVYRQscH7LnsU3Pv+AvpbkEZGrCGmBBRxeu2QPZ1r8WRi1I/4/BE67bmeDSh0ecfD
	 U2yjbSn539pEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96827C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141835360.17612.12882377966716943047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33908c61e1bdaa5c77dbb2ddf36b3e0dcce2ef60e87587f9d5d9de9e8c51ea75
Date: Fri, 19 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721418353
