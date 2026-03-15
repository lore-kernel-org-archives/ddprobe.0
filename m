Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FEE336EF1
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773590094; cv=none; b=h1v1SdqNNbY/C/iRmDLxyp4AQAm0sp8H1mCLxllZAl/8Z3RHGg6WDMjLUyjTSbm2a8m9Dby9uyERooEOFTWN/eEdr7iy4558ugxBKBGqs1nZ3CFn3qT2jPht8y+TRHYU+69YB67CE8/LpWQUk7f0uU+k+6CPfm0ef2A0u34XlcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773590094; c=relaxed/simple;
	bh=XPpLVi80T/e8ngq7/oaKvJWcc1Lm3XuTzpe0Qfb9+GY=;
	h=To:Subject:From:Message-Id:Date; b=bsBGdtAOLN+qNuqxFFz65Hv3RKoAXaukKh9EVerYBXLIvsIOE3tXJFp16IN8bGGWlPXdKGV2MrkilyVATfp/W9vrEuv2pUrs0KAXpp8L/LiA5QKFjxDEIDfDmtrIhPhFedHSeOBIESqWiPYq9zpgmRdM2dqJSv8/lijzgshxc3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kek698Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kek698Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A0EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773590093;
	bh=XPpLVi80T/e8ngq7/oaKvJWcc1Lm3XuTzpe0Qfb9+GY=;
	h=To:Subject:From:Date:From;
	b=Kek698CsW/sebtgsJzQrDsOr2f1dN4BUA8/tdgPyilCFCmpifWhZ5dREhd1zvCudL
	 L6eS/1okjEsTjjIm97UZMMmfYY25/Fg7VamElKuPKpgSKqSvS2JqJwfu5YJubCknNV
	 u0n2+gWPYhYu+NiA18ahmGXtzXHGnMXCBIWxsODWZIwA3cyjBWCKqhErXXINAo4S5U
	 p1g/RHQ8vk/MYAUSjQuJZAaXBtRaw1BDRR4UDU2PHjYVKgQXrbcIWlxbxPs2mXFogN
	 Uk/oEWKDzuzaRWnQXQzGXUFNs2Db6zBMM2P4/Sm5b1S9qZqhNrw8zMY0R55bYcG0jw
	 KaJXlRJ7/0Xig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EA9F3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359009358.3966.8316648620844237106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39333e0cc002151e51e5983117865ce626fd400b6dc785c84bd521d840a81a39
Date: Sun, 15 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773590093
