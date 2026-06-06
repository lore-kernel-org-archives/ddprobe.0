Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377BD23EAB8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780743274; cv=none; b=tVtVjV/e+37PKxNHrIY1hQN3yNJOw2cr6ZjQaaOM+7JMjCDKLk5N5q/tKPP5iFuCkVpqssGPuvf3/QJVeprjD3WLEGw0joMU8HPpa++dy2OMD+hDDyKtGCf5f9dgo+bc4cKQFkR4/BiBxl2B0b9V5JUzsAupwU9GV1xwc8/iGPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780743274; c=relaxed/simple;
	bh=lMGkYPZ0J3cI7qJfwwspStydKM8+iCNhaynjqjSF5MA=;
	h=To:Subject:From:Message-Id:Date; b=cx9AnfSeSmF7xDRTpQgzmS+ziJpT5ouFcxtKJ0bbylOMi2xAbKYpXY2+w02lwiicMngtag1eQkM1OmXnFmgOjWqra8W/SHAjmjNjIxCYyNHDuN7UCW03g6umW7ygjBVz2CmvuReLZNj1/1c7vgxI/wAGmZrhz7+14KHTpLMkIQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzPxrzPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzPxrzPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F4BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780743273;
	bh=lMGkYPZ0J3cI7qJfwwspStydKM8+iCNhaynjqjSF5MA=;
	h=To:Subject:From:Date:From;
	b=jzPxrzPZ5SrB91ssjv7UZtLfL+z5nNEyAbpg4o83xCPt1wphS3S1SGLWb/cRPibn5
	 NykLq/ABc5iIUQVmhdjCzWUJoyaeBpTKFabX7fjqq+3tu9pCJKDbm1w8QvGGNYyk7/
	 s7QM/wp3YE5XBG/Tj7jfbu5SpullILCK22Devgy4c8o74kfOe1EFsS+2mfzfdcpXXr
	 JLqYQW53U6W5loqr97nisgea3g2ThrsWWW6cwY//cHbxExOYYP3xg3BGGUpGDdvZwS
	 Q3dHkXWPv4F9714IfQwLtXtrZmJrZmaXmUJzLwhH7dLhXw0XUtFke5qS9BUt0g18L8
	 yBZ/9L0pufnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCCFCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074327369.10212.4266424007420163179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7874fa2655d89e6c5aa5d373d0188b8409a806498b62dde2b9cd3353980bcd6d
Date: Sat, 06 Jun 2026 10:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780743273
