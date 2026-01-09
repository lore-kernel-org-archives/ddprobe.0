Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065C035970E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767951834; cv=none; b=YQZQBMjMlP2qop7DgcaVB1dDoJHboga89TFhpFqfoLxaq5gXISosSfobgTHbYav01mA+IphJuc9pjSniEf1AxyGA8NcI0RHuXe+4N51jdTi3h72fRuBeGsWErdptsDPQFaMOlzXOrKcfGiYmeIIWEOIGaok73RKkhevd/PPHzVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767951834; c=relaxed/simple;
	bh=0y2RE6YxEDIahYq29XJHsfU+AukpABypNKj2leMY9wA=;
	h=To:Subject:From:Message-Id:Date; b=iNZmFmQS+MrdPWxICulY+Mzr/EMgjrTWfWnO2IN8DCunXIACh/HWOL9hgSBkFW2aKwxj1IR8BHWG9tZa2WnPY90xjal2ODoe32gZlH60GJjJpm8YXV+F862mHTFgIaDGs/LZDTWgQBsom8NLzRQFhO8H5rYfNeOF1FAngEB9C+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c94js2aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c94js2aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F85EC19424
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767951833;
	bh=0y2RE6YxEDIahYq29XJHsfU+AukpABypNKj2leMY9wA=;
	h=To:Subject:From:Date:From;
	b=c94js2aOaDxft4hj3j39YMCYJtzrUGXuZja57w13KEKEJTjYh/lcBZhd4rKjx9CTX
	 sTCpMsbZScGwk/BUpkkLtKsNfIWxugXi4yXPrPDZFUaurtd/YcvrGGc4LOUQn0JxoT
	 7f0BY+r5QWc2yCnn+sRV2dWlDGwUxQ4o1R2mp3BN/PciYD3kdcn8ijDmRynS9Fcach
	 RmQrkVNLVgA4k/7ZsFh8DohpqJiL44Js5PZZfP6e79Gxb2SMCrgJhV1W/dQKEanFeR
	 JdYYBPi3DZJohjOLMnWwI6eB+3h3Txf+WzJfi1x7bEzFLBTKq9BvRaCFxHggDA2mDL
	 279IwgkzoArDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913FBD167F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176795183358.22791.11880031681914864626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1982bcf4d3d29e0f398aee714f931c24a082a5fcb900fdeee13e4ac8f6beb47
Date: Fri, 09 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767951833
