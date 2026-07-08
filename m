Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45850364935
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783480714; cv=none; b=AirK1H8xicbl3LTnHD0RxNrpt0BH82dycGxSYgCdC3RfVxadI4mqdJtTEEWjBo41E9Ef8jwQVGSeiaf+W9vhbVRbIpPawV9gwjIWcbFYj+vORqtjhD/x5N4siy+6tkv9Sp3oyp+RlY9v0wXPzdKIkQJ2qwaEb9cxWqGB/7SuU5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783480714; c=relaxed/simple;
	bh=J5OPxEVHBbFDfM8xhvUZ+qyryHcDHRVUVtgoWbd1IFM=;
	h=To:Subject:From:Message-Id:Date; b=nzU2+WGmi7O9aFuO2fe8yZYULVFX8bF6//JDxDvxrLIOyyPUYv8CSRSMJZr4ukjMsL8tcDDsMxXbUJsECGZF2ou0jDZadRqmJ0zSRjBv2lVfrxBBC0Oko7T2NdciwH7dhDVKK3VTj9L2UfIR93wrjBnRe/CsRkEVGN7HZj9B18U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cV71Ifzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cV71Ifzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCCCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783480713;
	bh=J5OPxEVHBbFDfM8xhvUZ+qyryHcDHRVUVtgoWbd1IFM=;
	h=To:Subject:From:Date:From;
	b=cV71IfzzI7FPk+lNVUobP2ywsbf+JGZMTWXXuWTzjhQKdTrRdUwVg1iO+gO/fkvFe
	 /Oi08dgQ63CTwO87RAKaXTw8VOUwwD81jMos85HWms0e+pS80U6yV/kQHnBesHdTRG
	 iy/+5NmnYM4l4BNfqgwOK2FaYXXddPrpqbjlH71n1XEFgu2B2sAW4Z71JP38j+rQdK
	 0nM9QXxnqbVya/kdAJsXG+X7gwlAvNYNZ+MXxwxvYTKkQwJ5Ad8E3e+5hLjSoFfSve
	 CVVY7ila++i0viMoaNOTViai+0rRlGUbS09rRFBLy72LgTDamkSWTmmQG4LYirf3Fm
	 0MTlC7Le/kEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B89C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178348071368.8769.7314218161096956319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726f404e47ecd3be4dc4d9da87fd575cf9131d72148845fb4f5bf31f68d4ba9d
Date: Wed, 08 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783480713
