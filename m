Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107992D8796
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769727234; cv=none; b=CGhsX7eUUgHFh7aptrZa/fE37gcuOAre+i/0GGTGDYjEUcyHuZ/DNmApFuvD4vXY40EZQcEYAQmba1hTfqCJnc+VOHRHZeUGLy3SgjebEpcW73zLmD3jJOqnKnBEPsGq/XjqSmw8ySX5V0FeacwkCQr1Yq/lRMVCHbD2exyq9iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769727234; c=relaxed/simple;
	bh=mtyQgW++is8667IlWNmjRzzOw//dU5RGCYAH9qfB4Rc=;
	h=To:Subject:From:Message-Id:Date; b=lR+pMywU3nnW/l4JwINRH6pyPoPbqZiHGvSP/QZhZLzi/D9R6q3VlyZMuubB7ePYHaWzmMupPN4bvCxnpMIIxlwr/k5Zre2oI4ovDVqx6oma7uswCLTfBanvKJc4Lsg+RceH40rMjGvU0IhlJjkUAF5ZM0ERJBxYf1BqiYoDgII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+YUZenW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+YUZenW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B8EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769727233;
	bh=mtyQgW++is8667IlWNmjRzzOw//dU5RGCYAH9qfB4Rc=;
	h=To:Subject:From:Date:From;
	b=t+YUZenWi8fWMckQM5G0ZZZ83eeal7kOmkvxRaD1W89S9x9YKqSCFszm2LYUnHLZP
	 h1Id6CY0UHdsfaualYMkOGuTB4uf9AVtNd1fVASUMdBpNYoRdQj10MiBtEP+tbYz67
	 LIoknczW2LlpqC9YHraOjvRO1VabdD4GvRC/+mZMxNL2JpPPOpxQ6wMr1PMNDRANAK
	 6443NTMt7LDg3cXQFORzmQKTCdBbjIKHsJ4ZzsHy8z27y/1p+AQco8SmssH5QwmtRJ
	 US69jpxIG5PZqe8dxvv9qV2ABS423iy3RsJVfmAYfgwOORQ71Ilz/YFaEbSIyzmGG/
	 8/1dMlEcsengg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF9D73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972723358.27261.1807843074313986673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23917046b4e3c59ea679f17050ea22735e67237e0081423e6069f36c59d6982
Date: Thu, 29 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769727233
