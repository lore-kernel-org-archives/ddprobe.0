Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A902205507
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736526954; cv=none; b=aRUdCRHXFvo+nNUuLl0VgO2vZJzVTXs9u8KmwCmu2d1hPJvzWPzw2+ska02YyFumprZmnOzv6ix5Kub2zQ/SaQuWq64UXb89DrqQTd2mLm6KqEGUWz3GD1+QuBuXwVBKpn0ZP+OO1jBE/LAdjp5AWCSSqYu5DAxjJLmwkc4dFag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736526954; c=relaxed/simple;
	bh=eP3KGO2q0aIjKVVJDeYqznw/rFY2Mx4FUxH0yswi/qo=;
	h=To:Subject:From:Message-Id:Date; b=Z1KPQN8H8eixZYKWL9ilPc9P4e13CWBlOVwH+U6/KqHMMfYP4Pl5P/V2WniTvxXdHs7Si++ViO/3U9sBZDtNTMN1xq4EbLLBfe480Ytia2uEU5CRHJwxBj69ydfTuySfQ8FgdDevJlYdATGf2TNB9ro9oSuin/P/E3PUSrwJFxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSBA/KZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSBA/KZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B8EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736526953;
	bh=eP3KGO2q0aIjKVVJDeYqznw/rFY2Mx4FUxH0yswi/qo=;
	h=To:Subject:From:Date:From;
	b=RSBA/KZ33S4Yg5Mk91QvTRjg4RbWrlncNSJl9e/PkbYH2Ywu/aRiRJEved5K3zFGd
	 DkynbJaxr0iorF4yifXZvuKjO9XgG2Sli9m+tV6NuqDnyZ3VVeKHkxW3L+Iu0yX5hl
	 dZJ500qiAALFtiw3ykDqvp+ON/jlvQb8rEwAFGhPTVI5SzH70iSz21K1ArKOyvIHsN
	 7MOm1ovX8zhg/JgMXHZn5iY4nKkZB6V9b4Bg+evz5utDG0HyflGwWyvAm8V20s5T/p
	 bx+/2ojBxh5Bex/Wj/8hIQgSH4hCCH1Bs8SeWju8UZEU3G8KjEZmdVcAWnnCDboku+
	 fB3TaQsPCunew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DECFE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652695363.8767.16495594198918284964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b89f1d97d6adde8f2fb062f84b20aa49a56047fc5c1165dc4f96bc2f9837ee
Date: Fri, 10 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736526953
