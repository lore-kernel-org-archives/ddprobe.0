Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C71126C03
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770537234; cv=none; b=apD8/xRfYaa4e9ZRyD5mUV8lU7aTLh3mo+kpSJlAaxtiDsPVXgz/Jrr7itCK7Yv4AzPuTh9FYNdEku2s3M++emiIf5dnQ1NcN1p7x9Hu5YgtQt7TpeebJC1ZJW4+A8CWHVlMabYMMJrP4CiaBLnqU8Z5YDPXM9t/gJAxqafwk2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770537234; c=relaxed/simple;
	bh=tuIq9xdOML7dxb3Ko5K1QHXfJefU1Z7AAJrX/fyNfVE=;
	h=To:Subject:From:Message-Id:Date; b=pcsquraN3YDRDjMRkRJ3hkn9rRVnd60hlRdtus0FhNsophN/wHJ1IZe5vPWoeCUR2/qa4FrhPulFtRiQ0Youj+UceTGflMTCudCpmA9PyknJtTPgPbm2KZ028p1IBLhXrlPXIXq5wudCfoTCWR6xlTFE4lOk+nmCw5zMxtFEgGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0FOT2Yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0FOT2Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2266C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770537233;
	bh=tuIq9xdOML7dxb3Ko5K1QHXfJefU1Z7AAJrX/fyNfVE=;
	h=To:Subject:From:Date:From;
	b=o0FOT2Yp7ys5ZVWAvpRhE3Fos8hwjh77oYjajwe/UpifeKB/Kt/OEzK5p4mDnfM0X
	 km/Gqko3fEDskKdZx2fWMtx4uQz+QXd3+RQBCTifgpaq9yM5fRc9W99wvUSz4izG+4
	 OE9j1QEwPte6pzfHXwSH/stdHgwY0qj7GwfwOOJuPp/C4FJMBm8v9uQ0+fkTe4JS06
	 spYmazj2GQ0Kr0PM6hJE20aIs85TOt4HaOG+bl/+6/XQRWAI7kttvQBPf0UXYqfa1p
	 /yoqZYP+uiJ2Id03EUFZuXVSQyRKt36sOCct89Ptb0VVIxbOOHCk/azcsHAGpuoEry
	 6QtYqx8t9k3ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE92EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053723360.3092.16715621301918985994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4eaa75ff0992c4eb441c91374dcfc8ed0edc3944f24b9ac5b55ead496319c13
Date: Sun, 08 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770537233
