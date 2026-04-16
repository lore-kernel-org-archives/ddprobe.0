Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234F92727FD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776311854; cv=none; b=q87GVJNuvUkmL/546sANlW2y/5EwlUrH+/DI3jbGPxq540/jtttJdnf4zUSMrHQai1ebVxZmIYtkLXPo24zqc5NmJes4TYaP4myqQ3p/lhjtB14oMRUJdgK9dDBqXGWMv40rxKHnENSyyOZ5bAL/XXfEtdPwtilrw4/ZbQpKdhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776311854; c=relaxed/simple;
	bh=NaJ4kMEPsxwDVEcCpvQBdj0d3q2zqnJXN4qf0iPZQKY=;
	h=To:Subject:From:Message-Id:Date; b=lj29+g3LTgrb5EF4o7MckErzcJPDtPQYKPnE0gGsKL22K41W3p+WqliNUQqR4FqPhiyOotGeOywK+rouBc4Zdata2QYuWSWPgY4g8pe2RqonHDscS22iFEvfLr7Gij4hrJrpbiBo6MijgM26co0yz9hxRBmZws11vwYMCk+eTjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kSHTze/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kSHTze/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD2EBC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776311853;
	bh=NaJ4kMEPsxwDVEcCpvQBdj0d3q2zqnJXN4qf0iPZQKY=;
	h=To:Subject:From:Date:From;
	b=kSHTze/d//sXNUu9pNn6ZvXfPNgehOBTrzO/1AuvFxGZaYKLP7CQeoGT073rluzgv
	 4AHQbGLLZFw6EiIZKaCqdoUV+N6toecp0NrOT/hevxOvrvYX6VfmF4MzSDwKH+R3Sl
	 HTK0/D8BB7y0SsOZUxwZt+XpNFBI9n8k5CuIV+fPUmwLCZpfs2de7eM5pB9U+ph++f
	 2/KnJq3Wz8Jq81vSAdbqb3Zr1bm2Y4FSN5YltabVXFseU7zAc2qYNHDEXaxLxaJk9B
	 1ca1LtBF8grGfGeFUfjCis6bUKRCSEiECXhNhcVejO6cjpJiF5WBhh3F+bUMDsmcpx
	 NWtg7Vrh7QJ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B4F433E1
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631185370.7716.5525667671873414705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4810050c2b7d9cc0bd8d1f3e89f1be22f1e56d2c82d316d8bea35090241e827
Date: Thu, 16 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776311853
