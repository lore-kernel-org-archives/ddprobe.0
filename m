Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64833F9D6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736159154; cv=none; b=JCZrHlxds6994UmYPTBTjAc1+fk3m254c8m7RZFQ6ZjsaFHTqiqrF+ZGdwJYvlLX/cD0XyWGK9VU7eOugMfCVfdLNqw284kBSZ2vydjbF4rUh6jjRXB6BcEHjcgZ452R6PIPJZyu6VDVR4+my2FISwFeTGL9ndWYFTmJBHfk0RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736159154; c=relaxed/simple;
	bh=APmtZijbbHs4u9ARDsxSsZgeSL9ypAD2XAIpAIl4Vyw=;
	h=To:Subject:From:Message-Id:Date; b=o2hXocf51zpZYM0uUtdr+pu/DQWzFx0xYhKlW/hyrMz7EFsaQs+Kv7gty6sr1IpNdDMcCf9ktzG6udS8ilkZpqab1/rLl2+0DFGgdjTV37962hLnmU49HoSXUOOHxOb+iXDqTXMUqDkrnY4rr9c1Y1jlx9RDX9+eb2mjIQ02HVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kk3Sngzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kk3Sngzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7596C4CEE6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736159153;
	bh=APmtZijbbHs4u9ARDsxSsZgeSL9ypAD2XAIpAIl4Vyw=;
	h=To:Subject:From:Date:From;
	b=Kk3SngzsmjPHM2fBk+2GMhaakTxlp1gtbZnOSCXVUkLmFRXpQSkeR+AlEfh9i065H
	 5kBEYgtuR+gffbcwKMY/mUVXYa+8Z6Oc0YPnYZBgp5y/VMZu1A+ZgBKmCDce4jRlCh
	 fEUPxv6rIRZ+3ArSocFb0ZTA3u1ZphRQPMNcIGpE2CLzMfqhMABKOtUwGiU0kNC5EQ
	 pv6t+AUf4aGJDHyvyL9lawy/lKREdbEnvoWQczjo1SBX+6zL4kF4RBdQ0cP4rh7/nP
	 FgBNvZEDlEx7+etTwl/T2VrhsT+cuoCKzp7NWDsTE6VBtiOHM4BJ2v7Z0Xgayl/hjK
	 cIqUE7fCZfFCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A2E77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615915359.31036.5836219591012023247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b018747bca6f882202f8d94077f6cbd26bee7252eae1ad98bb0ba91a662a9c
Date: Mon, 06 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736159153
