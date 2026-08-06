Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C893A1D14
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786044034; cv=none; b=jOC7ZxG0Dxij+/c+z3LiWEEj2JCy/x6FptdwHkt2ouuxQny7rmP8q09eNmHFGkl+ysp1EtszcTitWm6PC0Wt0AAGnO6aproIoqh/6n4ogNcM+xhwXJWhIpN60D9cC/p4wMYnYKVqiR9dltsSh2TzJdBZCwwopHFqG0QOP/wkPFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786044034; c=relaxed/simple;
	bh=pcTOO/2ThhHUfYF0CCQLSgiDGMkhmApb9q50MjvMTi4=;
	h=To:Subject:From:Message-Id:Date; b=RsEPv3bNGih5hTQEAqTtPbUa8Y1pqPMY8Q9SHbn2fhn2PrRPBrmG2xoy53HDmdqpHQeQqeOoQXpoxiEWkLGE6Iaprva2+Biaevsw2/W9Ap5xghSX1dGbNzjwcddWFr+jepb76L5M3uD29Vq+Gl4FCi45DQUADIo/iIEj1rvuI5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQYkptL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQYkptL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0580C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786044033;
	bh=pcTOO/2ThhHUfYF0CCQLSgiDGMkhmApb9q50MjvMTi4=;
	h=To:Subject:From:Date:From;
	b=QQYkptL+lOMQ0LefzFRNC0Y23VrHOjP32qXaS12dw0WorWqfF2t06EIHy3fQLFzsZ
	 JtMs2ZYe6uNAr9J1mgFeEXI4Ce3SQ+6uRAvV+F9hHJUzRnmGUuqBblTmFoNgrMA/De
	 EgN/BKom3MEnhpkP7ti+vp2c2zBpU5LRpkuCHb0wbrhSAh/t1Zpk2mTYCarwIZj4B/
	 v8bXaVMJ0yHXvNi/V4EZZTazCIOAOU67CxgiAVs+x7UGmTuLPeN6jrvIWly6MtPggw
	 psdj/0rUfaAWdMeC3w+BUadStc8jGm3S5KaQMKTbaz4utN/elg2gRj8SpsKdQ+Jqxw
	 c1xfaBqOi6wkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B9C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604403369.12701.16597208522790813110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b2ed7c5552d18b40da4aa6c9be4b73f1791f790ef5ea06599da0cd63d93139
Date: Thu, 06 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786044033
