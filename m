Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F02874F8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775700934; cv=none; b=jr/0iwzSW3HP+9cv2DMWZubYpzTKCD1XEf09bZLnAriYkWhr9NjyL/pylss6BBNahy+pme3GjaFV6D4Fu5Ss7NMf0O76XYCDfTdT2GxPv3SfHgKzx0hU6e9YH0a+H0ojrz1AN3p0DE0L2P9cpVKftE5jHc8jxoTH7u3C23NrRpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775700934; c=relaxed/simple;
	bh=ZCOLtLHacdQ+OQlKtxULRcYbY4QE8FtxEQptXDZfEhg=;
	h=To:Subject:From:Message-Id:Date; b=H3vFZ+vgEJP8WPKoD+cQYGJdKGQjGNMgMjrNUmXxWvkSW+Gw+xoW3hlKv0CmWU8oon/LiBMpLoIiuCQCWxF8YqGn7pqEopOFPtv9nFSvKM2B00ZAzDhMV/0vLyNCHLHQhE8Grx9o11Go59cSWMrApIyKVcABtqrmRqepU2sQz+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSWv+f9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSWv+f9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27FAC19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775700933;
	bh=ZCOLtLHacdQ+OQlKtxULRcYbY4QE8FtxEQptXDZfEhg=;
	h=To:Subject:From:Date:From;
	b=tSWv+f9uj3HwnqfhsuHa0BPQJqwwZAGIlkZOJ/u9ZjdnDp8/2WYsrD1YGeod4f30X
	 LiIBziGryRdXsKBUyhDH44td+uq0ScJX9L10CfHgxkKJt7ZVV0/h6Bbzw1q88Gimqn
	 Riw7EAU84eN/Fss3M4b3OD6JpU8WcReTC5/XC1Ojxt7puETBMn/h1M9mgfpSlCl+VW
	 ZGqIaltJO62ikdIdHxL4xQePaXPWbcIT0ZmGKax76Q0Gs1A2qtCtQSVx/1wdRqdbbI
	 9R4RC8tPPDtbiRm4s8O+u1qfZ/e5jfFDsFEBeaD12b9oCzy7ZeoQn6RhyTv8VKyhSy
	 wHiNv/LyS8pSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E0A10FC456
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570093369.27677.9209030303858731761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c756905f7aced6f21de95e417a5a3a7281d101c2ac929a26bb3d254915f460
Date: Thu, 09 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775700933
