Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE7321E0A2
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747868994; cv=none; b=dzSrhXj5ZY2GQ0W1esgBWIk4adRox7UdsdKHMoTyYmoTBt2R7hm2CKkZWbuPOevex3Xxr0FrA1GHR3VumY5KV9zoBKAcbTDpt+uLCnThF6GCeWFo6NGU497qMhyIKRzM7yjU+licBvewEYZbpkSKcVm2EqrHZq24Mj7MtfVqLnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747868994; c=relaxed/simple;
	bh=Olu6prpIodtQyWPDY41fQuC3I+j5JPEWYp1MuEdIZL0=;
	h=To:Subject:From:Message-Id:Date; b=ihlxt1KUQWDL5k/dfbdnPksw4Kt4/rJXMgXWZ6ywjBataU0KC/DkdUUyMun8YJuAFQXj+kAGhsmNDOgaphnjTJzeFKG0jKN5nlgxk2fiHJNCN2ZLJMCSrxMkJFZ2fqk6REmaF92jX1Nb9KLvb83DprcImehqP6FQIzaSx/2mSjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWe7ZcsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWe7ZcsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3000C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747868993;
	bh=Olu6prpIodtQyWPDY41fQuC3I+j5JPEWYp1MuEdIZL0=;
	h=To:Subject:From:Date:From;
	b=GWe7ZcsYYbD6GflI8RZf9ZOVL09Mpf8r37ylmwvHkjq91Q/pBgHRZ+QiKGqvFKh75
	 CXiEKvA/rmNoiTB/ySuFTdgbf6Gkag6AVWIrf40F90IZdy1jWLmSGIzDftvnA2VV1x
	 Z9+IFZAgYPMkNy7xsFI8fjGXhdLx2LFHbsC8q14JHMVLLtZLqE5Hn+pFEgxkABr6lR
	 SYUTN4ow8lqZVtKcpFCBE4WG2Ob/9DNk3kmj8NOq4h/8ZEbZwnRNiNg9eG+T4Nvpap
	 TYYmbKnJyvJywY0CJ5Pag4Xdtr0xrMDyQd5lVHIHNhfc+zIVuar0q1WPZQiYPcaGLV
	 1ca4UwlAU9m2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED11C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786899357.31391.6734405970380547769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cd8d8729a2aa6bb32920777d3fa913dae0ba68721a2cfe4a6ce43f0e0661b1
Date: Wed, 21 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747868993
