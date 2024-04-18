Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B3B3A1B6
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713410963; cv=none; b=PvcElv5p6WQ4QU9jmQYDLqH7nhjjpXnNmRHVCq6Evp9MWi/QjMwe/nMHjK1IcdImDg4gURht0go7+Imxm5rZd0/Vc1zKr+miwRWaSz6m+b+SOSeV6mGnWnjiI+j1MQTBEy0R+oKn/l/KWb9yVO6B/rE+9xrQ50SgMznca66JSqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713410963; c=relaxed/simple;
	bh=uBx+m8pqe+je2O/wF3Jtjdl1gU07lLXUWpGcnXgm54w=;
	h=To:Subject:From:Message-Id:Date; b=VzuHsSmdlNAC8o1QPWg9+l6Cuyw8CGBeslKQZP4JxdrM1isFdZFlfwzLbt70+06eAZmrI30Ics2ydFGwfo77XfBvo3x9oSoG2plMJB58pRlgDi3Sy/iC14AD1mNRDzNO3lwacXyUyIjIEw3OJ9IvP8ZgI6WeQdvzTE5omJAhGhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5OQDcpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5OQDcpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E80CEC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713410962;
	bh=uBx+m8pqe+je2O/wF3Jtjdl1gU07lLXUWpGcnXgm54w=;
	h=To:Subject:From:Date:From;
	b=I5OQDcpeFiV4Wj6g+e9Qo3dykOPfkrh1g3IhdWWSeaqhXJ2VCsLqDN4GXrxs5avuR
	 D+NLPC/7wE1dQv+npW5NnvUuBk0Gb5GtxR+6M/Ce3NH1npbxcNFDzFGxA4/o8fc6Yo
	 fGLWPFWaYeiiHJfxSkbpClJQ81UhFhbKfp5jGc8UVtYsON8UGb+iSgSV+TWm4amVc/
	 P0z8ZZpOz8JrwSxnNVfbKn+jgJy6t88fMYzATlQFvq5QPV39qyCYw2/jYEjmrax4CN
	 +XBTOFyXd+cjT+S/GprAjilmiSqLbSWMD6GNx1630Na8P8sOZns5vsIAzkFtdQxr0+
	 KSVhlqKFeUQAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEA60C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341096281.3108.9435376124738805008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1947229b6951281addb6f5968b68a09e3420f3d56509018a6b7f3a403ad4e105
Date: Thu, 18 Apr 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713410962
