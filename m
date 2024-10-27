Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C667291E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730004354; cv=none; b=mRlQy0p6bvIEwD9D4jmHoOOHO25J2deBP6yhsgZTRVLkhl3UnPDuDVZADTZZR7fXtpgDVsSCGeIYbZVBk7WdLAC0cT2A4d6MRw0Svl7bY439LODfSwXuPgDhcObXIPgt3yW+S/UN9oKPtFn7ZYOX+au5OyivHGdBcwXMSqTqIho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730004354; c=relaxed/simple;
	bh=QH+ZLOBqTPGfZmH96fLKQPG7uin2bkU7rlrisvYYUYI=;
	h=To:Subject:From:Message-Id:Date; b=uhort87vNct2lUlJZcRB9SDrpSMUIV2xGMQ9uLfQ9k4mrj1lA3RRnNaOiBwl1Ahb3K+NBVLpDdYTFsEVESKcWMvaI8bSSKBn5Q3mAD7rzATzV+W7QvsC5R6zG1f1Nrby7nzJomji+FkHu3ecPkGuwcs2BHs2mFagbr3DcuM7OUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MB6SLUP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MB6SLUP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C88C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730004353;
	bh=QH+ZLOBqTPGfZmH96fLKQPG7uin2bkU7rlrisvYYUYI=;
	h=To:Subject:From:Date:From;
	b=MB6SLUP0rPiW49LVLn/nArhKAY7G8SZgeSIjYO/jce/CrwErP2o/Jz4/OEORfbngx
	 MsuLxsdcJa4+iXGQ7o5CqsjpZLtYwdEXpA9fYGPFQ3QspVJPqJBFzhStHfBldv1Mnt
	 ISwT2fmZPOtMYYxmhGHRze6Xq1fyKHKvyYkIcZlyijVZaC5Co9ZHzc5nxUOjOsnRXh
	 nO+ApW4CiuUmQXbkRif5BVvMEBNUM+nGpYW+npoLcHSeLmCZSm7XZg80LZw1E1iRA6
	 0B8Entkfkd/jDedwm/GFhW5dk6MqyWqMO7AfcNHUo/EIWedvuZPrjBNug9cgKLhrM9
	 gJVSXefuHH7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA44D10BFE
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173000435361.21175.9031494276134612427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9c7ab40aa53bf61cf43502e6591975c31febf856aff71366f0e43798ae816a
Date: Sun, 27 Oct 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730004353
