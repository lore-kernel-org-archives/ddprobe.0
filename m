Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E3E18EFD4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750331393; cv=none; b=cJwlQ5sJwOrv/yB+yA8i8b/v2icA/5p2pSr86Cz0P6xqSdvAWRac98PBkhdg9fWhhJ4Q+82pH5LT9JJmsN8LHwFP1OGrgZljJp+FJuGXRGSoYR8CQ6cmpnKQJsaY2CLfgM1225WyQv2+fCCCadlv9kZzN1bsUbsbb8vHgxiodYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750331393; c=relaxed/simple;
	bh=xEj5vDLzlMORZun4n4Xw1rJWt0WLVOE8czKX+R7pLWc=;
	h=To:Subject:From:Message-Id:Date; b=NJp/V/nRO9mBFSu706YACxYfegmDo+qRDGQcDx21Fa33YaENyG3gm37GBJarlm8fbl6U+P1lV6XIR2dOaq17HZEmbBbTFhVax04vYwIc4B3GF9QqvydJAsBwsHjuo7nI+qZ8K7OcJrRcwWM9LGCwWGmPb+x90OR1uAA6KNL4J3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJ9nt5HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJ9nt5HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CCC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750331393;
	bh=xEj5vDLzlMORZun4n4Xw1rJWt0WLVOE8czKX+R7pLWc=;
	h=To:Subject:From:Date:From;
	b=KJ9nt5HEcuPQsbzKp1JFBCwkF1hnJxNBYmFiJL8lg6ElqNkDNH0cvy5pCOqpQVLqy
	 yjaU80s9qJ71TqNvv259BEOFbsTNhhkIQ4YMPGdr0Rck1s/71APwMDAdkvvT9co85n
	 rGGhdtx47inrrCUcDyMFNdAGzw+oKLCJ98XbVzjeHpuhEMyjGo8t5je9QIzGIag+px
	 jKn9KBla1tWepasmy8bCbcw2ldddd5E0c1y3DipHKF8fshdp1BcNgbtagR2uiVnQqv
	 oV69LJtx+eUpTIYOYWCXUPtWKXbT0tjBZuKr4tNDGa98L541saqTXgPBTdGx1EQm4h
	 pnBs2DmwVJCqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F505C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033139358.10207.17160589428119207440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16aeb8ad9ce4fa51dbeb4ebd54d594c4942672dc5682a44f90473b73ef697f64
Date: Thu, 19 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750331393
