Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3312FB31
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718802563; cv=none; b=lRGdFw74+5V3mQuZn5l2mBfaDclc7Icyqa5XDH36kcCn4d/6GDECdbsWuikKVq7Xskjfqd3KgwuakzKIpwQUppEbBdACqGbUdioFjCU+9gKM81MRGAJ1NSUew2cQaarQVaB18rfLxzx0iqyxueUEw3TCx/McXNCO+vYwSVhAu5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718802563; c=relaxed/simple;
	bh=kMgark1uPmCS5A5LqMydBdOn69tnnGrLIYSvCaREBh0=;
	h=To:Subject:From:Message-Id:Date; b=hOm4YJZBSPk1bSbtso77TxqIZepVB1NqBTBojjpNxba3OMnyuhQq3+yxqk33DXuwKy+3SWyhgnsMNIux25Zcay5lbiYlcuvYEY6V4Zb93nw8EQBQhdWSTFXdc6Otx1kM6IuAUfLIC3zSHXiBHwmjVKzWLuQ8hp1ozdRwdmMuUVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu/ACqbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu/ACqbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12C3C4AF1A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718802562;
	bh=kMgark1uPmCS5A5LqMydBdOn69tnnGrLIYSvCaREBh0=;
	h=To:Subject:From:Date:From;
	b=iu/ACqbE02iMP+zsdQL0tzjqPkrGcINj6EwgB+QKsQA81+bDmefpuRHyj7ZHUiz3R
	 mwpKvVb6H/OojDB9HWeghtWqsshYRw3rTYYkXwCTebBrb9EXymJ4ZaZAo6Lt75uyo/
	 3wmx0fnw7VPyPf8vV3nZYY/VETiN3Om3+LSs8yoTgFE0sfvWDaXtiIO9ssvgJp9gSD
	 k+R43gM0yCUmiypm+V2PeQtd1Vzd6cAF4T8yg3CPNmmoDGXjf2fn5CqDLyCJ52hTL4
	 I0BRB+QiUM59Ju6LOMXHWR2gvjzvyKO2Qf4WqpXUrnPxsKF3wNA6NyfCH831vpVdJd
	 54Az7+bobdpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE20AC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 13:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880256276.2184.12526997547010135774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ff0adc6e0a27b8e1281201d9dadaf98d64e28b87d3d9ac09a10c069df607a4
Date: Wed, 19 Jun 2024 13:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718802562
