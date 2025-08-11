Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2633D76
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754878194; cv=none; b=vEMOK45rf0gSwIx0DfokCXubrFORZH3pcCUddYediYMIg7hDAE23fQtfklwyIeqXyaV+kad8kyOUbd3k3m+2gKcyV9BwdEWLewJxwU/5ceo7LdKUyPpqfT00okeV2SVzAPWSt4DANs7whHpnPvrLPFVfWwiwW7k0hYVsaHlJbC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754878194; c=relaxed/simple;
	bh=2NWIEIeHBnxYhwG//0HgtLxDYmAuCUDq1F3ISWm0YSo=;
	h=To:Subject:From:Message-Id:Date; b=ZZiedc8FsWduBhn3nR8FgcuVHwFJ9rKuGn1F3VewDWsvvZxAPv7fBXUkqQ+steZSQ62n1i63Yr5o7OCu7Y09jmte3Wbg15pBdGqWyN2NgopVUUR5myZNnXXON2BbHWuXST/xnr+evZ5zskiBh678DWEzYKH3my4bGCgmwEbIOHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVq7L/9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVq7L/9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754878193;
	bh=2NWIEIeHBnxYhwG//0HgtLxDYmAuCUDq1F3ISWm0YSo=;
	h=To:Subject:From:Date:From;
	b=jVq7L/9XpF0oUZErgx1RM63PRSPSgZfpZplmK5xMEvYLgGdS1Z3TIY3f/bdDzk5hV
	 A2AJ+u/yKsBcLLZsCU+pjzMkMaduT+KzFRCjN7rkmB6D3lKAsQqC3AaZyZdKcyoCSd
	 nFZ82J2h0+GXYsRL30xw4mHSfuc9bxV2xUnocuY1VzKyQCLOa3MNj3Q/9A2dUwszVg
	 5tvNGB/H5JCwA1dlIsFNuYk8nWEV8frxJ+ZRqDjzK6JZ02ODW5sF4345NgRn29c9kY
	 IITCa71W1touXutdJ82napbJYQCmQGtabJcR9xWgvws0JuExe+puI4jvRIqQDZwO6h
	 YpputuSh+XNpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CCC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487819357.17973.17302514906551839875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17aa4383b24f91f6db25efb2070ce129a6aa65407ef5fa299f6955c769587619
Date: Mon, 11 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754878193
