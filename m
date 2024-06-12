Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E3134C63
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718156905; cv=none; b=cKYkcrRrro7tkwN3uEgpRCPodco2qlJEwP/C0ScIPd9cTbFMVWkXfyjIwhkz7aPB4QkYX0nnOa5Y8JxgHamlDpzUCCfrVMSFNijiWLS7LjmEhv5AQZeTN6LVQtkceROnMtdPBdwxH7AoVKolJg4SklUA593U+s7zOlpuiwyoVwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718156905; c=relaxed/simple;
	bh=VwEeqy0mVNZJG881Aq3Do8QKIfPZEnPqIlpdR47YTY8=;
	h=To:Subject:From:Message-Id:Date; b=Rbl7/VtmSH3lOdmgYEnpbLrPP7cGagjfRVDDUYdFrWkPrROrKdRVv+MTWLv/dcBByakN/B/t6C5tinX9UCE2PkejY0RfThED+1xrVSL8AoyX4Fp9jX+scMucivh+bRnxwX2al1hcmIxRcxgMPNWmwPTSbQBhJiM5vuPSx/38DJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WERYx0uE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WERYx0uE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F29F0C32789
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718156903;
	bh=VwEeqy0mVNZJG881Aq3Do8QKIfPZEnPqIlpdR47YTY8=;
	h=To:Subject:From:Date:From;
	b=WERYx0uE3q+DIQtUlLDRcPOGH1ek/qJLTI2OOHumwouwU6+JH7jWd3bO488dmHP03
	 TKUp6t3gSugQqh/agh5jv/ibCin8Zp3TfsDhCFXd7KCRTMZwq2kmVQtyvxGgGa65dH
	 tqAGz4qDSpXya35+PT6am/ET2Mcb+uIeDUjp8GHMGlY8U5APJCk4DTsEWRON7+w7ES
	 bCfwnBAjrrVy/cWG1LIdQG05XmwxCI6SE3iwYTCMsgTTdwxcxtSW+k/Z79foP0fNzu
	 hlATOj7kV+EGAasBN0IdGo4Sf+G5Bw9YS04DZPuKvJUS5uOkLvRAH2TTYfyHlWByy2
	 EahjJi4s8fa4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DACA3C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815690287.14477.3198128301420269682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65d0ae89984ab3c279742c6c1fbe974c71a90debc477f9c2d9927112c4263672
Date: Wed, 12 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718156902
