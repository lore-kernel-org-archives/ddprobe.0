Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157E95CDF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756439394; cv=none; b=Osr/0hGhH/Il4Q2yVPNJQdYgxI5dutunm9DPh6CWEDDapUHEiWFPRglVnUuOTbGMDjdNlCO5W5EsBAU9kHYM/Fpf2vkusK2CNfEU1p1BxGT0yENrsx7f4aucl3SH1HwmW8/FZmPBGvnYiqkfS0CCYysVUSYDVB4abHdxMbKdAZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756439394; c=relaxed/simple;
	bh=tiFUWvCUeNqnjfeMMqvifmVw1ceZag3XAkXSveDYOlc=;
	h=To:Subject:From:Message-Id:Date; b=OCIExE6RHcIHv3cwzFHoxIi/uyhQnBwgJ7If/a672pJE6FMVGwqD/sTTNk8MRaxYJ1bh525ee4U4GjW/34lj1FV86wy58zRjNhCHyxM3RYc5fgWgiYQAc/2Q1G8nfA9lAsNKEIjchkmN6WgrAmuYaf106rH0KcLTkknzXij1nEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKdWX05W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKdWX05W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10BDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756439393;
	bh=tiFUWvCUeNqnjfeMMqvifmVw1ceZag3XAkXSveDYOlc=;
	h=To:Subject:From:Date:From;
	b=RKdWX05Wuz9MEefit8kihWkx7i+hDutLMAiZP85nMAuCn7obFS/jHRbI22dh3aoWx
	 ezKnYOQQh98i1IC+d8hTxIOWkfPYSro7CZ2W01vuxw+fF5iZ6pFuoIdbCFBLsfTTnf
	 AVMWK2xceDZPGQJ2LwnzMFt0NNRKmZZ6E4WDmWtD7HpC0XVcfgO1PaAoPh47U3i5jg
	 8e88bVTLhHZiy0kz/Ig6Wgq1xC2NqQX2b88Htz15IDeUnFeKzhb2TXezyOaVIv2mCD
	 +5XBnBdfkyVY9488Vj0CiVfciMs27O1mA7qKmI1BCxOWA4qpekiP0+zeGEIZ0oBP7z
	 tzyrlFv/BOjJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141BCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643939357.22765.3369799765791750321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6256ada687e95171306cbf1f635d4c90d5d82505c3bed569e3e8a867f275259
Date: Fri, 29 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756439393
