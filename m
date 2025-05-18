Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53139FD9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747591795; cv=none; b=uUHNFN87LGJx4LxtIpJ2bSKTX5pAL8BWfHR+aC6XQ5rFdsYCJo7bLDvRgynDBX1RFkbS/hGQL8HDSGqPbL5wFtI64x6fYdKf0JN/uv69kYc+jmMJQaEAxnNGsNE6/DP07xrWfYx7Is9AZyFMIvbTHV1c813ERM4jGUonJkRK7l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747591795; c=relaxed/simple;
	bh=QhoG/aUD4pg0xkkWag62O4Yprv82XmKVVymZlCYD44A=;
	h=To:Subject:From:Message-Id:Date; b=TYYua8Dt56JjdcfTkHWDugB1GkKgl/S/CNQPEhe5S3FkjW9J5RFusDjIM/CYfdrbWj2oANqbDQ7RiTaqAPD7Ri3eDH4R+Jo358VMsx1YHqy4l5xZVycXvPeK7yRUiiQVwmq+VMFb4Bcq/zd1bh+ywm1qW4okJUDokh6XnS/DndY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9Z2lXBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9Z2lXBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2761C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747591793;
	bh=QhoG/aUD4pg0xkkWag62O4Yprv82XmKVVymZlCYD44A=;
	h=To:Subject:From:Date:From;
	b=T9Z2lXBb+aA4u4n/HmdEu+9xBKF93heOUq9PWmMhi24lfAsq02jFHcpkxedYyn3k2
	 CwY2LGwERh4M4EsHZrmr+4aAqT9qAffEfJYptFheV8dAPGRFqxC2szotUuMiyF/ncR
	 vaU26P9Upz4+r/chN7RvzQRSKYcNdrU5g3PD9TPMLPOtG5K41XUrglj36oBmbGT1SN
	 9kJqNI3h7460hFiBrrUGna7w3UtGYXxB1yfpcRgFgex52m80YQxOAX2FopxdRPILG/
	 DGd+zAbSjtjtTd8nSSVZhFYrHuUVgHsKsNebHAbBt6y4nrBAPFGxWw2hwMY4pfyNuR
	 4taVKHgKu5ZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94111C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759179357.22637.3111039172518913436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5522ecb7f85ad4be4cf24c6e46094049bcaa1484491376821aa630238160a522
Date: Sun, 18 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747591793
