Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CEC82866
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773693894; cv=none; b=Igr29oPntQTN0GRL06P9K/2sIW74ArnFBP5y8oHuEbUJjd59PNyTnGxm+gBwqkbH2PiKrhisxWCgMFhRgBYWLwutB2eKHqnFHkwTmoEhj2PntBbYSyNQevTHxDsd+wREtrnu7r31tgoiXEXQ0hcXzFy6TjBmcRJ1sJlpC59ZmWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773693894; c=relaxed/simple;
	bh=ZCK0Zvl69cgqUudUOsh7ZPvZsr83vP9/W6S5+0qawQ0=;
	h=To:Subject:From:Message-Id:Date; b=BKNoqckS6tIuJCyXP4O1nfC7ahMhTEOPjyDR8T/MmmWi0/uI1YH0UGjei0GPGSL+7B5xDsmIWXzdXcnMCa8LUjOz1TdT7PtYft0CnlXuimm/L2Ehhhl0R3qtImZgzBDG4kD8XGFfHti3kzym1RXbt5zbrMyYwN9wczu68Fpy7jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DruF758z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DruF758z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F421C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773693893;
	bh=ZCK0Zvl69cgqUudUOsh7ZPvZsr83vP9/W6S5+0qawQ0=;
	h=To:Subject:From:Date:From;
	b=DruF758zHuiSh5EQ7v8gjP5oq9orSgr459rOdxfor7yW4n/PqegJdDtc8okLX/9lx
	 0fQ38FAoPZh9qWpdTwBZhaTX+dEdvm/otDLKpaWra3GHooOowhV8ZWrg0Huk9JAq1y
	 UrBab3RsFITOd+qxtnt804ftMC2x4jn4Bsi5JIlD+7fTDTSg1/jRqtmrZlmBeN9s6X
	 uaKbWuhQRwGBviGIKCNTtFH6pcihTxo5KzKhMNSXyswxrLI3oRg7Sb7IVNLbOuNwvz
	 BV4H5AwH9wOD9eDGGdQ/42VhWBPatQJ0VWVFIu1O5t+J3Zg8gL4mODSAHPP/OPCDzj
	 Rga/gsSRtv0XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F377F53D9A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177369389357.29215.6187639842127577539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298cadb2065a45e5df5e4642e759eb514f61ff0dcb3c63b397f286a988458bb4
Date: Mon, 16 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773693893
