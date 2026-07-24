Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEEE41A51E
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784931634; cv=none; b=lYMMuIz7sToYftDEhRSqrdfQRb6SR29WXsJN2X64TtH6Z0kC2dtdF5zAi3jAevFnhLcr0YCOYPrEgszFu5Ol8t1rk+hJnq65+9Ego/b9Sf3hprFriJUF6tnmrmNztPPQ8jzjEApq4sFt93nnqbMtPBOFCm+BvsBA0AYiooSHmQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784931634; c=relaxed/simple;
	bh=ct6LxzoDyLhaDJP/YZ2RbUBdg9iehF3kssSTgrdonto=;
	h=To:Subject:From:Message-Id:Date; b=QOgZCprkQTRBwP7Pztk3793AckSN/619XKFTRfgF47eJJ/DjwUU8/8rMVmfeyy9aIQwX2yT/ipDmtzJeqEw1VImBFQvd3wtoyyb+scK3vMnSvPl6ofZs32nwwDs4kHktyrVBLUSsO1tFr7PKnlYnDDdSPQKeNhbnIJDRTStvd40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lj1ru25s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lj1ru25s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D297FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784931633;
	bh=ct6LxzoDyLhaDJP/YZ2RbUBdg9iehF3kssSTgrdonto=;
	h=To:Subject:From:Date:From;
	b=Lj1ru25sCXnJO4YZeE3Ttgf6P4nE6zGXxMfmEFE4zNFfbSz3p7/fyD7Sc2jvqRg29
	 zRWuCX75jlVWLnJw3XXJgwzuMQiESKjjFTIwhucnRxecGv5dHcrnthRlsASkHxslwo
	 JQDn/zXqHqlA+sJG7HgoLgZYetFMMOP9HQ4GNohXlCCMz3WuUx12jqY3MuwbWjNbKz
	 naRkxwX4Xap2YJhEnrk7P8E9EN1dZeVdMPQO+AbYLXvYBV66Fllp3MaLRAmFGdqkjo
	 Ed4mCr+BqxIOniveVzgCkgrL1lYAx/zuWKwNtl94Cpeurhp6Tvguc5pju3efTAePDj
	 5p1LDS49XBHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2EEC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493163368.31041.14376481670971403826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70a49ad3285f219332b31ff81123983923339f6d40bfe82b76b4e877b15c5b7
Date: Fri, 24 Jul 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784931633
