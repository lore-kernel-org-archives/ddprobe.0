Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E8E3403ED
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787283634; cv=none; b=UPRYyJgHO1jJumNme3eqCtAqVB/2bemmWBJhMvv6j90mjrXRt9pPxWVlvNl8ef3Ls1JFOstXUEPB8gWPslPSAjDaw6v8iRccZzwQqoZliI675uvP3bEKtedaNDfLtii2Co0eB1HFNrqPDtKRZmI+/s4e1Bsl63HAJQfj+arsgA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787283634; c=relaxed/simple;
	bh=Gjgtyx7e8KOdU28Q7lsAnKWuupDZRY/N+SrVFI2CHTc=;
	h=To:Subject:From:Message-Id:Date; b=R7RfFaZlVE4Xu7naDeLPwmj9ESdC1Ka+XW8EwXYLdHpVeHzzhwIfbV0fE2QTjm3W8Cc+1q/r7thpCoZqF+8bxIbgIjmjz8sCg6jSZPJmJP+M8aKtcZ/C5pRrxe5Q9hZTATwLfmM1jLvLaJlbdIpIdNXyHWI72iXwiMmvm6GnyM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNgwBZEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNgwBZEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61C5C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787283633;
	bh=Gjgtyx7e8KOdU28Q7lsAnKWuupDZRY/N+SrVFI2CHTc=;
	h=To:Subject:From:Date:From;
	b=SNgwBZEsuRUAb95k31v0mIhWk7aZ+nmvKU4HELr9DloYLV8SZYwx2NtvNKhpRLqSm
	 wExW21qiFTdEoK2w5f+WAZvWJgKrL37kCehlIOp9aq3h9RhfKoJn8UvyjQD3qW3APM
	 6iQ9a/8kkgpiwkJaO61Mkbt5oIVodnc6HMsRNMwgtPbWbL3bGTmtM/t8I/KdvrpZB3
	 hf5G3ca7RJk6lQYPWkYSKvD1sgDM+a+FW3H0NCWoP/J6xPn226vGrioJhhRBSxQ0iz
	 l0GuSQ+oS4MRWXQiVfDf0R9ouS8D+uuEuSuu0pv2FyzqceNvNL83DrILQFAl4SHQ1X
	 Sw9owUWlo6GlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF693C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728363369.14332.5081106753846588691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13367969053d7c39c36cb5d19c2ea1a0cf9c0ab6d9766ee554bb7d4479274c91
Date: Fri, 21 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787283633
