Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462083CF02E
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790970034; cv=none; b=K40r7Y50goLT5nq21RZl2ec7tEhBhtXfqnW/mhZFRMt63hYQDD6DG0dgfgAVy+R0mKoYP6xXI7cAylLcGnHwQts3hiJgKsSVZ9l2VhwVdagtKkCksQyLxrhYDiAurzjT9kamtIopx7aJP9jBguWtuiC6OKKczkyFZ9aoaJewA0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790970034; c=relaxed/simple;
	bh=i9Bwy6PHuueVzk7x3hoSPQaKKThuuQ22zU/vXCRtMCk=;
	h=To:Subject:From:Message-Id:Date; b=NCL15+BjZXV19Bun6WzTfE+V87MFZy14pS+XG8HWJyt3MNzaNzmYSCyAPIP06PgHMykX8E9bS9nLFqBxrL5Lh+SxZZfmSub5tIP96fMWuA49QYmqTVEt8YuXSn+BJhAdSFN7xolNCVNiaZkFY66/DOoLyjCoRvP5T3nZpb0Mx+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2CD29AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2CD29AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B87C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790970033;
	bh=i9Bwy6PHuueVzk7x3hoSPQaKKThuuQ22zU/vXCRtMCk=;
	h=To:Subject:From:Date:From;
	b=X2CD29AL77ORcxB8k8RHzgnoGBpMvRrlrrzPBAOgi96FRev+X+Q8GzqWf1uelqdri
	 s6uRKQCNQUMVy4FSQmYyQsV+Bz+ABQ5D/TjVVWpoa6Qlw+ZufcFVB0Jdb2fMmakDbC
	 eVtF/rWLMrOAgpFYpdXaLqrRXx/e5OfkmkIojaXwiDiEz3hyk2liXRx8sTtV5lx522
	 fuDiFDbFFgAYrl27kb7e5/QgzG9K5aLAdVqq1kMhWrKDRZFMPBtOHH6llMnD+C7H9i
	 ojwJGNvRZngCWcW2x/M+2TxThyx6t25G3FPn4px4lMG+ZzBxrsKohBbFeXwfEEHKIv
	 Ja62hYQYqB0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24DBCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097003371.17085.15768808329951451019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07475ac8d171a648075150e91abe4f958452cf076cd3b835e9ead793ca0e6c7
Date: Fri, 02 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790970033
