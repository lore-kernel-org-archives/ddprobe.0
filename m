Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320074718D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791797434; cv=none; b=H1K67RnMMBVHtW8cFGPyknVWAN+pVIJn+hWIMuaeWj0CJyv5ljE6h0RMJhBiWP1/fvrW9vTcohzgyLujkE3NKn2GSaSerhaK1nyuqXywfZN9g3fzjLOdCrki7LQwb/FfhDoxNsWUcdcSIEqc2cJYFKd5+cUcujg7nSsHOrsXGsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791797434; c=relaxed/simple;
	bh=1ATGS3i3IkLdpWZB6pn9r/ZuIUEz7tlJGiO7AWI6nyY=;
	h=To:Subject:From:Message-Id:Date; b=MG/j3b0fADKrYx8wE5F/9tESoT543V7e2QHc6HVPIxtbtNmZCOGlHt3eMlcFdCbrpohGbS4Mdbe3qzZshCT5mKzEe259Z2bAgzPkRqMhBPIcsaDWq8iU1gPpKD6AeQKPucE48lxUXS6fcGvElv0ErF8hb+3uf9qy2P5nyqnsn+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWyZkgBP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWyZkgBP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D203CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791797433;
	bh=1ATGS3i3IkLdpWZB6pn9r/ZuIUEz7tlJGiO7AWI6nyY=;
	h=To:Subject:From:Date:From;
	b=nWyZkgBPp+MvEMKzjVlobC/iCrYczUasIGaaTWjURci0uDIrPLMiU9pbL2VoPPQ+7
	 sSFPh60ouOUDlu93EwxZ9B3FAeBH0Suj8ukgcLxfIS2/vg5WK8VRANfqDhWuOL3qvs
	 AbSMABT1pRzcCKOq3ZKNN5MUCiznIHC6qr38nOBKW0ioFH3nwNWBf5Xf15aX2UHqa7
	 cHn0hgYMt6RQ0ZQ4vDjvtVq272QcLCFZV1lcjp+QzXjEtC5CMDZQvbZHTXZAPry+A7
	 9mXgc00SxPBTpOkfYwqd47U3CA2bYLFuCf8kJCZCgQB6C7bbaeqYhjND5+54cu1cIY
	 CbvdG3uhxmBhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2ACA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179743368.4195.5548450553769638639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9803eba34afeb7d9932ec05f53a9976f8fb2b92ea48505541346fef2a6580de9
Date: Mon, 12 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791797433
