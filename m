Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D27246BCC
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750323595; cv=none; b=tGQUBuUYzp5rw81yQDq1ky9cIX2YFD248omHnxWiLK3GlvKKLUNUB8ol8UBowf0hzzCnJ5ZlNKijwA3QYbYfMriWziHHjeKhn1YZjcbrnDoFwvlfT3u7x6W2fszYZKqP6rzyMRBNN2RtKvMinUl7j2P/IU3FDGqgPPXMmjTHqb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750323595; c=relaxed/simple;
	bh=lA+OYuJvfgNLP2b7WcnU1GIXOamD8yT2EyzLnzJXXNA=;
	h=To:Subject:From:Message-Id:Date; b=d+IWZmh0N6Axmta2q2CV4OVVZ6BfDCIUjglLj4c8MOCSwheHKIid2ukwWkljdpeBM8LEj+sZN6RqLQWeqbUctowaddZ0Scvb4ctZt7u2OwlPG/uu+zQg4M5qtOCXUvBEZjKG5dlbP+xQaD1wF6u6gnA0cegB3XqH1Zx2l/VnyLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad+j11b8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad+j11b8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1897C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750323593;
	bh=lA+OYuJvfgNLP2b7WcnU1GIXOamD8yT2EyzLnzJXXNA=;
	h=To:Subject:From:Date:From;
	b=Ad+j11b8MZsSijt7SJu+ohDwzqTmPeH4pKkVZF0M/tLQaXyzDR6dADlgBocYp8CQq
	 QYuYQ7+O3hrw0wQzJPYkxybMlZclQnypX704mCx2+Hoai/6xY/gErFNiJql++fksCw
	 ErmL8qb0dcJTP76cjbQbyKCSV0QNfCRtYV9sBS2gvQAgzeI+ZVV4F9L9kU/zfxLLsW
	 rQ0OUHSGAHytGVQOUSgNSBPzwvKVYCOztVAKyJxot7TGCCWjwxPdwRRCloSuPKak0l
	 ZI10hNTGX78S6lowyY1MsjgK+lupHdjP7Bc5sNOZ7qISIOpZDawdrTMxLxqcZcSQeu
	 ez2d8VKF9NGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011DC761AE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032359358.6333.18390192703080698998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1d114f9c8bffc1bacf91c8c76d0b65bd93d76a03ace1f2dc8724e2ec2873e2
Date: Thu, 19 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750323593
