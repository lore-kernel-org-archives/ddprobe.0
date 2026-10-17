Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B768242D7B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792243234; cv=none; b=p4En6Xr6aN3Ng5R7YbGv0E/o47jwF4LgqxN7kvkcesSxuYHqzJ5hvq96oDTLB7R7sRXJstcy37+n6kXJw87ZeH2dXMDhTUsyPpvL69z7Hb5mngW7nCiaOz5RrklKEZvw+0pvozssdAU2vS/FNkj7IP9On+5gr83VY8ZXphivlEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792243234; c=relaxed/simple;
	bh=sbDRWK8ocLm1u4G+EtQCxXiMFVOI0D7jvQyE1yQRIxM=;
	h=To:Subject:From:Message-Id:Date; b=feW7OQCu2GEr0QHrvjvpXsIw/038HNGaGU4EGxul9pbFNtJE0kNNTlV0KB48vDg6C0U0qIGx5DngsLPYTDF7TiEAoiOrpyd6K6TNO7tbAH0TznBsclOo/nJu7Ce1V1Sz6LjdlIva3awHdZDIzAO6GxkvN7PUzfXnevu5hwvka2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5CFcIfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5CFcIfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF46AC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792243233;
	bh=sbDRWK8ocLm1u4G+EtQCxXiMFVOI0D7jvQyE1yQRIxM=;
	h=To:Subject:From:Date:From;
	b=C5CFcIfCIkeShTawKSWSH/LafensmLyS2ngvK1k4W8tcEdemxNerAe25lpoW6jK+S
	 0ckx+LOLeiVsjSIGp7rGeKU4aMnjuHS5lxXNxcKIy9CrjydwPcVIXaKOfX++JMVBMD
	 syZbsXvkd//w3mkH6iNRifzono4p9COo8k2p5jsx55XfFY6Gq8kE4Svpo3PshjKWyD
	 IL2QsBcG8/6rwcD7IG+PmjFAneIaCp01xlAafjLre3GnhvszZx9bBxLPhoqZu2N5Ql
	 vhZuTOQhDcVvhrJGEOJ6hPrwL/r50rRGTqPGy7rRWIo1JF6/yXZe8H6PESOiOWV0gO
	 bpVazbW1af/ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B769DCCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224323372.3485.18141013077388646162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a775092340b872047b4aa3716f7fc0b497d499471e1c5433bb79533f1b08516
Date: Sat, 17 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792243233
