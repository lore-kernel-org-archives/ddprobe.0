Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DA23B5F63
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788018634; cv=none; b=mHbBHGdl+Vh9SJdwTwY8mNMsR3eZj3qm5wXGDZqBjzMxw2/J3mTX5BbQp/yYBVxcLYhqynb7xij6GFDHxUoyPjWw96YXXUpU62qB5LT7uk8mmPkDopRvDBEiEeFXj/vF//IM23m/RMz2CEHcD813zZfNsQQ6u00I82FBEfczp7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788018634; c=relaxed/simple;
	bh=3nk+NRFm+qy+tLRIDkykDas1ibeGwM89ptSiToI+rDQ=;
	h=To:Subject:From:Message-Id:Date; b=Qj1FkTqiujZstEWLzGG8umu/u5Sy5ze3Ab9UmA8Fy7qKdgXroXtdlJYKxBEOr5hBWlHNrV2OSjM3SH/8spjuqHrL0dB9aL2+MWZq/qvGkQBM2sNKRoBeDi/+jSpfpMidDXwDtK8SChUByIVvz8VYFsnPdTzuymKiJj+b4EszT+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPBJsgOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPBJsgOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52D2C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788018633;
	bh=3nk+NRFm+qy+tLRIDkykDas1ibeGwM89ptSiToI+rDQ=;
	h=To:Subject:From:Date:From;
	b=FPBJsgOzZ7WwCnqg0LoYA21MYC4G97nBbnhSiKMLiVa/a7mmLZ4M+BaTJfU0edWdC
	 ojuHt4rHTvU/SOy0ezqWo9CVuZTVxwgL5aHCS77Vf5I2HCouWIzAx6kkxpwpDSKL2Z
	 zyjoMsyQm0uyTB1r46ZTq3At8q2t2zoZJWqeRxUxRyjiZEqF1yFUQWXRWHctXBhG3Y
	 JoKcdHLkIJrMxODL7yCNAxTaBth3w/Br4Yqr7WqsHefuGlMMUM0p3YLdCAPTCYtWLl
	 M2s+dGaKe/F1iJXNYAk6PdVHaWVqv31erZkzw8aIPA7v9utUXgpOn2HB8R23scpvNP
	 7VpTWlxX5lWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1782C61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801863369.2742.14616703883797509175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84db77b661016da6debcab6f78ec8785b16d7127884ec5dac71f5e7428903645
Date: Sat, 29 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788018633
