Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C615526A0E0
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751357993; cv=none; b=FGCwVfmusbchPZzF2S750v9xJlfP2E6ApUY3OFXrnzlBcBh39II6DJlQ4BDpEAmaJzffSmy9NdIVe2PsPTKrrQGWhi23sqxt79mOhHngeOTT95DSC9+6S27A57Yp6VSsWQ6fgURZRka4ZTDCVO7LWZ9LJ6w4t7OsvNvcl1lTRow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751357993; c=relaxed/simple;
	bh=Kd7GLunx6A4kTt6RNjLiZd9q4tLt8DI6a8HUj8zchag=;
	h=To:Subject:From:Message-Id:Date; b=FLLbzFXRbO0ZQiYWTIL+EcQZ8O5hNt7zikaO7q7uhDhtHng03Iz+62fvPeeCbLWx2lvNbMSKzYyC6aLEPFoEfZ8xOsBn4nlI5noN4oePNGIy3Mm+Yb5qAt6LiQ+t3t+xCn+V+dIOxV8KpRBwfLCta2Shh0sBwKyxOPSnwIxQq7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jT1aLilw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jT1aLilw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F49C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751357993;
	bh=Kd7GLunx6A4kTt6RNjLiZd9q4tLt8DI6a8HUj8zchag=;
	h=To:Subject:From:Date:From;
	b=jT1aLilwZIsAl7HOYmILUSmaDiErCPGRnGaln+98oW3/N++pVy9yZt79MrLgNi4RA
	 BVOn45K0numGGYCW0d0HtAqqRTPcq6Jq18OFV1Ubv8Nkx7/sGeV1XewovyBH13j7G6
	 SXwf0ubXkROYU2GvD96dAUlJlAIBiycQD/nCaDrTxNticie3fR2+YEVgxDtxFPDuax
	 uR2MhIC7sNZhYn3+pKpLFM3euRJefPURGo3fXhyU0bK2egQpgW+nUMEv87Ll2T4hi1
	 pO77dwtqAnnrKoM8uX2nNca6bgra1EecbnvypCwW+qGLpK/MaJZtTrsEXLrBG4mWJM
	 tLfWWabvDghpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7BC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135799357.14211.11255491254098488736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bab17b879984a8162c881d2a6a0ee724a661b074ba2b5abfa720151475e57a
Date: Tue, 01 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751357993
