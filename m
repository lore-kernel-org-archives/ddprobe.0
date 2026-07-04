Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4620E26CE05
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783184314; cv=none; b=C8MZ/U84S048+U3C7AiYdIbTzZ7nsS3nc1ouTD1L3g7ZyxGsPOojn+MFzpQMEE9XHokVkzKThT6kNDm2Kusm5fdBq5NhD1+0aawma3ED092HTU5u4/tkeVZ9iyzR1+bpMppNNJ3s+Phjorsa1ecyw2GuUqQQU1vNYXeaE6gJiEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783184314; c=relaxed/simple;
	bh=rZLgqD4X/oEmG4lVTf7SryWZZ78ZNB1YVd5rkIZrJU4=;
	h=To:Subject:From:Message-Id:Date; b=UB9BmnAq27lEVsRBtOeluimDBr0/pdWCQhUq6GsMZH0Zni679TDLf1gtWcHsZdSLTqq/jbK0vZIkeaj9G76JxtVCpjtkrMfitlm5hzz7YHT1JdYf7rSxOcL0DspgiHw/Pb1leAcYnPsM3Zqj3RexwDzZsNd5U4OwoaAmLc8/eBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG/41oqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG/41oqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03A8C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783184313;
	bh=rZLgqD4X/oEmG4lVTf7SryWZZ78ZNB1YVd5rkIZrJU4=;
	h=To:Subject:From:Date:From;
	b=uG/41oqgTSYu3m8GWFhPOAaywNjUT0rixPOlRMiuJEPCvR2qe14Zpq6Ati7WN9BUU
	 b4mpC7+abNvlzwR1GAUbCbw8GpgYda78mr6fgdLHkjcrEQrYCHLFoUIFIBi90MOzrh
	 3eftwrJD38wEu3QcC0NUiWAOLFl4k54fRcJGA2yF3gAIy8gDYKOO79KA709RWVYg/N
	 Ch/O1QzjS7b/VqoOOY+4sPzRB8gnDWdSI/3UiBp4ZPzpdnVJB3CpC2tUWlDxaFZEKJ
	 aGgmRF63OY4bVDlTFK5O5GwUvD3RfSUE9VJr4qQFQ7VJxfBU6FMniRmbiSRT3e6mCY
	 zm663d3nS735g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEC2C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318431368.22075.3713600743303269104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1831ae60f9e133a5fdaccab8a89b6a1e735e0d590f1f0510fbf5164bb8030b
Date: Sat, 04 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783184313
