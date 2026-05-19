Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D25F38A738
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779174034; cv=none; b=BaZo5HEOgacA5YbbyGOU8ZbNMBAsMrGwQ3AZ5/s7ybw1IlXvK60iZnqO5EgzAksqLurjh7F5z/wHjtx5WDKhqiv7w5EkQWJ4bOm26I3XMwINKZzgx+4/OcclKuzppobBZVkTIaYPCCqUOVepkvIHPaXoTKasGB4GjDT5Zk21SvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779174034; c=relaxed/simple;
	bh=0LOxpIARui3iwdTt2UOa5U4ugQoqKr5i5KHB/iFcH6Q=;
	h=To:Subject:From:Message-Id:Date; b=oWBgrLKZlD8bWNF0Uky7xOA7hVzfmFopXEz7ln/LNGxkb352kQN9HVQJfFmsRFIc+2GizzodpsCtzj9QY1THvgc5FBRG0leU5n0cbKH8eLrjra+TYrYh+EMti9+uoQH9rnfJm1Y/USjnKjkE7vp2571EjHsVkkNpBwzBnTl6OWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3+11v8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3+11v8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9795C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779174033;
	bh=0LOxpIARui3iwdTt2UOa5U4ugQoqKr5i5KHB/iFcH6Q=;
	h=To:Subject:From:Date:From;
	b=a3+11v8Efzv6yAB42yMrf4+crXin6XfEUDO50QyMLplsT6uBs4xeneYpJjP9C1eoI
	 3lKWT9hXVQtzId+5ueVKw9/rjuOsKpu8IrLzsu7VCFRq43/n8vUQPSOgQ4q8BkmWno
	 fL6yFUAAdJBOyTnDC1kwMSPLskoof3sHWH8xE40l+cKyRfVD6fIn/EgIG957vEXoRf
	 +r5Jx0kjokX8c45MgLTX3SELwno6TZie8w8wkataChZi8J5nGAXVjgxU2DFlYHlHph
	 fa6TxUI/dFqbqV/TC5oQqExk3UsiXl3ACU4k16/2cq4d/fFlV0MmcUv2VIjFLlODVj
	 lYrMHv/ZO/8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB926CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917403369.10921.9722088622686309123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718c26fe1c2779c2a445545de342f59bc1138300030ba4f9a56c4c9909059c9a
Date: Tue, 19 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779174033
