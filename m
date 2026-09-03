Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C9C43C076
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788423634; cv=none; b=U1sC9fc9mYHDEOtPN5FFSbv/x+cfpiCF+eYhRCY3xs8k9QKJiSeIPz6oWaBfaATfVuPaY3K4lJhVOuWXVtbBNkJe8cD9uIu8I3Ks53sHZfTjquXEjzhGcKCF4AyhKXMclJoocFRd5GFv1rdXc8woYMiQ/gi7tY36I3zsh+PFI4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788423634; c=relaxed/simple;
	bh=hCXVmHkwdtXEezFFjnYgc/eHJUXjCpMuaQKMYbVpuHU=;
	h=To:Subject:From:Message-Id:Date; b=TvpLMd8FR8LLaDvCr3+r5UYZ+0YLz+HuIJCSUm5ehENz6W75f7Wmjn4uFrK1Nc1CtX8XU/meRGD10uruwnmSK8uRe2kSJCVtv99krN6tAIIt5vkmMBl5ji3VlXUfq5KcVDGV0RPOUfPqf5BGEhCA2r39c3/i05QlFm6vFom6Lxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbYyjq/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbYyjq/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0083C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788423633;
	bh=hCXVmHkwdtXEezFFjnYgc/eHJUXjCpMuaQKMYbVpuHU=;
	h=To:Subject:From:Date:From;
	b=XbYyjq/CjaMQT+Behyc6anCzUAdqGe3xQ2gQFEw2BXEbhLfdyLXdDHeU9pUMDfa4q
	 glP2wJ9JpdivirMZOu3KNm/B/mNtMH2DpFmPv2hR1EfxJz8ZN+nncXm2tFQluwtZQD
	 q9wzZ28xrniJIkemTAb02UOF+UAekXmGvG5+vIiIta1mnPMeIPEFpZkRo/Q1O93LIl
	 kSGnpvcjzEj2iSQUccUc8Cv2KqLrudcGisAsVdYKQj4q5eBj/gp2tSXE0C68iFqntj
	 pRtCH50ZZd8Q8jODF/rzMu24A8zp8tgSoPfFDtzUp4SkWU852cLiexWtgoK47XrzZm
	 HEZIhu1VTmoIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7FAC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842363369.11396.17264808391690076799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55b4ba178c0d53b1e67076baed8c4dc60e1e48dbc2902c84175cef597af7aaa
Date: Thu, 03 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788423633
