Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290E4378823
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790619034; cv=none; b=RrSXlnlk+CLLovwa2veMzfAOVMWMWVVZetZNc52/xZzgPuNr2emlUJhrtrcc/8/TMBA0L6mdcEoaLH0DxzvS7NyN6kOrCPuRllmkweA9fx0lbSrRxzNRY2fUflj6aqaiaNOZHJuimtHZcdmp75PQV3gQn8gZXR0RODxNA/ItSjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790619034; c=relaxed/simple;
	bh=lnFgbGEK1o0RdIRPdCT4GYDLzGtRPgiVmnEdv/Pnqfw=;
	h=To:Subject:From:Message-Id:Date; b=JpYOV71OOaDDCAOISf2PIyvvdxYWd9YsZxZclAniDoaeINYIHNGOJduWAXN3AFiIbV8nWAAMgj7BJ2o69UxeX4aJaXn2DuHCCr70axOT217cp1X6/pCN4uE46pRi8rg9kQQmdZRJ67XHRUxJTv1rAtgxB//s+LRFR0HjuS/3Rr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8vx6CLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8vx6CLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3466C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790619033;
	bh=lnFgbGEK1o0RdIRPdCT4GYDLzGtRPgiVmnEdv/Pnqfw=;
	h=To:Subject:From:Date:From;
	b=Z8vx6CLu40AvhI3nKagpu39KE0qYdJihN+4Wy40TWqxo9jFY4qeClbIQmw2YugkTs
	 hjbcV64ZXznwIGd4yek2nlO0U4ww1YzVlxNSwVxBY8isQ+WWZVDsY0zUfE4MTkL+hM
	 uXy2s1GiFrBIc3HFZRHBk0ZpmbV8egRxbpZJQ/D2jPaRjyJcpni4TU2PaFzqd9Qc0x
	 UEwuhRGxH7aWVFXtIlyJ2fqYCUmmrUh1XFlSCMZDxZndrD0BHMk32+vSJxzZfaiCQR
	 SFucjkQ08XJDIKncwBcEuwb1cEiV57HBE1EmH3paTJhTXI4Q4va0E1PcEAad+bFcaH
	 /SwS0awVTrksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3D3CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061903370.18814.17370997827646064195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7aebc8c79252a6b20e9c8b1b77869853580d8e7b4bc003be978cf0a95fd8cd
Date: Mon, 28 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790619033
