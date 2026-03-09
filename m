Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E9979DA
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773020094; cv=none; b=GdJmtvQRHQtABAxyUDST0A0GJ1yBhLiMbqAkiH7T17Fu8EvnyxFGIstgZvBDSvDGY26RQ/HdoiH833oPTnVOwuhnqDxbNFU5Am30x3hbzfiUdAWRFWDqHSDQBrVobK3Er9OznMy008vnXhGaaLioqheBZ9Oc3n/CVh75era2yec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773020094; c=relaxed/simple;
	bh=F8jXggNC9bHrHgHgyFnYYZTaiv2t6wFKDbWravp89sw=;
	h=To:Subject:From:Message-Id:Date; b=lxQ/OJ50PG2vJtWEHGqGXYTCp0wS0kvxB8LV9V+DmasVycA10XTE8nsh3dGRlQD+K2F6p151me5rBeIr35v6lbRINpLx2pXl+F43xtTdUF3cmByfFF8/FshqhyGrRPwiUAvfbFo+ZD/QLgtZhWDSvzzPVVK3A47yh5RR0+jTkjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQKvvi0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQKvvi0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8132C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773020093;
	bh=F8jXggNC9bHrHgHgyFnYYZTaiv2t6wFKDbWravp89sw=;
	h=To:Subject:From:Date:From;
	b=OQKvvi0ptjQ9KAF0oOTJj3wZpnjwnICF2gWC7TrBi/CECcQEBftlL+8ECxuwSy9yy
	 ESaIoWR6Nf3BsPdZlEXOnW6Z1oSrURNrR5CjJFSQgnwo/PmImt9j+oazJFh1WFw6lX
	 3HDgu21DcUARchAfpTrWFSJVsPbjY6pirHifHRSW4jYw2dAax8GlpBUNx2hnaasv/4
	 pkLwqizQxLiUFCZ1DWHvC9hENIGgoE6Hh0C+cbj+4gbKA+h1EFgaiI0eHzdUKVNUSB
	 tnuauj7ANUIFINeum0bLgoribwvoWVec2fBKCv7NbHnyxdv9mAR8rqT7gprMr83U51
	 pPLh0BuVfMsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97011EA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302009358.20499.6811246273217962011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa0868b49233e168ee89649797fd33f61cb0cd375b51d3d33d29990bcd54089
Date: Mon, 09 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773020093
