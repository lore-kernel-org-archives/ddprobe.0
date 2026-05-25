Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B792AE78
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779700954; cv=none; b=Jrtz0LU9XOzcnWIo8Rt/Xmq65QohETW7Z4Vyzyd9apoO0BgVrLCOtCuJTy34fYIdWs3pXiT9PeJN7s2mpwh4bVYhcB5WLh76kx4qSOV2Z7M3B7h9qSfPqZeCsVwDa45biSSOdw4GQ0JzhWonq47pDPB3dD0xq/YnstuI07pm+OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779700954; c=relaxed/simple;
	bh=RgoykbncQYYHl/KLA761u+iZYkuRY6x61pkphzjNzac=;
	h=To:Subject:From:Message-Id:Date; b=OAZBIBfW0T7Ct8azN5T3hlZbMNJB/N5dqHp2DiZYGQ1VkEpBVOO38QbDt5seJm516NQx6IMgI/FNTVmYtRQiwnhPuXk5NE5NTY38vBalT6Nwc9b0u47S6YNq09sBcwsqdFeA/6469cEbRxl9F7fR0MsbwGMu2IkKoSpj1AkILrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASD2W2Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASD2W2Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67C7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779700953;
	bh=RgoykbncQYYHl/KLA761u+iZYkuRY6x61pkphzjNzac=;
	h=To:Subject:From:Date:From;
	b=ASD2W2NzYQLR3KzUrswIyj6x745IflKjGa8XFYS6ciW5tLjNbzux1LqKcTxH0L7ML
	 hK4WlZiMiwoYuLhIqA9S+OAV8fKgEItWXgBpKh0/HXRA1WAHpmZYJ640gj6EceHjNy
	 p8iU7yGNz39vkW5Ot9iXcokrKnTf2ejRA3vnyBmVtn+P9xCc3miYJxWI5vz627mTdh
	 T2ZfMaA9V5hRGs5pcwEV6bFz2L4m2GzUVbJYM841kZ1T1r68+cBSrCndU6M5DWiYSl
	 5XN3SLZLOJPPWNobVLO2MXtW+g35wRBVlUcUOFjOqlqnd5KjixtJosJx+xX/usgwSH
	 Ck/R5ixuCk+DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FDCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970095369.9151.16668400379705094306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47cb81e48657195340eddc53f34e814398e8bf4db82613856dad6054dc9a635
Date: Mon, 25 May 2026 09:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779700953
