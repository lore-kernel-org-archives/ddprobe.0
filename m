Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C79C2BEFEE
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755676194; cv=none; b=dZPTecpUwdATkVL1lhKHWV2quqxvo5dniUI0BcfN9HRe421GXiyCTRvUzWG8CXY7f+gaYqI91S6NquqBhfQX236xB/AmKy9Y3pgdV21drJwSLdGoLK80GD5LbqUOwwUvIOE0SWQKtGonrf4QirGNZXqIv6Qq76LY+dA8aindHAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755676194; c=relaxed/simple;
	bh=/zTMXuNJhlIGMG6G6G1BMdqyq4yAqxEjoCO0oIwsBmI=;
	h=To:Subject:From:Message-Id:Date; b=Ikf9EnEkc7VDV7/YGNjOV2QES64njmIxxPnS+sXNKHtcBSv/QIbk2s4GnUduLJvEfLaX0oDph8jnytYKITz9xFpIcA0wIpdJwZJQ3sUHFxBH3gJjkzMqNdmKlH3RF3XSrOf7U/ZEv0TUNfc3eRJNRuJue+hjSvD5pSnvSh3fvTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JflFsFSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JflFsFSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6B6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755676193;
	bh=/zTMXuNJhlIGMG6G6G1BMdqyq4yAqxEjoCO0oIwsBmI=;
	h=To:Subject:From:Date:From;
	b=JflFsFSNGjKs3lCR60MMUt3jsJYdlcP16RfGMru8r6WjJ0AaVwVqKeDVYdtTNZWY7
	 ewd/fG7BDrrwiD+qUvOJEAt0kxUO0ypXTowjNFhHTeGSFNHtSxAzUV/fI9j+MJWNFk
	 r3HUrXl5BzM5lqi3njqZsBSWUyyeCT9lX1GEmvpQ3gdax9el6ig656miOaGCXkUB/7
	 0mb1L2iAAiK4+bnnJWhn9ZN3vsTrZkVGZ4ZNC+f2GGP+VMubT/P3zUDmlYbGwmpQ3I
	 yAiIChtlg1BYjD3m32Uks0d1M/hHRKPZoUPLXMYNDmrT2UCFbWd8SWi2KhNNycM7W1
	 2Qi3FjtupQneg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D2CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567619357.22638.16565810304351952071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c045ef1876988374d501ab2a1b4122c0e710e8c034595a230d0cdde5f9f5e860
Date: Wed, 20 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755676193
