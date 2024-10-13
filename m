Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24861819
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728778554; cv=none; b=DUpXxvXPyseuVs7I8Lgy5CSbI+RuhpfSQAxiuiNFM8y6NKXJ3oS+liGZY735o3D8XTnlYT6H5IaPx7OgqF+50+AM4QympjVxfj6EZfUxgTZ/j3EdFGwmbnNXLesPM+NBNPnl3NatHBo0gHcCcb91lERT0XJYr8+hQQGVHaenxnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728778554; c=relaxed/simple;
	bh=94Pu9uXQpBJwr3QgEq+QYGxlVZaskd87Dqq+n+50XoA=;
	h=To:Subject:From:Message-Id:Date; b=nQeDcVdTyNQMl/j3WAH22re6G5ZhiN3pyW6BmXeOHYLn9WjPjr7Dx4VVQGpns7B4ZhA9xSrIBmFD+zc8fPLu1yqBXoldo/GDA8lF9WGGhNBwW6vdawa79QDr1LaFLiJRMhdbYeGONADZ9WF++HtLjQWj9tMpq5A/rx7iP46qc40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cM2IZiVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM2IZiVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E09C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728778553;
	bh=94Pu9uXQpBJwr3QgEq+QYGxlVZaskd87Dqq+n+50XoA=;
	h=To:Subject:From:Date:From;
	b=cM2IZiVKUmHiHe1H7zJDBmXmeL8YLeUyrBkOeqb3oQ8Fz7abHetASAWxea6fr+TN/
	 NeYqSGyTtyJBL9kirx7NnieHcUau5prPMDlrEDZABOU+gdCyx7rGCTxW0VH+cNa6fP
	 PYdJU28mVsPCkKuUceAUnF3qCJSyVODjkBIl1vAMtmqJMz1SsA7iMRVrPKE6ixHdDz
	 TaE9cLFIPub2NZkd6UM7A8AiytHco0Wclm+ryt6wUEjm9ipv/JC+1OzPVH2MiqLkb4
	 brwyLRxKuakyxX/j9ZLzgQDRgJp8ZaAX30qKz9wbXArNldwE/Z+yGckVY6I/B8oGcp
	 JQtfLIxJ1F22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95331CF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877855360.4789.12675120434498770286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7099718e50f2340f1dacb7f8b00b16af7291d86b905a1bbe24d7443776c0ad3c
Date: Sun, 13 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728778553
