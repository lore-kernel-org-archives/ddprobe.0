Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241518EFD4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743766194; cv=none; b=Z7re73U+psQDjsqbVIFlkA0eWlbf8+M6YVRbcbMPShEHMzfqNfzeUrRDKShykRZlktI4Y0xTtOMaDs3ZTuUvHiWPp57P8Hs6VoxBgx3O0psGK3KrLc70pYo89WTcxLxisgY2Jqpkg7Sh1pJ9/qKfGn0n7vJzhGurmt6NsJ5Hwaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743766194; c=relaxed/simple;
	bh=k5e7R7khbeKMq9DIb4dudPcB/k0p9Qov9a2SWVYmaw0=;
	h=To:Subject:From:Message-Id:Date; b=aK8OlYrHX+d5fHFqZ8Iy0AVFJNAi0bZO4I2WYu9GzMReNipSFjodGV7bKv97h85CaxQQW2oPjrEl5qSDNr7IXrnwJUQXP/cin78nfEwGu9BljLEJW3h4XTprA8vFksr+wOXEY7Fxaibea87ds5m8YjnvxMGdNKg6UFh1wk5WvxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f43gheBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f43gheBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743766193;
	bh=k5e7R7khbeKMq9DIb4dudPcB/k0p9Qov9a2SWVYmaw0=;
	h=To:Subject:From:Date:From;
	b=f43gheBVzlkt6yPQQDfgJBkvf/cN+WEDlN/Aa27mkQbYUTNKRrMF9At3n9SAO+fw6
	 bectukJ+NkrzWrYcFDdgyWXeOy+C6Okr49ij3lWLRiDGZWUMBRL7pQnmkmjo4HN6gb
	 swpobAdK5xbeJehSkQpDGOt/h8rfBkQXmwxf4WjyqbyzZ+MuYxvJpPJetO8NkoO7QP
	 Eue2qaf6x4OneXJJw7a4hpnt43eASLOBnuvb8vCxW2176uGqoN2Fnil4M7A+muLgWo
	 /yozbcrIN+JhHepZmdB/5Qfww7YHPUmwSfeh625wUcYzMdWFJg3jVTpK51WRXFIpyP
	 c1xu+VNleTKew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E27C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376619359.13874.17917294466357044344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa6c698ebe585911bebcefd3f0e72d38954870ef5c0596b76bd39434e1ac96b
Date: Fri, 04 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743766193
