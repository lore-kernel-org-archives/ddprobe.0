Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABBF4A05
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720490784; cv=none; b=U95p3wUv0xag00e7Aq5hqh6Ie8FHQFoi1UcnusMO4pf+inbiE4ahBb/7UsU7F+J1CS44M94ZMkJEhG0wfI6EXmXgMPfH+n13c/4M74+52DiZH2jinh1moKZRfgnrwzZanDb9jxSlgJ6FJ5sYpXa1oXmznrtK3oNpXvR0SfJMd0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720490784; c=relaxed/simple;
	bh=6FfqcQDqsuQd6Z3z303awlJT8IPOEqZ/8OMYvk/QUTI=;
	h=To:Subject:From:Message-Id:Date; b=jwkNagGWsoLrdMB5mtuZJIocLH1JtEvgLvJg4kJQ+W5dxWiCzCD/NreeBR6ODC4kaBGa77IPxBPDU+BiX5F9ISNg9QhzQgiP2/F7eVv+Al063R7pQM8AYk9MFUZnU4evYSoZJjhBRtDLDbovfC5LvIZH9T+zTIz3HBKMmV42syo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0lzUqFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0lzUqFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F21EFC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720490783;
	bh=6FfqcQDqsuQd6Z3z303awlJT8IPOEqZ/8OMYvk/QUTI=;
	h=To:Subject:From:Date:From;
	b=I0lzUqFqOfJbi9CMXElN9RaL9rVmtGTDI4MD5zO1lpodCFlX4xTdOVLQy0bikjBFw
	 ZTTQBcTeDGm5LJmzJb532IqyquAaBsG77Lua/R4JmhIvYkOitX3ztPzJIQ6kvn+Cbp
	 BhtMFeTK5bwi2zTEl2pP0a8IuFA858yHzeCV0wW08ROonguq78R/HZSVXYHVHx/hM5
	 ZboMItX72xIyll9vc1jDtE8e0lE+PZD9ye5sCQdxxqVwBTqva+F3Js5vIBl6uNkmn1
	 MctOaqCFZy3iXvBlvD6HA3mLgcXs2yyfl/XA2v5Jkp3nTIfGpYVKG24aQeDuQu2qcX
	 L4wD1VuH3cIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BAAC3271E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049078279.22368.659272549423163443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3398d59349107cd98a8ab893201e225d3ef82982d266ea4cc78c571b7f85e997
Date: Tue, 09 Jul 2024 02:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720490782
