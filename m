Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0695333D6CF
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983234; cv=none; b=AoDeu4QnXTD9xz4MXiyMgRejcmYRbzKTJ4udteu1bgnsk4N1zRBxO4gcl3118YseETH8qrfqDsNcMsfw+Ih9+cVa/SNCGC2S0Ve6uXYwpf7t/wCyLHM6Eoj1mMKm+Ah5YI6AzPPe4ist6t9h3GR0Uv5ZIIgDE2XaXe49KBcM5mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983234; c=relaxed/simple;
	bh=aih/24t97NhMvuoD21U3fXw80ypcnwQuPmJIZG5ZNmE=;
	h=To:Subject:From:Message-Id:Date; b=m4U5RfLPQpTpIoe4rrDzFbhjsiPI/yNhHSI1rVM9T7O3OPjF3P2wK/O2KLswKTvD27EntEdCUvV1/tWSKE+LuHjbhWFt5+C6MyJb2RJP/fL8cZ0vWithb+Hm87BsMZV3vcaRAanz+fLfgTvImqza4d3P6Ir1iDoMWj4p5TIGBY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYnYsTq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYnYsTq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E045C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768983233;
	bh=aih/24t97NhMvuoD21U3fXw80ypcnwQuPmJIZG5ZNmE=;
	h=To:Subject:From:Date:From;
	b=CYnYsTq576aHYkhxp82mGq3GpCHTiZOeRL9gO4fUczMarQ2NR89fUAtaYy+9x3FBW
	 ZBS2eXQF842L2IaUcBTl64B3XZqLGX7LvuqouMVp1DskIFaWLy+qrSF2M+GD0RLWjP
	 MjjxXmwH0DdhoneQfGhF7NWl5taWndpDXQnUSI56dDZLjeOsK1vZnqqfZ5mnWHzqjZ
	 zeGtpvXvJocyXojRLBMaKNxR2+kkHhLv8tOwJjQDfgEzZdQMUoIwIjSeWG6c1M8TUv
	 jGcxgACpHwV2jVVFEhXpMjTarPHT2Tw/S68PeKZhbS02pde67SWIZ8WTAUx1zEwPww
	 8aZBFxjciZvjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905EBD262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898323358.18471.18269315748637047146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4c49668aabe2a52a048561c018047fcebe7e6bba1cde4508106f91a7a7b940
Date: Wed, 21 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768983233
