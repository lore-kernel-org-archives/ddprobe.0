Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C19424D48
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788778834; cv=none; b=RT0mvtWXRneDMieTBzqeVJmHjsxc5Gd0Kh/AkvAL6uYSVzZthszJDuh4D4xLcpoR6rPMEKkeqKRbjZdufoiwyNHteNmnf3WmPNmvTeuFOyD8TzaK5deth3k8yMkk9fzUhS/sr5JLjfMIXHZjxzdF+czm3gjkVAu1XmdOPAsKTcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788778834; c=relaxed/simple;
	bh=GmIwweU3MviGr9H5qfZtVAym7DfQH+1/CL9G2iVuTcQ=;
	h=To:Subject:From:Message-Id:Date; b=iXf0V5zZWiCF+AYip+eTmZ75ZkBdc/+LRns37hudFHzCbfkY8F59jORYePtCWCp3+XK5tIPjtpZ3JwT4nZ6SktILfnZkQ3Izx9XV8RtL2PwmpHwzytomJkWooGSyuRivOSxXDnGZl9oq1yDfBOCoDV5+t79XyMfv1GauiHUhL9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRLxaL+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRLxaL+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA40BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788778833;
	bh=GmIwweU3MviGr9H5qfZtVAym7DfQH+1/CL9G2iVuTcQ=;
	h=To:Subject:From:Date:From;
	b=eRLxaL+fiu6s+yXKbn4uEFb80hx2SMTfof7mb6EMmbB6jdEjmVf18+DEY98sj4rn8
	 6Wn0XdcZN4xoFt/KvjMFzyH7q4YThulsVGZxO0fc+YHDiYJ8lMUOGqKnwxUtZQlNd1
	 JFSwZYkq14AonaPutZSDenWr8vETLE3U6ZRMs4OzseGhFEjOfWZVz2SS+qTsG+/jfx
	 36Iptm5yyfjP4dJirzXW2dvY8D+xaph+OFMLeU6rRwxBE8NmcIVvX8zdJevMMES6Lu
	 xBZJDKCJKqq7yxXvadBauegBZ1bzbZgKLDY7T8QT0GYpBsBS4z7MExT7vCgJFVrf3o
	 hLldP1Jqdq2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B582AC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877883373.10081.2687448300265519627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4f469b07cdc70fefcc78bbce16a84b8a8faf6f2a523e697e1633be9fefc63dc
Date: Mon, 07 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788778833
