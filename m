Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493A91AC44D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767476634; cv=none; b=ArSIlxVlATI9i7G+lw7lDT+DvChqnNvWuwaLJJgiEF02VRyHmb9rHosPAdKW7RbPM4P/kjtpWthAt8ofuJqlJs4aHM1RiQRcW5BYnb+if2jUCff6gmqJ8xGYMEuSCQANx3uRhnYQm9H39B2wAinyOXjNAAXlRpjC7vFfVqA1qzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767476634; c=relaxed/simple;
	bh=OiSw/O0e7yimLv9e9LF51e5BQgBqal0QMEEzZG1wklg=;
	h=To:Subject:From:Message-Id:Date; b=mT1C4AhGBDrCQdRO2hP2RBgrdWtFrLF7a7/Ccsr4EMjYZdQYAOaJzGOXQIf1q9889bObcWJsrT9b+XIaWRM8lfQR0KrILSLUBZ2L23Z56YG4j1lPmgJFQfQjJNMFku9xIh6lWxYE1RRbezPCgZ3WgHp8SAKdBJeGVdM4Eq61B2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxdyVaMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxdyVaMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2C5C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767476633;
	bh=OiSw/O0e7yimLv9e9LF51e5BQgBqal0QMEEzZG1wklg=;
	h=To:Subject:From:Date:From;
	b=TxdyVaMtSoPyhldlhQAAMOCjYBb8HgdvB/CibcEb6q56a++pvvI64GxlTHvi2lbmb
	 Er/Nsfd6w8GB+u3aj0gyngPhXwK1QNmNE8K+c+scZiq55q4Nz13xmuiEiVHgeE8CIB
	 Mqt1Auq6KzMbp49aNO49V8UXB2bj71iv5M+8kKxVf68VN/wJ/W9lYDamrvkChWSZ62
	 uu54RPF+MAuOoUs22GmfYDfcTXUkmm0gld2M2DfkPer0ZJFtnGCMwWvF0s9uqIK+0g
	 V8mlA+2t0b2hF4MdA2YWP1EyqV7ZbtH+WQpCGx+f0N1LC7xknmdxn75m5yd68lCjuH
	 2bzcZTNRVHjWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FAAFC619A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747663359.22033.14507677295289209046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0292e8c5179fe9e795ea9a296d8a6339c02e50a143385ca263d1edf963b076ae
Date: Sat, 03 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767476633
