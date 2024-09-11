Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C8F1EB46
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726018554; cv=none; b=IRoAsgkYHBOUhLifoxKlaSx0SF7aQPsRLct+t6bRnQOIjGrcqC6nPHFZiVImu6D0m2BWmPIrkpLJYqbaE9CkcD0/i03HN4h+xdRMpEgQDip2aDAOtuwmI0foLghZ0wt16DB6ac71hmbktLTr88rtHm+3DIK8AjGsBdVjRsgEHEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726018554; c=relaxed/simple;
	bh=hytbli4Ncw+SOpfOJXcxcWOhIf1xBSh/UyIDuG7L4Aw=;
	h=To:Subject:From:Message-Id:Date; b=dSTi5wIHnLY4f3Xu9RWmucmC2s2TgosLMpQctBtp4mPz05GXWtzTJeu0Ic/UlcgGqKhtgU5S2kD0L1TVLVl1M9QwyAvoFGhkgfbsPQ+dIOG6xMTXR8Rc4Fdq7A7E0iCNOptERJ0DgNVqaCB6J2Jflw76ruCa2n39uj2S9FRH85s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1xjYhSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1xjYhSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D27C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726018553;
	bh=hytbli4Ncw+SOpfOJXcxcWOhIf1xBSh/UyIDuG7L4Aw=;
	h=To:Subject:From:Date:From;
	b=b1xjYhSwEMHLq+xW+koeZ1Z3a4qtUCvhmpVc1dbZZ+8KSnH++E1KR770afQTUzA7G
	 0hN+Sv2jZ4MbUAr+3pnD4yxvRp0o90f143nIaNJfOXbVLRXdM+i4GCvypPK1bJ7cmG
	 YkqTLpCjB/HMQg/ownsFsidKKOAUmmFJY4dg3dqzQFrRa31YRousvugh4MuLmg8GOb
	 Y3UlJINLcgE05sHlHE6hFSEtnCOQfT8JZQOZTTs0uE3hhjsXPoBQ8HtsnkaGl97KxI
	 9qzKBU86W5pzowGvwXfSFEz+qUuUBURFhwguvURfrfOMX3OI8WNUz2ckFRpWRJAAp5
	 Zi6seXtkBhAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94937EE01FB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601855358.7181.10979944378746975179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6c61f05f56c6607163bc6ac2d8449b47cbcacb3b6a6e6ea25a5cdb4bfbd695
Date: Wed, 11 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726018553
