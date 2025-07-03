Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3519676C61
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751576995; cv=none; b=Fe6L6QG7DpEin7nUghLfUqwc/voj76wWiDOAnw7zDjQnqPPJtWDRXEarBVUQs50oMvYZoRtTKzS2fYLXBeItFLxDvv6SS878/lkGqdHtF7425OS+uxljkkjqbVuwNvGUMxvruUwOaUFvnsePDnb7/pNA/O/QO5TSd5AITelvEQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751576995; c=relaxed/simple;
	bh=jC/cA2URaCcda+PaPgofrRbrSwlnhHLY0mpG+Sb2/b4=;
	h=To:Subject:From:Message-Id:Date; b=GIrZGcLK4ieOAh6svybD/5jcTboMYkrjiumR4iYq2DhfjpZTx7WBpc+h51mAONT+EmiF6/hbXfWl9yRoTv6fQyD7aDWj1aWNYwvKZxR7RhZwZ11mP3Nrq6vVj/6MkE4yRoWWWuay03gI6JNCTC8MLr89AXkT92gzUUFyUrLP9aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc1zete/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc1zete/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751576993;
	bh=jC/cA2URaCcda+PaPgofrRbrSwlnhHLY0mpG+Sb2/b4=;
	h=To:Subject:From:Date:From;
	b=Nc1zete/I7mECAv9O/EzQ5cgOoGSV1qcw9lHmiY+OlRsawHgRzSSn8OS/xNnNDrs4
	 XVN1v83U0k1joFEVuy8O4JC3E5x9mElt7CRhfBlZibfhR5lVuedLpUsTfr1FzLcO6V
	 oav7RXpTMJLXspGz0m7gyyIXeFXslJT+Cuy2Wyt7KnkXgv+A8DbCN4evH0LRWkC6uz
	 06BSt9V2KemNbBjbs0P3vqM6Dkbc18z0wpg3nP/hR4q+HtlaYAzemTdJM8fM5GhjeH
	 UOc9051ROBwhF2+FYaAvtHTBr4n9rTKgqkzVB8LqC5HGoolm0zi/PApZiyKgAgeUpn
	 deFJmQRHeObVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5AC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157699357.27248.12393789260917327230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f8d3fa3841361bfcafe74a4fe02c3806c2950a0d5cb3345020a4c4f6959a38
Date: Thu, 03 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751576993
