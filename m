Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3009A288AD
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775388334; cv=none; b=rrATuRX8eEJ31dlUFdi6sL9ud/+z5DWjV+34aDkJL+yJun5C1lIq4ofKrJmfTodAOIa8fMGJhAXIbocd2YKX/xmOT9d0D6pR1lpemECi9BAbO+1wh1S/EDKn/IMZf9nJyn6QCt77JgsqdMbrQyvUB6ef83x/yz3DVPSH6yL+Kh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775388334; c=relaxed/simple;
	bh=r0Z/iOH2U/A+Nvj7u7u4Rz7enb+AjCJA4bZ5Lu2cGEM=;
	h=To:Subject:From:Message-Id:Date; b=oDUp4IM+ouO1Ynf5NIaliHZBaa/RUDsvk8v9Wv+NG/n2a/OFNL/2JdrkcwuTOKk6pEe6igLh7YlVWWC5G6Q2JQMdFtxKjyeVuYmYqOdWINQac8kU7aDpPy0p7A6azQOwMIhZNquRXARl1W78nxeEMrkCy2Cn9cTreJM9vW3K9xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUa+DGxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUa+DGxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DF0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775388333;
	bh=r0Z/iOH2U/A+Nvj7u7u4Rz7enb+AjCJA4bZ5Lu2cGEM=;
	h=To:Subject:From:Date:From;
	b=pUa+DGxUsorTX0vfGA3O8XIPVODE/e9WeF0cIVNzWVJy3zXLYkDYuY7ss8PjMwJ4C
	 q1qKlB9mL+X+u7mq79kPgdeNLkSN+5XHDhAKrNet/ej0hQEZiVCDRg5eGY+LccNlb2
	 0qIuB4vUsrrAxeczh85hartxaFam4DwHNDw3h/8G9IJ6wJYeDmiJE8oabkBmadyHoS
	 xagBhhJocvzkuZguI2hZ2s+lSTITN0wOIvpSqzIw+9LVvcca7gNkKqfJdULkhT4uAD
	 OWsuGwQHpyvH7lai1CWZbNJu751sxWGzRPHg9tEyBRkrNnJYtqSfpKIhVxbCxyG11l
	 E0ttcdK1iFV1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEADFE64013
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 11:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538833370.20647.16462349080555906514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308333eaf5eb3df4493665775c582955632d4888bf14116f23ce030d94d05546
Date: Sun, 05 Apr 2026 11:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775388333
