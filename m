Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1460B28EA72
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768348434; cv=none; b=ry8Dh4F5r1pLQVlmWb2Q6i60lLVsLN8jhMe3WjWfibwi6b1I1aaVOmYkk29KU46xUceeorKzS1absQpZsfPNihDUgmhQ8ynvjkH/kJWFVkPjE3K48VMsp96An8j761LF5tABe4+jjqaVmhQBQRLzce+jMNJ/9jwFrfPiPcx0I+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768348434; c=relaxed/simple;
	bh=q5P+JNvKRUBX+zJpg6cMBhGwXuXox9fcxoTdboaCZZ4=;
	h=To:Subject:From:Message-Id:Date; b=Bo/esDZH5zhtNWrjgX395WkQvFJB6a+eRTjkuH8lypSkhdMfwSNNpI27SI5OFb131SYr48Qij+zizoawvqI7fKGMezz67EfJCL1V857IgTow3IXSqj5irrU45MeEY1oE0ZDjt5tlA8VbLQytszXOSDNL/+uVRzp8BOSVmZVZqgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KY6x/vML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KY6x/vML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5FFC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768348433;
	bh=q5P+JNvKRUBX+zJpg6cMBhGwXuXox9fcxoTdboaCZZ4=;
	h=To:Subject:From:Date:From;
	b=KY6x/vMLz8YXO3D2YNU36VeqQlO6vKJ+tqrM0o1fjZl8V1xy2hzYGOitIk1sRKM7I
	 cGBqOjg1WQbq3qPnL5dvSs8N4WPYmFL9CTOZpEht7G1DXGrdrd0wEFRxclhjsSCSqQ
	 PUNm2yTt4HiwXDK6UpJxGLx3eHSnGqtBdlZ86IDg0gvKyGr1tWT6vg3cHpQEiI0BGR
	 OvdkMl6uyUPhXsSYMYwXXB/biP83ZgzKQXNJ6UeAzkTuKOewzeanfpMIOQisVS9Dlp
	 PlZykKJc6qVk095aBLiJqF5FbhCHMaXpBdEEIWjjPKlVdYd+/0wT+KntlHRnHKyTBI
	 4xJGHatZE7mGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92915D2F35C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834843357.24991.3634916075834313893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9f9d0ea018b50741bb9d5e7a7ca384188bedb5600f5f39ccade9749e3006c4
Date: Tue, 13 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768348433
