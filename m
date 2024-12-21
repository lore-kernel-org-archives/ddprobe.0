Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330611339A4
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734761754; cv=none; b=m3Zn1tDAKaBjOXaRv1NT0yJ/m2tAlX648UCYnuJobs3iE1kSb2JB6u+OFYh1uNrz2MY8ZkbJQuQT67FklmpL45kyLgrCHHkAoyQUFx7M0YGKOakv/ir+QkpBQzJmMf4+lbCfhE11joCzVYwcMsZvD8JB5Zo2p4+vjZ2+8wnz/Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734761754; c=relaxed/simple;
	bh=O7v1PJkdORlLWCdQpn5t1dQfia4QfsL0Iu6d9QdJAhI=;
	h=To:Subject:From:Message-Id:Date; b=GjiV1fZ35l3j8D22EW1tqYnzOmg4WBmeScf9i75B9ualNYCqVT12RC6XWR92OZipIVEuORAHyaZjnJLJAolBwHH01vqPAdWJUajUhG5yyR3SPSxVf++TOsn5HeT2RAT7TqIIef9/CZOq1s38RAzAkBZtY1xhkzkoNofLJh3VC4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kab4VUs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kab4VUs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A49C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734761753;
	bh=O7v1PJkdORlLWCdQpn5t1dQfia4QfsL0Iu6d9QdJAhI=;
	h=To:Subject:From:Date:From;
	b=kab4VUs2JVp9sMEsTzCLCJvWcdyrTo22VNbQOXznwmzR/2b4MNMp3nM/UBeW70KVy
	 lIJK+iXXOsNNFJK1fN7ETXAw3lBQnTDFNlD2tdN4a1T1Fqx1NQryJxQl2gqxZW0EJ2
	 sfBbljcxqdA0ehkirbozBCtML1YhxtZKcO+m15gpdtFMkokmL6p6fvHPt1TiHgvO4G
	 3FK5ky5zQQyBwwOzMHnrcF48lniAhuWWqhZMZ90+RUPkCm5Gey3uWrUv0ufOHHbZW+
	 f1U3gxmdeTxP0666LCAUxf/qvzqy+T2r3s96QiNc2BWCZQD7UVQAHHgU03h5VzKKEn
	 5fOXAl8/H9QEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC99E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476175361.25359.15606035607971007475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93eb6def5a2c045abff18a0a125798ba49fd31b2befae07a340679e2d8df6e5
Date: Sat, 21 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734761753
