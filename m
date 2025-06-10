Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213DD2B9BF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749575994; cv=none; b=ufuWiWM8PuEVPYYn6+p8srOGfEaG7bVTSMSUgEkJ1oyjX8Uy/KV74Hm20QlLmDYi1z2OQhf0eT3fXP0Uihb6ubmK47AkH4AgjU2xrQF9URzh+8jNxtv95HkrMyjsO3G/Rx0chAqSLV5qpncrkprBSWRvT3XK6roO68m/9w91DCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749575994; c=relaxed/simple;
	bh=cMdQJnAkAuBU85gVpXEOyAftD/q2dCr4OBsCV3rjFhU=;
	h=To:Subject:From:Message-Id:Date; b=o8FouwNkrgHf8bUgH3sTGMEniuQxPdIN3q7t95FVf9uUDwjtWap9w6Ht0VJY7NTPsGlxDhFc3bNFXu/lewN2KVeUGs6pyJOwqabzxZIwSK9I4zBwsQ+LUqrxcS5NUvNvMgwxL40tMDtQSOAssZdSWsPli2KgLoJMxr5zCNuTHBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DL7zRlDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DL7zRlDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15EEC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749575993;
	bh=cMdQJnAkAuBU85gVpXEOyAftD/q2dCr4OBsCV3rjFhU=;
	h=To:Subject:From:Date:From;
	b=DL7zRlDJsjpvhkX6lraAbDF/stYALgu9z17jEPTW0WpAbKiDuud6Lfr82+zmU8vua
	 qBqYInxfpPHSEjwKPswQBVPKZFFODmH71CWmNUz8iogeURUY1qX3gmSOA9GVWvj95g
	 zI5VANVLG02V2cWWBTppP+Po+AnCMBnGsAkbvw00UfFJIBdxRlrCVsRbbON8APAbDJ
	 cEan2uuD5567j30tAXduhLoZamw7NpkUupVzTpaORIPOtLhyjZBTA8/XqT9l1l8ODJ
	 bpRH3G6LNGNW62fPKG8NOTDmW4OAU1PfsyETLRsDb/WC4gCYuZ54Y38VE1I7iKr1rS
	 3NFfCFLKI+w9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF26C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957599358.17832.11183876617184072105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d719e681b0bb464f4ed05d3f1705ce062738759dc33d2306e3a9853c50940c3
Date: Tue, 10 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749575993
