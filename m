Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E125197A77
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727117754; cv=none; b=oXMn2JjqxJYtb1dVgHRJU4uwzJglwiKMdJx/RW2gl2vEE/ntnBau9LfbE3MEswoLTqj9zLozQQzGjbiwmpxLnT+slp9mUPw60NCZzOVnaCXCuBnzCzMW3Rfr5EsPU3Nci1xV5TvN0KRIvdGnLNuyxRMdi3g+lEQK3Ik5V2++eCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727117754; c=relaxed/simple;
	bh=n5f88eYezAnnAvRduvg4bwgYs63oMByy7Nhh0frQooc=;
	h=To:Subject:From:Message-Id:Date; b=PcWizWJ8/P/MrDT0P3b5OSV8IgKyFSiCWIzx3MBaTCZTM+IgCsSWMyeUKqgMGvRbLH6kIRPrfjUh6v0lpSEzHN2f/eSvyGfRe6v/+zBmaqCZ3tbqy8qOyL8E9yJ5uXGQhq+61IZh7N9JhF7hEDxxSeQ2t1sUy/zrZ04LRWNJZQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/xUc0ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/xUc0ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6201C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727117753;
	bh=n5f88eYezAnnAvRduvg4bwgYs63oMByy7Nhh0frQooc=;
	h=To:Subject:From:Date:From;
	b=A/xUc0llCFsSCJg+T3floiQBVzg4bihKImlbEeTL3Q7++HFp5yWtaOwJV+h+kyew7
	 rnFHjc71Jom8NB6DBYeYIWFq0CDGBggNHjkTrNUPmowhUWxJ/Xc1L4nNn5nmz3QXMR
	 gHwTZlr94F9zYtgUvP2WKZQlCglDm5FIKq9NFrDjBdjsyFW85sEzwjAMob+DAa/C54
	 rCrwbPF6qKtO7Vj8/LHqHHgc/MXYduhOVHWcRc6PHsQtLql65P/icQyxkSqbqYxYhH
	 Ic2rFmR5Q/K89ErvH4PXuOMH7eYvrjJgsm6frUT0PihpRWPDErjcWLiBL+UGROB+Pr
	 AJMlSlUrI6wdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D3CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711775359.29860.366789977842518154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26319d3ca132d952a602a50afdc7610f58b5bfda7b6e3106d17dbc991be0d4bc
Date: Mon, 23 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727117753
