Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B46C1487F6
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712936963; cv=none; b=FljLKFegW/rdv+MgAY6pxdZ5fGvijBH8AgcIo7qJY5SMZW74vKUJd2t5o27H10pG2eD+rIDw1so8903rtYTz/B7/vPEUQSjTGtZRjrSZMGmisZ9Gd/+RjSLoodfH56P/SYLcEIOeSTx0YAINc/Di5dZYoN3jEGuIbRStbiS2j44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712936963; c=relaxed/simple;
	bh=HyU2yWYuIQ3yVujIvP40gZp3uv3Knf6iW2Rus+rwpg8=;
	h=To:Subject:From:Message-Id:Date; b=TPJyvlm21Q2F95LRvhfxVn4MB2rsx0N6bOi2eQrfGIUDm7NG0dpHj3iLA5RGudywBofTSI10wDHTsvuciAdcPUza5nCfxe0Mz/DBkoQqejUA69iesIxnKlJKQROD5bG7FvAF9YwD9vJNchsITeqhylDGa4wn5Zs1cteRGuQy4zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI2mrQg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI2mrQg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE54FC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712936962;
	bh=HyU2yWYuIQ3yVujIvP40gZp3uv3Knf6iW2Rus+rwpg8=;
	h=To:Subject:From:Date:From;
	b=RI2mrQg8kBJrsucdnQ16FooYFiVuUMZjNdGkAeFoGQVW4JFwf09lr5XD5O01IkYam
	 pKJ+oXrsKFczEsGHMfjyNtzJkL9ahzOKm0QuH4KNiWNLgU19+r0E2tXFBCMdoxHJJR
	 bR9u9B2QwcZhNBHDLa75QasEyPsBKCQSim5Xhpm6ptb6nA6OHWvy6v1ob09DHEepWR
	 l9vYOfG+tLMVrSvJawmnOnDgb9gFBFG3Xyy1jyNjGfHiBuO8QxcuB264wVccfr4p8/
	 XfPIlNe2h94vsRHzx70mS3UfBEajMQI0Ymg+u4LhIy1P9FOQX/mzwB6F6B4E8B6IPb
	 6IAnoq4FPWhrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB96CC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171293696276.26431.16094747716542157919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d54ac7c7c848efc927c75a9993ae04466fa8c5ecaaa0c7151dd8839bc7e9c1
Date: Fri, 12 Apr 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712936962
