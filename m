Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C163728D821
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754090993; cv=none; b=ZyK5Wp+rFnotpLrj1whIfyUVi7iJ95s0yWyMwEcXGmMWAXfBDcN72u6FnkHFBbOvtPMbRk6zSuFQl5bAeJcENcULjX9nlyriYAG2b8jaKdsS8kH1sJ/Dpyn5POVDkfR8KrGWR+nU+44x+piWrF9xvGXxoVPfSHE9zs7aH8pewgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754090993; c=relaxed/simple;
	bh=WiPh/qrMQDs73ET2DleigB3leq53voy6ZAsU3HBg1bQ=;
	h=To:Subject:From:Message-Id:Date; b=dEv0sL43EBKEkC9Q8iOxCb8ro4ULWTEqR6etLMLXITXLeAxJ6KFSrYvX5wUUDkvFnRtHB/6qThlPe18CD0/jv3a/pciKCn4aolmVNcGYz+/nLUTJGBGZ9eaXkr00TJZkwPKAHbF0dRb7E78Di15gViKhd7ECv7udXInv00K80VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKvRB+4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKvRB+4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5019C4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754090993;
	bh=WiPh/qrMQDs73ET2DleigB3leq53voy6ZAsU3HBg1bQ=;
	h=To:Subject:From:Date:From;
	b=KKvRB+4Q1C58y+srMG3//fEqwdPd4hsWhNCOAKchUdwqD1P5Qcl1swyxJSvkrSJTq
	 Yf4MJ8yGT8a39cP7nzcW8upoMdGeJYzpdk23UpU9zyIVW8UravKF+d/EgP1huDgNSG
	 wdgLHd/I+0Y/ODq+8yaqD2VIbdpG/f5MoYq4LASB1TsiwkVnxQeXD3c8V2Y0W6QNpp
	 wTkgFvt6YxNVjNVxpMoplx3mGNbVDv+fywROKONrcjk4M9c8QtQG+Lo/pfep80hbWf
	 MPmLkHoAGy9urJbV91szSHLtUbFls693q4CLVJ5B/UaVbXzVbtEORZQbnVj8TBoQRB
	 Fxvzh6r9HXghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7EC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409099360.5007.9385810116053729112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40d7dd1607dd4899eea274c13c31fa9356bfb90430f4095deed36e0ba9c8adf
Date: Fri, 01 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754090993
