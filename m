Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3417B1F6694
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748263195; cv=none; b=NKFJyV72BzPSYAAzoBjoDCY14pKuvJNvkh9PEAGxFFv79F1hod3BL0rL1P/zYJZRukdtv/DCkD954ZfAYTEYMC/qyr89szu91mhyDnv4PfU5DGxQzgKX05XpU4EixCjdN1bqnRt/5bZMMG7/EOwKQUqdRrSZRpIXhc+L1/OMeig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748263195; c=relaxed/simple;
	bh=z9n5lkhaLkedIVaPnsF6fJNLg5Gc07Qb01x4arPVh4s=;
	h=To:Subject:From:Message-Id:Date; b=DjVF8YWNicueFC+kxJjC3+Jz5gWrdXENSYTvtWCLj0W80rkv7dECRv9f85BwvW+FSaAQpbLyByDyaKmQcL9R6TJR+6la1/NT3R2uySAhuj0XCk+Mtfcj8lEozqvHq+CXoxpYLCIp07zY1ZFaANfiFsqUUcNwnBRdU1HcyD1nYVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9MjRLs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9MjRLs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F5FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748263193;
	bh=z9n5lkhaLkedIVaPnsF6fJNLg5Gc07Qb01x4arPVh4s=;
	h=To:Subject:From:Date:From;
	b=a9MjRLs9vzryycAPqDDj4zXN3Mayf9eTW49HdFYjPNVk2E2ghmhDBK31C6PkR53XI
	 oLZy3vdspwK6D3U+wVK+ioZH4sRCFWOIWbAtlWoe9jjPQqdJhgYrrN7jeWnXMiJZFK
	 ZezJlvRACCiV1QOkEj9UeXM7mpL6a5DmtCusyGt9RTdX3ZWChrCU7aO3vSm5JnO9bJ
	 pnKvBUuJvMtQW7yTezfABsMZgT0jZk9x/Gr1+tJfV1l/pN8Xmfr8ER3quIuzsDY2Zh
	 L9mPN5V66BQd/6zcxnDcz8gDNzKaIG8fK14RfGA3nFzFrQ6Hwg8A7Itk7i8lXocDx7
	 7AUVtvdWbq8SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFCEC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826319358.28676.7258559114305038756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f4121fc723f583d163dc8b970d26e3b4c9a1686eb21353122a92f1e0a957b34
Date: Mon, 26 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748263193
