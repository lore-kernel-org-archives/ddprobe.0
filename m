Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1B2530594F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775747854; cv=none; b=eBEO9PQQN4qRDptQY7lg+H+mja429ShqlOT/CGPTDqrWZtTVJGBwdWQ5RAPPEh4385SSt6722OA0jmGknRb9pozkOrmTU3zPfVGek6QPTyhmvqAZ/QvPV0qrkJLBSaDK9ELEBaSwsxBDADMhoK6USCyaX3pXdOB02yK5vb9RnUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775747854; c=relaxed/simple;
	bh=eWZMuqDETXqAuClz9F7vvLQFmDWKpJsupzyuj36WcuY=;
	h=To:Subject:From:Message-Id:Date; b=rvScDmo3Mxkw/NxP5oTWc/xtCHZ087sQSDw7RYznlKA8ZophP7qy0M8x3mNfKOLk1w8wUXfUnJYhb1cVozclMPETnV7ogD6olEm7agEoU5/yZ/xj6I8MvzBKCvoA6L7CZgYimp77NJetWfyRvIP5kXLSMrsYPlQSm5xlZYJ5qg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F8y4mMb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F8y4mMb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46259C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775747854;
	bh=eWZMuqDETXqAuClz9F7vvLQFmDWKpJsupzyuj36WcuY=;
	h=To:Subject:From:Date:From;
	b=F8y4mMb4rgY4/7O0FqmdhnGDgd0v3f4Gg7fZCBbNfUovabDvIpnZY9KRKiyOPkK2D
	 qolAyt3mXec7fjTZNXO4q8jhm1UP9daWomTed0Lxa5lf+6DGXZperAqNrYI9Pfvn45
	 UvWZF49XRbVJcJiSR1zs3mvB709bDCpQdFvXfNr7shhms/C0cCm1zdjgyrk8k0w+Xw
	 mqx1y2TygADtplY3vguCEKIcCFnYJbQ33m9+TPaljPUq+pY1wIxqMHfCaBXrXxJEFp
	 QC+GQ5aotJ2mCexItG71x12ZUvZQWbHuE5jHZF1Pp1oE/lCAnUQEgg4zXf7XQ8T+4u
	 W9KtbvV3f8npQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0198BF31E22
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:17:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574785398.1809.18225515926399538222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7358a32e559720fc219331137c39ccade361ded583221249bd7984e8039f5bd8
Date: Thu, 09 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775747853
