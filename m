Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4625817D2
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766930634; cv=none; b=HmpW1CDccrHBFBUBbk0vUkcG3+jTLtgdxqyCwB5otHcRTxZlg6pqF20SfaP7mAmVijL8frFNwAl3/vf9XgKCzBZbicBz+Q39QjqFaCgoy/Ur/3t3/mDhfDuzE2tUXwtdkb8QQhi8ecZx9YBinKHTGnTnEulwfXDNSVpuzcKMi9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766930634; c=relaxed/simple;
	bh=1iBPAeye1sw5hThr6CeELQlK8db1VL5nnxjT/kqHFrY=;
	h=To:Subject:From:Message-Id:Date; b=FX4bjo9n8fkOEMrfYolsq7DJnmAvTBqRa/LH+e9udGuSRfDleD715rtvGCCoxhIHBLPhwHo9J+oTXIITvWVdwHzj4NNw2H3Ceyx1s3mVIr/52bY0T2gAE/3kotpeCjrZPLTlJWN70lSRPZ/vuLzzY2dsnThYEIx8VnXhw0Hl9pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cvr3Tq1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cvr3Tq1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF30BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766930633;
	bh=1iBPAeye1sw5hThr6CeELQlK8db1VL5nnxjT/kqHFrY=;
	h=To:Subject:From:Date:From;
	b=Cvr3Tq1s2hiLUwNmglDOsYqx9Aurz7tUu6NvfrbGp1v9nR2wnpKH6sktOcFTh6Uy+
	 HqP6Ffx/KvMB6ccbkfrOu48dHeHF0gVrExaaRjRY3L2yPo31C+6ZMb/MhEr8FII/XA
	 Z2h+x++K71AWfaNhz//u5YRMC1KuOdqt7w+aAydOP+TvalGI5QUDARi8ilntuDho8p
	 eOtdK33iQbA/2sQo2kAbI80greCM1m4V7GBb0hKFANAuCNhbxWnp0/oZAgs8K3AMQj
	 pSgqgV9EIyapNJZsKVP0/OCmftPuZTaRyX5I0bOg60FzkRSx3OBotYzDrgz9Hmd0SS
	 byhuXnsLLTpUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B355E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693063359.13422.11667451311590731400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7e5e9d1380c178d4471ecd9d2868a65d9dcf469d35b114c69f25f4d86e036f
Date: Sun, 28 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766930633
