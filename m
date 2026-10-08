Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E440332638
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791491434; cv=none; b=Jz5hTw1oA7VvhP3qqonH1+AVFNOg+NdMM7ZmBwzqkP6RmpgtAOPGrKSCIiENk2QCVcEU+LOyooOwK9eMPfVid2uLVZqzMfwbrFesaFE+EpDwCIumxrsqCnzWcMyoxrItjrzjkg15uSNuFGLGSRPhAvRAp3WglkCPR5yNScsotoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791491434; c=relaxed/simple;
	bh=wzrqSE28tIGUvlxPR4rJUKYxERgnTWb48VY42cGCrbI=;
	h=To:Subject:From:Message-Id:Date; b=foyEsgYhK5VNXrLG8OAuUZSGtYxhbwYCXoNzfGxEXMcUOoT5loj+D53skQjpZAf/f2qNm8kcoIvy0XwRLCGmhCpc0tt/Ywk+W/Gb0lETSaapwwdiVH0wLI5+BH6qUNz8Q3gBKoUoA/Q/TdsMTuuaAYt9VFHPZX333Qmm7+uXfos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2nfv6L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2nfv6L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BE0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791491433;
	bh=wzrqSE28tIGUvlxPR4rJUKYxERgnTWb48VY42cGCrbI=;
	h=To:Subject:From:Date:From;
	b=p2nfv6L/Kn6utQHNXLKXa8wndOMjxWEcqjqIbYuZSA+pFGiRYWXHSVigmpRVh+zHL
	 uYoSuljXQQQXtg+c0iNI4+z26rGdrJ2WdHlGVRdbBO0K+SPb6U2o5tfjxGdEAguW0q
	 2+1sbR+Xr3I5YklaEwIYdkb/el06y6ZOTGASJiapnc18ZyK/aJ2+CaJs/hKiMd8tWq
	 HjRu7ygBOGmFWETP3Xua/XMyuIv3ZDcv0fIJvSXpmfQfGaiIlhNxhkmm1Fh90vNOq/
	 EACP3hX0QdM+ATphh8849y2pI1twUhF2S25qNO5DU33dUHJE/um75ZOlrOgdHbElur
	 E2dMsgTK5zycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E8CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149143369.18281.2104885334180552998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e064e9660e587ca3cfe14daf7b315b4fe030a6ef5aecbb940100396132b6b0
Date: Thu, 08 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791491433
