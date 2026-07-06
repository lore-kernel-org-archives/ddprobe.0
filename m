Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4663BE17D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783327114; cv=none; b=ixL+vSnrfcKMlLDTNCvGq0JYDrc3PBCv5SzTW7gL2RnB+oZD7/A9xveEekMFW2baQNiZTlOlWkB9CifvXc/nxBQZYer0W9YlgLNHePKebyR93Saed40OJccXBXy4o1+HwrYQIhU5JVmKj1wTL7DH5ngCq4H+DYd9KjzT7dIEhJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783327114; c=relaxed/simple;
	bh=xIt9TnmLOVYbvQHkapOmNxSv9ZYWkOrH3vsrc+mkYTk=;
	h=To:Subject:From:Message-Id:Date; b=SsQY8qZsYq5hSWwOVwUUG+0qmfl7zTN7PUN7WfgThUW+NyN3aAUwNEjPGVqXiGS5u7GP8HeKRdlU0I4ZHVgTxshfXqUAgBtWTiidLRKIy4/r0BjGfaBh3mu1SP9IlnZwAGAsO2CGLfDNXppUFbHUM1k7VDQYaMkkztahiTw8d80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXHAAOqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXHAAOqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE0EC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783327113;
	bh=xIt9TnmLOVYbvQHkapOmNxSv9ZYWkOrH3vsrc+mkYTk=;
	h=To:Subject:From:Date:From;
	b=uXHAAOqKLgzouFJA3Drv0q7nFWPNUuplyjtd1CD9kFebwwp+GMYPUZmwu8svbI+A2
	 cFGOLQVZzVUv5i9Ck7KLxde5EmLyShdruN7gVJ+xmqynO2pxvYx/SnRC5+E38At3vs
	 upq+sKqgAnlZb9vJ0nSfggDXHKuVmHJAFCsag/3bbRtJTMY6IaHZBaCK99s6gprxUw
	 P0IoVm29PV7Q74mWHV8ErVf5SiCQrjXB19zHAWHO0sw4ROOM88nhcHNNMBXZoulldJ
	 NjRwsohuoK+0vI4Ykq7zVb+/SZiR72k+fp0UPnSVgsNjs2vYODQCgUy44WQwpITLJO
	 53DKxzK6Aomsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9175C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332711368.19083.239069942715492486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 746fbe9a19e8c15dc0a435a18430782c0cb0e015b25d3855918e1d45921e10e0
Date: Mon, 06 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783327113
