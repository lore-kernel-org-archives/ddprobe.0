Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2878A18E359
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732569954; cv=none; b=Ctk0IQ84HTh05NeO4RdC9sFnxqCReESAHIcC/XEw9+ZXm9mN/lXzlXoG1rgP5hNhnsh/UPWsk7RXaE+joptgCrvrfgJO5SLcGNvCMboCGrT3BNOZfOzjDHPE8/matgjf5t5qanj6HsU41yEcaxaP3FVvsNdzNVoBJR0OFhuE3CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732569954; c=relaxed/simple;
	bh=OrAR4oaTNikfmpD8UbAJXM4pjROG3QFyloo5iGpB/eA=;
	h=To:Subject:From:Message-Id:Date; b=uHPe9AXOXShpXsNBgwzrEhh9KkFgTMjgjc0pL7gutgXODLCda7+cpjsKgcN2aYYhUYzwx557sZ1tNx2qc63RWWKZA0Mwd6sJQeVFT8vwaDiqJ+EUsMga44drVoMoQzdXEjmD/he41SZj/8pOQFEH3XDMxdfCMJK6sTqsV6TuLpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re3kV+/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re3kV+/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C9C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732569953;
	bh=OrAR4oaTNikfmpD8UbAJXM4pjROG3QFyloo5iGpB/eA=;
	h=To:Subject:From:Date:From;
	b=Re3kV+/15c2OS09wrk4GtgyuCCF8MurVKuBl9tu/L2py87swwGwPP89UnCW8qtx9X
	 i8oGhgZAm/Xir3PcQyUqDDi+F5fz2U54KH9eu6spcGBYshSjYlBDI1HD+964S8q5/2
	 L8Dt9f4TnKAzqBFLTjhZOIhCTBhfRsNMJmScKBa1vsgFM1rx30l1c8EDQn8dwlOvoU
	 C4iBfKjXTMSq7iasP4J2ZpCmczXO7stOA/IygK8hWXHkqnEKjqPk0d14LurGIlE0mP
	 jLZcBTnSiWIVpu5oqj+EEbX9lIHfN4SKZCFpGcBtrvhPT2GXhZFKzph/BONqmJH/hl
	 MSNW8CcGjYNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A11D59D72
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173256995358.8387.12703695362656676651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14d9babaadc1c29c328b3e78664c67cf7369f80ecf9f6a6425f0aa7fb57fe78
Date: Mon, 25 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732569953
