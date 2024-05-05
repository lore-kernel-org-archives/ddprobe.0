Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F8F186A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714911743; cv=none; b=fwIGxT0xmcHuxkolOR34ULcHLC5jeT3vjjq+jVV1uBjcKCuAGgwfj3KoLzL6cit+5v71GlTsoCkV/60mG1uNqDel394xF3AXknuDR2PUhZTKGlw5zQewK3fXSwhJk8K7Yxaq7cncW3vvTmVTkp951PZaH3QNyi/E5zr2Hv+6oCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714911743; c=relaxed/simple;
	bh=3jLBNTRzaRGy77lgF1KIDg9qiXsyakhp0auZY+yJrD8=;
	h=To:Subject:From:Message-Id:Date; b=ozyG58pBExjRLL4L6yuL4OppHj3w8JZNEZu+M5AqIA7ISXGGpKuNrhEXEhtRdFsSsIyNNDZG2WBdWeaHFa/jl8J2V/cbUkjxfSVQof4eXYlAMez4tYhsJ5LhAftf3uC04ZMBU47FbFEJQl3SryxMRjBKxokqHUBC2XQkaUD8RAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gqeig3vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gqeig3vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55C2C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714911742;
	bh=3jLBNTRzaRGy77lgF1KIDg9qiXsyakhp0auZY+yJrD8=;
	h=To:Subject:From:Date:From;
	b=Gqeig3vZYiQIdOmh+pT07/Y2P/oWvZr7A4t5F+pQFoHnBu11A+Pna/Yc7ttteyd/M
	 t/rpt/atrOwh8994ZPp/EsNksf1VkIKQB49PmbOn00AfRgarZ0iswgQ6sux+8vpJOH
	 L9e66Ne2ZZ+JUWypkdIuR6PdjVjiOg7v9kcAEy3MFTz75WU5IwQyJ/ee+E6Rkqf3Nj
	 C0IkRTyumPKgb57z4ApC+LkkNJNyq0m6YzczHB1hRLcRaudUafT4SN/ciigcE6xd1I
	 5x/xFwLOGTZ+Swu85EOLBq8mru4Ff0z8KPx8Wwbz+/johJXwGSuVumKul34JeNuWJo
	 /49Ib33mip8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C272FC4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 12:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171491174276.15127.17779200877307997895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58fcb605a476a81f92089ea9793177de9750514810af1397b178c67e96c5cc2
Date: Sun, 05 May 2024 12:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714911742
