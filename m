Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163622D6E72
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769641434; cv=none; b=PJZQB0VeJPEiZCG2Wgcs/hUg0PHj1cx1TsOTBpYtObfNpf4JedwimKObeibU6JKskBYyD7C1ASisMLl73wZiuQWt2rSCg5QL9TV8rTW9TlCsyNIwGRso5WZ6mc5Ege+A9paiRVoCAM10TbuCFklkXZISBhTEb04uMRMOcnhMqYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769641434; c=relaxed/simple;
	bh=ZjG2JAY6UtJWhqOtNJaj8+nfc8tbEBSS+WCpSBKdqSE=;
	h=To:Subject:From:Message-Id:Date; b=E/SwU/D0j3vnXbJTI44F04oTAKVl6NJzkzoFuclzqtzCwYRcql4RVlUrxZwP/nCwoKzkoUf5764f6v99ulz9eC1bERGKs3+/ziwJ9Lh4YUM/i+SDsti2EWr6Qpf1YButFCMdzAMLS1LVY7eXqf/KvHhSdXqnFd3y6d0tMAzovGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/WD7z2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/WD7z2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3761C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769641433;
	bh=ZjG2JAY6UtJWhqOtNJaj8+nfc8tbEBSS+WCpSBKdqSE=;
	h=To:Subject:From:Date:From;
	b=p/WD7z2yQYpbarJ1iS8WBsADYccHrZ1m2rbS/eM0rcemt+Utuq+Epqkflj6dEZ93B
	 jVjjqNambiIcMMBtIvnzPNtiyq1XjQZx52ejO8/XFtu/gpA32H35Ix0XO9ZkF8sRZt
	 vxN/4VnClsYqVn7mHQvyU84JXXsnuLxaI19nRT6UJ1OCa9mxDC/hajDT2LqB7s8u1W
	 gzHC5trJrTcBDJXIpC0gLP5L1iVzQhocQE9IF6ye2MRoa5dn19K5XtNOoYPGROn4ST
	 o+weSUVK+WoREmvtIHmN5mLjobXwqnIrFzcDjLFqO1gs8rbCc/ySWnvlE6Z167V6ed
	 WAV1+M2Zu/9TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5AD46C15
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176964143358.5518.12531071727590477291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab56dd44537cb735ceb0fdae7da35a5aa84245a6f70d4715ee80b8f962f2f84
Date: Wed, 28 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769641433
