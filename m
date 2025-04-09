Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6C925EFBF
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744213795; cv=none; b=KM4S8hiUX5V8nC+zQMp3GdOTSDbDXdcz0dTAckpvxMJm+dk29PcHBqPuAz4UsJgx9fkf4E1Y43O6AYv0HGvzHo2GytWcg/Iv5ZS8MsYC+6DtDsoXLa6GPoKr5NGQgvaB/J+TENsHZao6jM7VszUUF4m08WI9VVCXv+idivfXgfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744213795; c=relaxed/simple;
	bh=UU/WYIx8dq5/XL7PieVhFWCUN9WjBd58oEX3wN7mUDc=;
	h=To:Subject:From:Message-Id:Date; b=h8Dc3H5fwFDy9szuJD4GTr3u4mh3EiXqauDqZQ+Oh3NqxFBnVcLmL6/CJrgTP2mbcaugqI3q/KdJwZmV4x3QfqeM+WoiJ8w1vDwLE1rWq/TY/7/W+p36fJU8MKxLCdndD96OMt3gz8qc6l2EiZ18iJrjnThQ9WqF06ZOp175clQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f08duKXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f08duKXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82EBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744213793;
	bh=UU/WYIx8dq5/XL7PieVhFWCUN9WjBd58oEX3wN7mUDc=;
	h=To:Subject:From:Date:From;
	b=f08duKXAd+iu/ijWls5Y4OcPV/ElBhu6Sv8UHwMJCnI42JR30yIXg0RZj/bnrZOxY
	 GJtm1JHh0pBmF5PuIhh2HNlwPtswsx8QnFxWbOkqvZsLA8URuBRdfiC+vhE9KpCtrL
	 X88ESXJ1HQeKOvwB6QVR4HDjfyOT1MuoblFQW9iU76rlZi8fKzuADY4NeWGexa6Flh
	 CvlBdmUIhzIbUNZ1QKdjiXnWNFViPRLPqcXQ7+8Cs0fi9auUieqD81G+6/EfSB2un6
	 ov0YrElovnzk6V7KGH7VvVNIik0L2bgcdiSTN4We9/PZnlHXlgN92jj+71Aw6IFZju
	 SeIC6jBB2267A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B27C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174421379364.32410.781556973165794854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fbb537e50891ebe5d31afb8b1fa1e06d84c0cdf09a4e1639d9e8f4b4e084036
Date: Wed, 09 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744213793
