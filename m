Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD601AD3F6
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731622554; cv=none; b=SHQGw10/yCpQZ7670D4WZw0izb3wCZmP2i+50GxiehI9tMssiMTNpiM3DRpVSEwoCbsVPnZmAuOBENwLo1Fjh5Syl8YauflhJZY9fPea4Prb3WfXKkbpStf4ti3vnidzKvt/+NeWuAwGCInnzt7KyUpg3TOVgBEojU/TvFCGn7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731622554; c=relaxed/simple;
	bh=7P7WY44UVn2+8kgPAZE2gSK8hKy75g3632MGt9THtwM=;
	h=To:Subject:From:Message-Id:Date; b=PrqTfPKzdL5QICNh93E9gXKdKUGpT8LpoHfYqQQa+DxMzIqRmRqinkL3Y+YKnvUmPfJcfzLxM9lgmWw/PbYaAnwL1Omnpz0X0k2PfApCodA8chUMsGivXvyFpiVYGHD2l9WJgE/rMXYxRrbGjd0FTNvasmkxTpJF3KW7Jc22J7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xhs0lRA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xhs0lRA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14C4C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731622553;
	bh=7P7WY44UVn2+8kgPAZE2gSK8hKy75g3632MGt9THtwM=;
	h=To:Subject:From:Date:From;
	b=Xhs0lRA9+04HTPL7n7J1KTkEoOwikl7MefZ6XtLgHd/17Jj/yRj0Scahti2pIm177
	 NvjgcNHQ/buIytJVvyd0k9Dni4RCmk3wCQTV4RdwpvYNbZlSdr/iUxRxoQloAbgN14
	 axtud9E/X8ux3SQ31Sy5yMhxdMq1rC8nr6P0vu53NZ1xloVI4fJvuZVeMoSkBbhnW7
	 S8nC57iDQxeWHoBEO93yAAAKN10nGaetGUMs0pItoeP4j6oNl3uHZulrXct5J1+MUK
	 ZXXbZ1bZZKpC3xKnlF3vYxXCtMconsIBc2IBGuQ9jEKnxAiBGtU0DewKaWDW076RKb
	 EO55BGAwclmHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9669BD6A247
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173162255359.16793.17745619242318225945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09556e097f78aa4558500e149db147795ea33876027abda93a43dfe6a9c672ce
Date: Thu, 14 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731622553
