Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B11156236
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769722434; cv=none; b=oSVqa48ydeilCBpqBjXPOczksCHhvbivv4tpT0EyjSyPYGLy2PuGlHgwQWt5AF+1ArDPGiE/yLk5JyGC8jbEovlMwr2If1olJ8EEQ35lNDYmBZeKlL82wxavoqZMB9EvDMj51AZ/Y05acTKjroVihZhgQUx9V7fHO8pwRgVC2vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769722434; c=relaxed/simple;
	bh=KbyTQ/vvvuMHHHfTmXj6RWLO3xxMp9dKR87D/AlFoIo=;
	h=To:Subject:From:Message-Id:Date; b=hCE8KPmTuwnF45Dv2gehEpyxr4+dD2BNVLZPwxle5eC7t2Vg0uyNBGGKnxqDrjmS4RWlYrUpZ5dbMFkzXX4Xk8QD+Ti0vxbfxFf+tmKkuFGNUOuEr6z9WcPDJHQvr9MRxXiKRtctKSKqArS1W23s6tExZihmuTtnPVIMI72qXT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3ps5I77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3ps5I77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CA1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769722433;
	bh=KbyTQ/vvvuMHHHfTmXj6RWLO3xxMp9dKR87D/AlFoIo=;
	h=To:Subject:From:Date:From;
	b=m3ps5I77+xGT08hWuUDJg9FeXey4j6gqJTj1wdTr2BnC6rVPruelcJlCDgivad+iD
	 itlb65Jkzi6xmtV2BeNYQzN2CsDQrg08I/IzHPfh8g7W7JLyZhnrxAPiQ4As6ALJ0+
	 A6gUCdPAXGT1t/c+wSK5YW76NT55y+noNKGvRg7NwTgo+jt3/tlud9Rm5jsO58pkHy
	 YPw91JGD5fAozDddOLbJT/4fUr7sEluqg4BfYu7LZFQigJ+gSb7xEj+/tvzdvrLPRs
	 RHkyUYUQui02OtxVvHlmV/wSRNR1ng5DuDrl3uvgCa4mJvyiYN/bV7R0cKpws9H3wT
	 ef5c2fQbY/aEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9043DD73E83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972243358.1765.17889161310661613104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699447219a8d15c2e623a95304a1aec98828ed35cff39d37cde8668fe7422cf4
Date: Thu, 29 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769722433
