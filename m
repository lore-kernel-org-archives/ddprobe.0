Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B83521257F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775697934; cv=none; b=LLahRuOcUk/Hux3WB4YDRSaFGhvEKlaXNXRkg7R47G4X1/9spIKdM03NvTx5EtpiUir16xZKzKxo0tUCNPfovxhjbPxZVM7EBH9Dr4Cj3QX0ZDtFIYAXlz0XWyXO90plhRUSY/bFCl1PwVgijklVeodeMSF50xnE1OVrw3Bpgg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775697934; c=relaxed/simple;
	bh=GtDh116OGf/LNUQ1FEr19KdhOHMLnVDTBJBmwFhPTgU=;
	h=To:Subject:From:Message-Id:Date; b=ijxvWFzzFAdDhoGsbucLLEv3LXp4JaaKr+FOCJFSEjObrLzJxMCl9FviH2fpJJN6X90eFgzkSEfbgexs90hQ216ItCNAnYB//aBnIupf9zc9ManHr5cWj4FWfj8q/9W22NAWAglLmwjHrCSDvXQnPIQwqKPN4oP5icwFyii/BrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVav7xTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVav7xTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCA8C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775697933;
	bh=GtDh116OGf/LNUQ1FEr19KdhOHMLnVDTBJBmwFhPTgU=;
	h=To:Subject:From:Date:From;
	b=jVav7xTxP35x0SW8uqr5wltQ5tBPusBgUSda6xpyvllmlzEdttXwXm/1fH86YHuoJ
	 9nhS0H5q16GqUgtOYr8paHuTz7eOXf40OpoFmpaXxiL8omkv93U14PIOeZL0qnoHvv
	 Wqt8oUquIjQIDC2Xqm3UsRbDen/oy/b4EG7HXP9U6sX+Kvc10cntFozyCVZJ2P6Kku
	 s+3/ni3HHfYVkVEag2ElgiDX6bemaTqY88MPWaTrSE7/TMTKhu6v6/kIeOGnWIBAt+
	 LB3FUQxQ4j+WOe4tECvMyqf86wra+hqzXlsQQVLkaJoMnahwBuU5vAuArVvL/uZCxP
	 /J5t9Ba7Fedlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD3710FC464
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569793369.9828.11159038532289417445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485f31ece2ca6316c5967b156dac3754929b5799f4c417db9007724a6b7aa0f1
Date: Thu, 09 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775697933
