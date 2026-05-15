Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA1C3F8887
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778867434; cv=none; b=FY0vIxvScG0ZWa7w3F2G6RZ267rDOTVQzhqCWmp6vG6ocRkjTMs++nrtdoaS7b6F1Wjx3YJycOazonKg8e2WIzEFoUUE53a8z65KHwiY/XDULAIP+6QFhKW/lYeQK2y6sLkgxOYYnbZX4NvIIPBZznqabfoCmH24/7pbB3NjFFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778867434; c=relaxed/simple;
	bh=kms39kzBaoXMHoRsox1decEJW/pS28f3J1UNnaC/5OQ=;
	h=To:Subject:From:Message-Id:Date; b=bkrNiLJztkcDFtZ/CP6535Lqrlqd0qcHqOysD7dnQzIEEhpNOg3wOmxMVrHAi8NC+QRk+bFC5IcO5NeasboD2ZiHU6xbNffYQS8Y/7/XLnXsFHKtD0rT73I/knFTDK1v8VtguoS03dwlEZe9v1kLxPDKHAsIjZSGVCF36+B+q3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMzERiCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMzERiCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBCDC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778867433;
	bh=kms39kzBaoXMHoRsox1decEJW/pS28f3J1UNnaC/5OQ=;
	h=To:Subject:From:Date:From;
	b=QMzERiCTm7eFKFqjCM0E4d3u5MvH6YDsfzzOW4uIfHrvpr9PXkHsByXRjOQlrWbTX
	 vDm+uvLtgiQszfV85fv+u5OIjOFlcvMoRwvPn0kRO7TelDTfmxFW6ZqPLoTk8sJmIG
	 PFsdcbNoWYiHx6WUmASL303r2mhS4I+aEJVmh5CCgWwn5jCUchfcii14Slt8J19Cj2
	 AlhGJ58U2TooCsRRjySa+ui8PAqFbWAqMjDWi42JTk1D/prFPkDJX6tBeYwTl7pWDY
	 jaX1QzxO75rx6+2zgqemA1x+yqQkUrAsMcN/HkvFtVEJ3YDGtFr7hfTpFd5WVd1Elo
	 eKHvuWm2Fp/Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB99CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886743369.12756.14891436857595626017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84cf9b37cfe2d23b0119826dd0c9aa63a5a791b2481bd79b15925ea5ee8ce399
Date: Fri, 15 May 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778867433
