Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272A11E503D
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761526194; cv=none; b=TJObSj2t3GG8yIhigsh75/nAyWbiwj5J+cJaOL4alWVoQUYIM0FEMEw2VRCByWC9zmh/m1ymdC72jJ/6jYacrzwdAecQocYacuG9mUtycAOZyfMlQ52gw9yesIKsGGw3gbmf8h0R0uCU7W9XFiDXA8Gaj+mRKMpKdkqhYf5yjvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761526194; c=relaxed/simple;
	bh=VpisrtXGxPPeXbIaKUgBDddzzbB7A4k+7CTVkGzLrQ0=;
	h=To:Subject:From:Message-Id:Date; b=tvw/5DWx5mKx8eT3lb5N+UtHbPuLUE6xDTBob636iSBgJZIcNfKcpnAzO00UjWmMUzxMUCp5du9gwkQYcvHSDfHnVgwV/akYDaAxCyzFnzyXIs4uXvH+FLkdWE5s1GAJkx973RJ/Yfs/8KaNGFCmkrUtFFn3wy+01Dp1NAWqCl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHZnbTOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHZnbTOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D9FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761526193;
	bh=VpisrtXGxPPeXbIaKUgBDddzzbB7A4k+7CTVkGzLrQ0=;
	h=To:Subject:From:Date:From;
	b=XHZnbTOYgI62wItDlVxoqccJjWYc1rpbb+oh0Rk5MQqTfvfjEs1YtRWulX3L4kzXI
	 s0oAg2UmEatLh5bJtZSadMTWFgD1iOPdsfIg/hXuOenLagOeMX3j4tnVuvZMtcB+Ld
	 Oqf3pBCz5ByWoGbi3nJa+1m+mglnEif0epGCf7QLFsnyk0p186bwvW9OIl3wGinroE
	 YnndZ5jiPOjscmyXAe9s+OhhXrPdbOcg8q7w+OpD8KQXgp8AvwOUNcCKA8zZ0Q8Ckq
	 u0DSD6vyBFq4fncICYT84vsd4hFVo3JcRrfGJnODo/GEglAAzyHG4W1Z9bsjfOvV5I
	 6RsEjOyCIjOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A1CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152619357.20287.8078447552602335192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6157148adaf5a92cccf04fc8d30ec5a760b4eac428ee26fd9a8ff58f44315d
Date: Mon, 27 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761526193
