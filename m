Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD5A22338
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716840863; cv=none; b=EOAqyYMPAyNW/WNPCkY1rcXv+/l0TP8iK/nDfVtKHgIMM5Z4569IdveMKuNJJTXcaU6v5dFvvprG89HlD/sUukOzzpaVE7pUrJg41H0gkvZsVMKfvbJkqokhOeiv7zNSe+WKnb2QYc0hHzfpF0CplFGFFy66mFp3c2It8B6ZztE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716840863; c=relaxed/simple;
	bh=MRR5uCPNbHrCJFWKUepSq/iWbOA3ZAuE99UgAJDdDE4=;
	h=To:Subject:From:Message-Id:Date; b=TmD8kF+BGMws3Od0ipGtr8v6bxnfBkClJc3FldewuKnf2ECA6OtTdsv6NvTS24Z/pscDndRvQ3Jr9zIB8pXTHoBMCEvj/HXLE9lckCi7RPq6HuTFS80FjdWzguUFyg6BU0l/Tj7TDmnsE+OEygL2KvMV0pp8Pta6A90iULsOoj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etCaWnq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etCaWnq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EA7C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716840862;
	bh=MRR5uCPNbHrCJFWKUepSq/iWbOA3ZAuE99UgAJDdDE4=;
	h=To:Subject:From:Date:From;
	b=etCaWnq+PFDcX7mqCds8otH+JljCEUlMTRZe5N9bKDmmZqWlQMOjIqLQWznlwFJwJ
	 lbdL5LeYZPvqpNcxtiHwdlS/nNHmgQ5LCHvAbfLdzBM7jo2vPL1ZX8Ws6IJhr03zlP
	 DzfilF64jq/1nmjSge7Q1S5jx92MY5FcTddaNNH5F6ipwQtWoQjRgXr/apCDNRR6Kj
	 FxZBJ3YOoFFTxMQbHpekOu9nOejsO9w5CcEJTvTp0ziK057tjLbpSsWoLcEgpOkwn6
	 5IcAGschDVv3LPnU1caRS5fVZRikcjetx+iMBrEDZzW7DjY+pX97m023eTpCzEbPLZ
	 3hlgxZdjYzspQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81B7C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684086276.25384.1881251020864367571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0be7407ef2f3179ee5f24c6446b380e50d767ede21a307e51c57f7b70985db
Date: Mon, 27 May 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716840862
