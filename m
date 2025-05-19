Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3316035897
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747626594; cv=none; b=g/uBcLeMhJEA4IiFRLdd6o9QuNLRalfu+qEqWc9lN3iE+Brh8rliRygKyP5WZgC1pZy58QtakuEKyZG/sg7hjUwyImViO9Y5qAMMQ+W//52YQAm7iC631tGbuCUEifF5FfdxzxpvDFUZ/43Y0DtVqhF9U8Un8qnrGdnsnX2BSHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747626594; c=relaxed/simple;
	bh=lNKFntwCJnE2xCiMSVJL4wCZzJ4+jUaP36KT+H1o3Q0=;
	h=To:Subject:From:Message-Id:Date; b=oMpi1gMjSauJ+p96HuF0beN+YySpK2j9QdDYj+AQ7Tg/HHaTtYTt3dK+wnfEurDV/BNR9TXFYFd5wI6nPsPRA262iMSL9S5cXNpYzMNm/GXuZYBqysMX9Kpy+7uShvQDe8wRV8c0hHGVjm/Eri00JK2IsmE/eLVCaORxs9y0TvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/v5dcre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/v5dcre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17C7C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747626593;
	bh=lNKFntwCJnE2xCiMSVJL4wCZzJ4+jUaP36KT+H1o3Q0=;
	h=To:Subject:From:Date:From;
	b=T/v5dcreFQ7vVBEG/V/95FCE+ktCTOO62SOzTqdu/bh/WaCNDcsBjuG+GzAerXj65
	 joO4Fg15uvFr2eqmNXIkr3kEExw/vSzQxdsjnE21s73itJ6XO1x649Jk5JUOrDW+v6
	 fRWKu9pn5ZNYVy2Rt6p2pBtVuwTymBlyqgUNc0BJEu47SrOlCrmWao1Ryp63/m12s2
	 VpTCNe/WNwxG9mlfXFUJw6yDPvG6X+6g8X/ObWmuBPct4Mn61p3EnFrg7VnD3X4Arp
	 VBDBBRRD+vEtaumzZpbazHkXy4UEtHNJ/Qj7unb5z5kSTCJa7izyy6tvtQ/RUrrdXe
	 8cNrdIMR71RXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91120C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762659357.8625.13705949250158547746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe82cb50037d6f90ff5adf894405797ba2cb4dcba10a2e8afe72d88650d1efa
Date: Mon, 19 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747626593
