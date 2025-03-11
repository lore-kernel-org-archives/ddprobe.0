Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1DF2F28
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 22:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741731535; cv=none; b=CCHnfnzIxwo7Fd/VJY42JkCPIyMIMH3/hc6+74Go2usBX23lYpwegQt8Mnpx+RVbx30ZteUm0S1sTKspLFGGLb6Bd6U/MNpaRi0JtFTzp6FtO/a/YiFMkzmBQhwvKDhFb0PK4nivwnFULFv2QO562B2X7xQQ1rEOkkfhQdmj/KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741731535; c=relaxed/simple;
	bh=vdlSmBv4edpr1bEQCf1Za1PzP9w02725gGtZOhsqfEE=;
	h=To:Subject:From:Message-Id:Date; b=XW+NnB2GfVBq0bmIw7Lo4GGZ48yP9vZB+dYJEC8GHPbVch9kZifKw511I39cqjcIe6s07F7IPoKZAMZbuoowBzwlTOjoQrmeyqXLiqLFw5NdcJtPbFjhl4TBAQe6+XBT9NHO/WBChBu1ZPaocCKYybpJGQR5lzGBBao5MPyjj9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpUHP95b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpUHP95b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5086C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 22:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741731533;
	bh=vdlSmBv4edpr1bEQCf1Za1PzP9w02725gGtZOhsqfEE=;
	h=To:Subject:From:Date:From;
	b=NpUHP95bxR6cluozkRmzohATu9Z0hM1T/4ynI5882EO5ZMF18WhUjKf+Dk9GLLS1b
	 ax6UFmv2C18MjKU1k3bqhpivnv2qgXXYzXJfYPRCzF/sstD2xtvdRMSuvZx2WySUgE
	 1gHjYvGpFfakOfV+HHnaCpHmgf2eeAt8UygVc4TFJmUrP8l553K9uDjq+k+gNSWzNB
	 cBaXhp2VSUa7JYO42MsBCSXiTvCsGzfTEky3YpAFDYYsHSYfPbhAuDp6kv2WJZElYV
	 sXJ6N1lLvP8oIBRw1kes6Mhk1B89RdfXrHtPXdEnRalG3vypk/APAdcfFaFvFYn+t4
	 FFJHAz1DrMVOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6EBC282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 22:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174173153363.22916.10406632640775934017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1479a93c188b5776aeca08afe181c3b0105d640d71cf20215a0d1e3cbe395c
Date: Tue, 11 Mar 2025 22:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741731533
