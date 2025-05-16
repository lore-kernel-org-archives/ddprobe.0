Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3108822FAF8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747387194; cv=none; b=cxu7epQd5p52JxF2EPZDU0ptbC9fTuSWuKU+kdC07VhrYvYoHZvbq21ZRHcZwaTqwzvZFM5xbm31lGPwY7PJF761Xmf0Qwu41obpDe6GmSMP7YuC4EASNp3amLbcZ2BoXXu+laz+o4z9PRhMD/Qro2FepXD+oRSHExcTrMdkMGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747387194; c=relaxed/simple;
	bh=5qewrm1sDwPzJl1gVA3qaO4j57PNCUab/mlsoMDIF3w=;
	h=To:Subject:From:Message-Id:Date; b=fB1ZT0gQDvn5zfkVFTeAkTSjKNKZprv9apTp34INwgzYpW1pyDcR+PkMNpnyHVz1qoFbFngpnTe712E6Pxxv49+BerkmuxbGS4ofzK/a5AabfH90vfb5heP6fOFKc/Q6V6qKK5GDdoOYPH7Ng4q0/fYG4IDIAnNokCX/7VJwR34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQsxtx9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQsxtx9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B44C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747387193;
	bh=5qewrm1sDwPzJl1gVA3qaO4j57PNCUab/mlsoMDIF3w=;
	h=To:Subject:From:Date:From;
	b=mQsxtx9SCnRH8zjANhAnG8PA/t1U1oLNaW3aFttGs88Req2dHhPSlX1Nf4JSuZBNT
	 +/WrVH1xiaUXeEZPfa2dRp3jx+USA70TGPWULa2XxfXSWQcVsKjRP88R8zDHbdjkBu
	 Ltp74kmFbhLz4zDNxF/6Uka5rqcyxx7AoT0m7xUp4iCzmvuId2mhlW4/saYYGxInx/
	 w0eROFI+XW8JLKdv5h3It6SAk/d2I/s2vkkm+IligrzCtBr1FWBKkcfwKa6L5ib/Qz
	 1qrZKCDSktuXuvR3Ab9maG6hxQPhE71XUtAyQFP4fjdvpKUdMrsczvIzYmDAUxNahO
	 L3eTLucwjDHsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738719357.7046.4643484674113246418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc0e77e2813ef53ef3441fbb42338a69c594640d1e5ccf5e21c54fb8fdcb06c
Date: Fri, 16 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747387193
