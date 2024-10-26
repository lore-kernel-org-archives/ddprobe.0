Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23109A94D
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729913154; cv=none; b=U6ddfZ23K1sPc0fSK1LEJWgNExazL0drQ7oSj8/iCO6lDmp6vkGY55wP2GvDcEeZrOoGdoNxT4NDajaRUGJuTeazKRFqkHmpObw2ay9JaVI/v65EzY5xHNSQI51nHancCczEVk3QKDbeTWr3ullwMWS0or4uz3G58mZ5Ca1QBDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729913154; c=relaxed/simple;
	bh=pCQMgLIJ9vOTNmYDJCXWAAbL7QDiickhm0zbOjMq9TI=;
	h=To:Subject:From:Message-Id:Date; b=mDdew1hKp0mFxp8zuAZVdkGHePQ6YhN1hgIXWpqgv8kOCT2eG6aT/zrUnU7kwwp/mcq7PYPF2p0t5RoI54OwGiCvEARcx/vgK3bjEMC5aBSqn+Rv/KiUKsnB72t2NftS6B1FmdCPkGvE9tajqJljSi2eiAJsqMc7xjjt03+nJ9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sekhNkue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sekhNkue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F75C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729913153;
	bh=pCQMgLIJ9vOTNmYDJCXWAAbL7QDiickhm0zbOjMq9TI=;
	h=To:Subject:From:Date:From;
	b=sekhNkue7FGtOUbN5fvuGoM8EzDJ9m0ks2OGfwwzGDYzF2aKdZAWqsUl/QeGRp7XU
	 dAGdLIME+edtLcxxTjKkw4HxTrmzIIqh+JGeQLW3ydjAFKSYDgb4NGvT8srAvJDUUM
	 ZiqhHfBcu79QoBKDXcMLlu0vOm2Rb4dkUs+1q3ZlWjZ0RYtQL4phRYuBYK3Fx4OMHc
	 OX7WeKwBKc92KrBok7pqJVqsNquwUxUw7l3QHQDrBfKoQKw2DgBUsgWF0fZgwY1ooV
	 pAPNnO9rVCEIVxRQ5Td+DnOMzFF00sBtp9AgHReUaJMFGpXwJrvPmtUHallK41+RPV
	 zi8yB8FjiQB3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C18AD10BE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991315362.15171.6468294813217488301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd83ab65f2436bc31d912e40fcfcab351dde6ff0bf65aba44a62dcb3068cecdb
Date: Sat, 26 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729913153
