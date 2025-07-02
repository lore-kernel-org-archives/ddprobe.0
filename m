Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CD01E489
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751483994; cv=none; b=hx3hWG/PbReOAKh8etQYYlLlEfVug17Z0XRD48Ay3KgduHdklaKsqIqXrfXcbg2LBTf2JOi8v19zXZ54dzO+l2HNVYXue1aeuB5NvOo9jpkI3AMwZ/v9vRCgxp0T7VfQBTv3SE1N2nrTnOnvbbKHGgmLj/KQ+6DkzNJIJsUpY6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751483994; c=relaxed/simple;
	bh=9GI2yGBwRRnLqj9xvjVax8TqX2DbvD1d+xM+b7JFSOw=;
	h=To:Subject:From:Message-Id:Date; b=K/knQFPkznDC64I5rrGnZJRwkFtTyqNn3ZJzoltEQPAvHDiONsIs3tq6LTYknyvsK8LA5HUDmeYAd+J0uN/dDh68A9LuCd7Rb6AXeEMq3A068pVgCijyOT5DtuzTmOD9949kseICKJ2fqAUGuhufp7kesnNqAf0iWqcHnoi1wt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIJaee04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIJaee04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88C3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751483993;
	bh=9GI2yGBwRRnLqj9xvjVax8TqX2DbvD1d+xM+b7JFSOw=;
	h=To:Subject:From:Date:From;
	b=dIJaee04QmZ+JD9A3hjX9bQ6QV8AoJWhgEH7ZDl87te8pvtQoO0x1Kaj2vwzIW4al
	 IYohTKjNRfMcfJFYLg7rPyp8+KbYnvA5RPAy6GAd+/PsHY/d60DTnw7MNySwbGWqmY
	 06gH2EI0LiAm3tgwTTDQbqot3bhSyU5Wv0/D8SLgdIce2OAxP0LG0NoQKt15k3vSG7
	 scx+1xux6uEygKtbeoRkqaSiOLJbpLaJBTjyvcl2tlXd+VzD2nzgbLW9Gcx1yxEgOv
	 QPvjPDYvXzdNnQ3KubtZkwzbv49Lvj8n8gehOd5Ni2H8HkfjmNO32aaoy60TMYALw2
	 vPkxjnB9drX6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95820C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148399357.32027.13547469506374679327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 603b51b5df12a7dd09922b4177c66d0e9f8ef98d28148941e98feef3cc767729
Date: Wed, 02 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751483993
