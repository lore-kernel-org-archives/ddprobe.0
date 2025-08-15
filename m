Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD3D304BB7
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755277794; cv=none; b=Y6zHB2udjkxb3VPK0HDmRRkRGOQOnJyAmUBW6puUhWzKxHWcrnaSQkQfUhZZe3b3qUyrgOpyDm9RcGOdfuwrZ2WI5RNFmunGi8OIGWln6U3Qir7rcdAE0vO3B6mqLfddzD6kmK41h3cIbiexsz7nn4EOj9sXuLAgNSA15Tex4IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755277794; c=relaxed/simple;
	bh=W7AhF/ZTBiHyF8abdSpt7/QSmzs2LopqF43EbTLB8c0=;
	h=To:Subject:From:Message-Id:Date; b=B4NJZuZQvIaifjkGM/vmdGHhMEU6AZ07WhNNH8Je930KdQRnRGQWTSqx8XvGK5/Ne5qwTvPw+aSZ2Y6jpWhCBNoQnrusQSTy2SIDOhypRIzkD1vziTEfIqSbIljb9y/C7Tah/sRScRq+rLUsdhjmYXmFPMIyaVMX5A6pbnOezGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZqEvJ0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZqEvJ0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D342C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755277793;
	bh=W7AhF/ZTBiHyF8abdSpt7/QSmzs2LopqF43EbTLB8c0=;
	h=To:Subject:From:Date:From;
	b=IZqEvJ0YLvvgmim1e/HGB5/U0zx6nj6qEyHgxXfwZ4GzyHd+KfIQZtrYjvVnAOpww
	 UH/jGLdAaSDNkoC+ciYwDsXEe852UD929XLlGudCo8iAiF70WFD6bl4HyQOD7ud+KK
	 DIBGtO6EzfW+hxuMzbME7oFxowMNFtNbhplwItHuiljr9F1kS2YpzlQIFA0vurUZ9l
	 Xw6TSTgeMb/dSJTGKqapBR8VFgtF+Ue9qVBgYmojprZEzAh16VuaP9nfcA3cCVWi5b
	 camVDb3JgKHfW76WUDloWz/Ic2djIxv6giTpbgapjLRR6vR/lwGCivkk90MMD6Quwo
	 YpYGGIfd6Ag/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F085CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527779357.23985.5514348589950808333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cd1d8175e6d4fa8fe8c9886a3b1acf4fb69bff80a47352dd271e3481f4f95f
Date: Fri, 15 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755277793
