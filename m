Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B572874E0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757702994; cv=none; b=NvHc+sOcj9Tgx5y8BstIiSGvQEqOhowbpe/5eifrM6l3l7+5yFlGiBZdzsNHRgFC4zoFmEh039CjstVaNTQsCTGzg1AeU67Xjo5b+bVpG+gkYTg88KZc67ScauBOAcmLbsTBpovSF3dMcbFH2aj4+h9EsPWFmTrDceh0ZpU1CL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757702994; c=relaxed/simple;
	bh=6yqJCxPikkFo73pTFFji1IV8rESCS6bey7/RSmmTODE=;
	h=To:Subject:From:Message-Id:Date; b=KRqkFQY+8kfmd2/DHuLj7/4dvKTtkRJAFp1qYVJaWKfZtrrAUSFU6FcHLi5vQC3GZ/UOFW/Fr5UPjWjn8V8LxBLsebvozbEPqWhRAik0YeIOk+rULi3xvUx9nUc7tPV1iKz3WNFC0yM+OMHzE2sayWSiW6UEkW+pFoRXr1f/5g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dw8BzKhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dw8BzKhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58E2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757702993;
	bh=6yqJCxPikkFo73pTFFji1IV8rESCS6bey7/RSmmTODE=;
	h=To:Subject:From:Date:From;
	b=dw8BzKhPJO6H57HGUjtlIejnSXD58bBYjGW2zBibA9hY493mbVqKnhkvod8Kkk+ko
	 5WbNfDGfFTX15WH3v721gbQ5tKl4ZH40w1dOQN1sK3olyEW333jsFrV5AVBlA1R4rh
	 lVdQCET9Zcop3T530/r+XSTqr+mzl0Zihgm3JHrgCfe6V+tmb3aEiSy/cBMHc/R2A/
	 xnTbkVJwoS2uUMJD+aJut1b+B02F+6Bdnfeh7QvOEcB8N3bduen5fAAwnH8FZRkHBv
	 /bTxaxEf1zopk1ehucdA1o8lXeRJ9tX+KH5URkGl0Fm4nufTZ/dDkjDrK2KZvJMcdI
	 CCYyQU0USwHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9310CCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770299358.10373.1000086045126434296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239f97a2d32b7bbebcba73284c9c5931c416c183ae6dfba1e80be326d14fb0a7
Date: Fri, 12 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757702993
