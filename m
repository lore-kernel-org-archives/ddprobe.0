Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BAF3B6BE2
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775642734; cv=none; b=CUmixZNPxAeDYiCiMyYutdqJsTVWOvwXFnYZn5xfwp97DuoU49vxoi+9igqqVhQnZX/laKX8qXZEzUh/EQ9q+2xVqPU3N1BwtpEIxb3dkwFZ7J+uvDhI+Rd2yHbYefRyi+A/fjjBWMXZ+E4tmmuCCKVklR5o3n4SeAm4C+zY6Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775642734; c=relaxed/simple;
	bh=qXocIH2IKCA8RaApELHK3BpQN70RL7nTff/KlTHzmMc=;
	h=To:Subject:From:Message-Id:Date; b=HsYTwcaYlhOaKC/1iS+7hwgddn8lB+bHaB3x+dTUFpwcQzVm/KLrKfVQ2h4KqiFwG0+5YRFJ0mjU/wsm/hb0NGKHOdUZCfnx/pTTImLpTx6uptf0JOknL7R4Y/hE3jkvnoe3MJDnW8qKSSW7rZb9Wf9ykkejynByNco3iQfi1os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dReuuBR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dReuuBR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7BCC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775642733;
	bh=qXocIH2IKCA8RaApELHK3BpQN70RL7nTff/KlTHzmMc=;
	h=To:Subject:From:Date:From;
	b=dReuuBR51opEUOnTozRfKNGXNtdfQTr7zPHn9sHbGeIo5LMZpxAHiPrA+3s4mufbO
	 9iPjTKq0YIleSQhC/xt8PWsqBqPQbMwWbVldPvEE2ZOmNontTFUeL9c6CPrrC2fDiE
	 /ZrwUoIdjD+FdnTViNo8L/yKHGPJtB6pUjH/2BU0D/qA4rqzy7zZEBPxKDDBpGBwIq
	 9HVUCpvQRsxTTFnWA0nAOVFD6+/25cyxULSCfq85tCDTEXqVmgTiYEMAp4DVu4d+1w
	 AgHgtEmEPcJOG4A6x1jzf72JVDzNC6PKVINfxS/wzmsN/N0vKWbC/GyUUmXbdszus1
	 bnZ7hBSDuLKFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB57A1073C8B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564273375.26194.6637113987248481105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bcbcfe1960e93a8c5d515b1f21d7714cb58f32db71e0aab13d9441a2141d94
Date: Wed, 08 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775642733
