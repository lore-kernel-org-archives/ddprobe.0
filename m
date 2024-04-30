Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9BF199E9E
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714506743; cv=none; b=Q6ai196PfIp1xydt7H+o+6h89LmUMpAbmYl2nknZodZeP72S0IgWyyrDcXM9NIq9FCAW2p9nmAqDkQKgeCnyGzVDnnPXEaOrMvST4oGvBIshhPj5v/yB/DJ7DAtuW5VIvjqalJPiXn98sKLoI/ZuFzygPDJd6A1KKuoKWhYWRRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714506743; c=relaxed/simple;
	bh=pANDfhol5VrsYcMpsgr0eA2/q4NC1fLXBD4mSBRPisE=;
	h=To:Subject:From:Message-Id:Date; b=ChwG4oBx5vI+/1c70Ec7HOYkmmAcXZmW4EOcMeSit6uH+bSVQKtcz1Uo6TALdvaSzicGRK86QCFZrSZcs06hXn3GEGB4huVw2PBtC3TOmHPbzyC1F9vFMwhV0u5d/nbiZ6EK/25MNJiNFklNExTjLUq51LzhFh0zW3P77xIXOKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEXV8Cl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEXV8Cl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78CFC4AF17
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714506742;
	bh=pANDfhol5VrsYcMpsgr0eA2/q4NC1fLXBD4mSBRPisE=;
	h=To:Subject:From:Date:From;
	b=pEXV8Cl+1axQp8B4nUnnRBcMWK8C8j5v2ynpNog0gPfx2IsSl7X/11k/73bhtFF1Y
	 IGcZnOpgDkhg7+yMflmaFFKatwqcXRwkOSnx98qvRWhkCXxpYpwsCg7GwMDb9LDEWz
	 FFUiFGSFwPzYcmVZuv8penjY19J8saM1rmIMPAn3ofopAi+KvXUVEZxL+cTWcYphcP
	 BeW/SuKnjW9Dc+7BsOer816MK1x24ing+HJXpZsY8QdWBKTL1/r4OOFP8Cct6DYESx
	 T7nV668g2MibS7+D5w4hGvXMudlEPJoo5AUZgN1nsOVsNjvcClznytjznL0UchnzKV
	 95XWWAA+os+qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3477C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450674279.23809.12576933838230459217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d740cb8dd15da8856c4649edd20bf1ed235ac72f01a97fdbe39795e3536014
Date: Tue, 30 Apr 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714506742
