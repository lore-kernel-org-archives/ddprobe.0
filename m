Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB813CA4B2
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780652674; cv=none; b=JZ0w6SSZqdZrvZxeiVqvM+FUdCTjZa+OJ8SNzSGyR2CoJMJu7/wKUyMdMsITBKmy8ge/y/8kAgFAcbOeV63b2ur4Wo2vfIw20tSQHfLASY60rvK5pdGfFd8adEb8V+E6Um9v18eF6YSh/UXHDOrPfiRH3WydA/BmMngNmqQFKOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780652674; c=relaxed/simple;
	bh=3KHTYNuh6Cv+OaVp/W9fvUk2Tnmi1613bT87+ulIZr0=;
	h=To:Subject:From:Message-Id:Date; b=TtWB3XGd5POLCMQq3N80bwBDdNBF776FEWm4GmodLC0zAUh+KceXkxqMBvMNvGGYULJGLsxqTBkdnl2xEsOmT83hlYHoIYZ0PdbYfA4w7az9P3U8PBnqn0n8FuOfblTBU8qkjf5ZqbEMJ1EsmtCKRWdAYGNYp92M8sIFd8FFe1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca/dgJCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca/dgJCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBFCC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780652673;
	bh=3KHTYNuh6Cv+OaVp/W9fvUk2Tnmi1613bT87+ulIZr0=;
	h=To:Subject:From:Date:From;
	b=Ca/dgJCKxMhpxqXHBwNepbsFE0FNbU2RbAUPt/3NqfRy0Lsk85K1lddXDHsjFuQqx
	 Sm6xMcgeIj3yySl7PxoykwsAu6d3CFFCY1InxYZB52/Wng2PThMb+OxDqdRv/i/UHJ
	 tpyEMytZT5LGIx6v5uJLfS8rjt36Lm8qujzaHlJrU1Osi62RKnp0S9fLTjx6XORfTn
	 T6PRQpvOcF2dxv5ujeE+4h2aX04mLWwd6IeSfatGTJVb7eLP4CkvT7+4HsIzRsYNt2
	 cw43ZdGNH65KJoLCvKonbYrto0YxcdwJt7MWYfa1GpYNZjTa6CXPhlx6alfQF2FESR
	 5fdhEXK1EQ9lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8600CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065267373.27388.15475657592416326137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941644da2795aba5c87f2e571c44be05959cbe9900e40dffc951ab724586d96a
Date: Fri, 05 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780652673
