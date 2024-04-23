Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6154813D88A
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713898223; cv=none; b=FGtTkU64KGg9ArNjm719A9aqICn/fV6y+ESgRZSupHjOEvhIR0TBMTy0zbQiowGtO8ie83XfgHyxUbKLhAKB4g/vGZ/NDpwC9zcj4SJpVb8qiOY/LfrJZYjcSRexM6NBjZV7RpKwUr3PtzrOkuBZNq1h52Aqbhc6209HEsXfifE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713898223; c=relaxed/simple;
	bh=WMvd7QHYGJSnGGX+cof4+S2u+ER+EOSAfZfW0NX4AxA=;
	h=To:Subject:From:Message-Id:Date; b=Ti96Eua/2t2f8TCF8gpQWrNJhNeMTR/t4jMb1iDfDLBtv9G3ORaWvuVvP21yNd3redEwAf5hh5wSjZqXTTi69V+053y5wctWp2qCKT7lHUVuf2bMhTyafi069lE95CLgexWqNipeeQCBFK+GYIgT8eaoiwJHWrCDTHhvaxftXOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUSwcjSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUSwcjSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23CCC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713898222;
	bh=WMvd7QHYGJSnGGX+cof4+S2u+ER+EOSAfZfW0NX4AxA=;
	h=To:Subject:From:Date:From;
	b=SUSwcjSeCI+or4RJYcJTfPFk50+j6mVcgSjwuVAoDZoJ5Zq/CQPYmjeK2tQxGostk
	 fDHE/zprseUuJiM8UScITviCoX0/PsepDveo/VWrx5KYVmwosondqRd3GlXEW/S0En
	 ukY7RLmhypFLg02jJ75SAKnZ9gmjBaQT9nE0Xva7kP86yF2UARRxfz5A78geF4tQTr
	 N/Y2RxiKRF1jp5gRljHMOceF9qTVLCLhveJKW5J51u6or6+WviGkUEFAwHjtPT6Rzl
	 NdIEGrGO1PviMcknLdbJnjh5hh376ZSJyJFQtN6KCxGskDm81Ng4V2Z9cmsX1/N7fw
	 F99e8wKlriDGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC889C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171389822281.15350.615398193764428652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363cf5b583b2b412589bc5b316568820f008919098c7f8a8e6274771ad03cf7a
Date: Tue, 23 Apr 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713898222
