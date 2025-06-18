Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C4E2DFF15
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249194; cv=none; b=tW3tYkkhfLocwMLk4xaz9zZhayhGJMOERjVoQej3naA4JhqYf8Q6ddrVDss6ipVDh9NrnOxrNXb0yFoSguZ+WI8Kau+cuQgcYn/YrE+JmYy0qnggk8ZeG8J9bNOTrFCcCzK49GfTFc4o9mH6vaES3lanUWQZ4XeT2ScN63gyZuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249194; c=relaxed/simple;
	bh=J3xUIf5od/nrDqvA+Nt80JHayUeaILZeLkuGTtGPLCk=;
	h=To:Subject:From:Message-Id:Date; b=P173HPL5XAtH+4AI2L3z1GB8hrEPPdBwxuku3EJtRHhqaiHyY2uhcCC6ZA0knBiHLZOcME2ZRBaJSbsI5/wSTbpukyADozBJHx4apQoaZ94wB9PRoi3flTGK8XdTr7oXC649kUFRUyDTynOak6lnPQaGof1ioGgNj4qhOX7AN9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjP+BZjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjP+BZjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC0AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750249193;
	bh=J3xUIf5od/nrDqvA+Nt80JHayUeaILZeLkuGTtGPLCk=;
	h=To:Subject:From:Date:From;
	b=fjP+BZjcb5TKHf17HPcSu0aCruJ4ymrk/tZKzbcclgRd+k+IkmCEFwefpyRiBZ1wH
	 nOgRokfjDrv+FP9L3doA+JjoLIOv1X1Dyy1SN8iX0+tCyt53MqFPNW9xbIn0UEgcvF
	 aMYfJeEavO9DwplDJo61gVWyI1W75Gy1pXtFP8VK73lm4AmS837m8kITORh9/fMCXa
	 PaHgQ+fM5r+KFGoNAZpSzBQX+SMbndLucSAvlNtPcpiHW8GaECfGbRL86lgppvaJTn
	 AAoanIHs0TtXq+CbCSTlVKvu8jE0tYnjnXl6zve7oY48NE3VD8d9zJu67txOpMu+GB
	 IxgUGrbIL6VvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91641C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024919358.17306.1642432955799114537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fcda28564ba9f960aebae63a7f453f11cbe7160ed6e01d9ae27fb86f3436e5
Date: Wed, 18 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750249193
