Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FA432C93D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761793194; cv=none; b=SdsB3ADVVmhUvg2hYz1oD1l6cvA3r4C3869h9rQLMHN5218/ndV2RsFCW6iFqyNdbyWfYd9Ri+eLb5stsV4GoRn1myHpIB6LmBSrlCqZG3gs7ELSc8J0ai0IXayBzv1j99QIe2Sz8j2P/HSWTtwlbRKUivufPOGOcixmB4eAVvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761793194; c=relaxed/simple;
	bh=zu8vy5rPD4I+Iu+j0qJoC3JEZmYTdrhSNbNfOUk05WM=;
	h=To:Subject:From:Message-Id:Date; b=CsTiuBHun1+M3HmGh4fgQL7qgxwra1i1NRFR4W9am8xEwDOgVqnHw1ngx0Y1rOBYlt/uqp2qc4QRzTWADdsjnd+uUoKtzja/2IMWrivcVI36TL1LY2QZfzh1DHwM+sEdo9R9Glkbz56doxOo/iYbC8hG2Wrj3Q0eeTF0dTl6xj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhO5jkFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhO5jkFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B105CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761793193;
	bh=zu8vy5rPD4I+Iu+j0qJoC3JEZmYTdrhSNbNfOUk05WM=;
	h=To:Subject:From:Date:From;
	b=QhO5jkFg0AkH77F3kaV0j+eAXlWru+OmhPvZ4dNw0xPMudUp3ZUamTULTu+25jGtc
	 onMdadKDDGmP0vCwR+5xrAHeaqshjQRoYbnczMwP7AG+btMBqPLvtL5RofhKUaUcvm
	 MsWImQlON/nFI43JB5zf5A6LGNZvDFkGUUgNh5iv7s7l4rmwsE0dy6Q9oNrdhsnsHt
	 mz9xeUxCdinL2iP5XqiKGVJ6J0mK1hjDwtUBgcdvfkl05dBoWwAeCRhxLC37ZH9eLx
	 GGsI4z6BAqC6qpQ7FXEE8mDw27OzVMuIgp6pbQ6TI0BeZYs42WMrjjRvvkp/SYj0zg
	 ZDyd2lISsY8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFD4CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179319362.19917.2376416795724765658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4937c60eada9414e59157e084bea0bddd69237f68eba975df3dad01abf3c6468
Date: Thu, 30 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761793193
