Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA7F262D0B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788064834; cv=none; b=pZ74SPNjbJkip4KzU9V2qMXnR9n4rYZwb2utd/cA87YlZG609PosMpSq6BMpJ/aQEmNGbDFJ7Qikh2XtCIyGW0pNMbuMCG8ZW465bBk7JnEMe7Np7Rops/jl3zMtqL/ckfEJsWMTbQ9kbF+qWEJT8l0Jdey6r/MipXF7VEHVHjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788064834; c=relaxed/simple;
	bh=Ufa+bbs7uvLlAznm0d9GzoaAPk0NW4nQb1R0NhRxgvE=;
	h=To:Subject:From:Message-Id:Date; b=FEhYMjALU/aPA20RPJaCBEScbF4yD3HsLhd/62uAVjzFZcvGqlL9YjfF3F8SG7I1tx16i3T8AG3nAXZIzvm8IbIGwZxJ1SmNoR1K3YyLHTn29SmcEWuXXLljOy3wwXUKWEwybwrMvGRy7AKs3s69stivHJN/yb2KyEfipM+cA48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mb61N/Hg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mb61N/Hg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4128C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788064833;
	bh=Ufa+bbs7uvLlAznm0d9GzoaAPk0NW4nQb1R0NhRxgvE=;
	h=To:Subject:From:Date:From;
	b=mb61N/HgxUTfBvYHXT32WR5r9T31VPzf2qV480QbTG1IDWLShh1lqKtVQH3y136vv
	 xZKBMTUkucnM/yM9Som3oq3MAIn5cwnv22my5yEmL/4Ud2FrwC+bSeDpw5Y4DNs7/q
	 0rnaH4tueLLT6fxQmsNNeXD0gEdwC3/qMjPMxFWB7J/HADlIqs0aauTYqPsCqE/mAm
	 DsPoJimk8gOTMOigTGw2GizdDFPQpYStEsobfczceby9vpXjXBj8n3Gj/trAQdWG6Y
	 IOia8GEfO/zGLBio+1XxpUIwRzMKwq3dnnXrEL7bXzGd7B0OOc+OR/yQbQcUzKH/b7
	 hoQKM9XMvNmBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD941C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806483368.31293.18222362265980801227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e085132b1fea262c8698aa9659d26c7cdaed5ee65c2d2dd21b9e4d06890f251
Date: Sun, 30 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788064833
