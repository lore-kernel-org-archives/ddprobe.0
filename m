Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CFC2045AD
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784233714; cv=none; b=l23unUsATuvA1vUt37d/SXiCs631KkEMibVMXBWSYdx7117aALUeVWq5UcGF/Qhj7Vbaw7QQZ7y3QUc70uTGgsyf6YmLGlUC+QXjQ+5ymid9TAr0fKTCXoKP/sH5VVf2POw4uF8olyoKNr2GoaON/FbE9B8jkEhRa8KFU60juxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784233714; c=relaxed/simple;
	bh=5D8TQGgNSpCO5aOCwR4GGFgqb4UuEKEewCwfih3sOfE=;
	h=To:Subject:From:Message-Id:Date; b=PqhENT7nEHnnWpsIuWQfxGTTokdnB0NyuL+3QV3pHmw5Ag5zpZgPv3FuD8prTkmkAVsYu//MUsCcs7Pu+Oj/pyhXOruAtFBFmi2YUITGh08APs/A8pF6NVBIOEHHNZyje3E6zV3UL71pbt9wIh56IcC1KNKfTh1aklZ9JFjn8lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnJbiiDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnJbiiDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0CDC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784233713;
	bh=5D8TQGgNSpCO5aOCwR4GGFgqb4UuEKEewCwfih3sOfE=;
	h=To:Subject:From:Date:From;
	b=tnJbiiDIItq3+Ot22hsS0iETsjVezWa/x3/R0gVEeW6oONlgoBCO3CeEfxdECJSKF
	 bE3nmjcBz+orT0quJ6QfeKqa9yrott/f3T8j0z+E7B40Fi+mpyGTJ8FGpWzlf5kqH5
	 yDrUeNAHDB8Fs5hYs7sxD4GHGCHmEVBeuJT6fBpwR+0GO7pLwly2A+jNsOW37reGpR
	 Y6OdLPVqMd4Gr1R0erfNzjlkMIPWBc5j4D5QoMLesvRjQHXBfjH1cdO1MCoDw3pxo9
	 MGkM8ZfCsBewYcoGx/oTYLzx5pWHU/p5FXw9kR6TNm2yO1td3WLsxNPJKHq14/bpUb
	 1ExmKojuZsvQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8882C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423371368.27491.3014005061486921392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ad189ba3781283c86f819956077e57f97c08296dad70398a0acd11eba2ac51
Date: Thu, 16 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784233713
