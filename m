Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0E1DF980
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788229234; cv=none; b=BsWX/VLZnYmurHfK/rFAlmzYNT81msBOWFrXfhDSOGDW30/ZttYw4na37FIesUxHZL0bnT3ZxICibuN6T69dD9JFO/EGTHKFIWYQiDskYxtdESGgkJiwdzqmKenxEVsxXRK1s/vUWkxuCnmQj4T5xzAcCU7TulndJRDlhxIJQMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788229234; c=relaxed/simple;
	bh=VSzmNFcVng1WgM/5TDuLHBo1zvcGI+ymxqnIwRMr6rk=;
	h=To:Subject:From:Message-Id:Date; b=S1nnfs9mryzuB/ZJMKb8hMhnp+Lgb8lucK3xXlEVzoMMnN4bqFShOc3sZT6gksae/iBCAZzTGY6m+mvpxPRf2amAjE8hfwe+I7P0c2topYgdOPRDnXqsJHFNotTkphxr0/fTCeMbyXB2Nz6Y47G3nEg5/rNl+DRtXF67mTqRk/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knwu2vSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knwu2vSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B1FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788229233;
	bh=VSzmNFcVng1WgM/5TDuLHBo1zvcGI+ymxqnIwRMr6rk=;
	h=To:Subject:From:Date:From;
	b=knwu2vSvi+NZiBObN2CEfYL1uQZ1pUYqUy77zyvTUoAYJmN6wPBNJ4GmdNMdRuLUD
	 qbH511uRYh4r9KtIApofLQtQ832df10ZUDaaSdb9/dVtMlGhdVE12cB8CubLrKHBNC
	 jA5fKxdDX/NJNzxy5c6C4mn1VXHRka56zl0Keo68GH2c3o5t/ZqbwY4dIAK99Cfvq+
	 EahualvmUbi2TjkZuC+RlCp/txPKRmUQqktzSWkp3Hiy/NbpaFfG1YHNv5wYxeEuKe
	 h4Rzm57SHS+QGpmMGlBBhUxomJbZs8mQyf0f3wDZUMHwPvN8N5lchTMAENmskU2coT
	 4fzLRQxSa6gZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F54C61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822923368.32551.8994242889480497007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92a859b64d348f2c4392464db84134ee547904fac5c0f78749e96b1cfb5cb9e9
Date: Tue, 01 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788229233
