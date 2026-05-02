Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3F735972
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777716454; cv=none; b=eo9aJ8fC7MqC0vcQ8THdyZKLCQ1aI4hXk6TSwu0xjfbn2/XMlURbpV6Wh5gvmTyGJGP1TQc/Oa+ia16lwhh0jAZa9mi5N8VXG5cuDwBmw2+oPoZKXYyIKv/iLBsS/j4ZNnCOVhzGnYopoHgG+dgUKqvfnpaMFVL+GaAroyhgDU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777716454; c=relaxed/simple;
	bh=+05dX9akh3pXCBW5OpowxJax7vd7eguPHwpaomBcLM0=;
	h=To:Subject:From:Message-Id:Date; b=syJMhqf2ql82leUq2i14R9YXu+43sc6HEFlHgMOTnXQeGRIc1EW4cF2IsgJkP0c0g7EYCQrzpjKVfJvlyQbiY6Zmj3EO+H8XTnoyT+tZuCD3uu4sPJQlkVyw3h+rrzlgftwiQ1tx+Z18TvPiH4pJIZ2LwpO05YmhFDISPb5Vxgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXyqUSCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXyqUSCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFFFC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777716453;
	bh=+05dX9akh3pXCBW5OpowxJax7vd7eguPHwpaomBcLM0=;
	h=To:Subject:From:Date:From;
	b=iXyqUSCNzpJ7tNQkM3kCe9sfSRwTYMYEHY+3jOWIbTuhOFL4UDtgfyfs2riUyqBbT
	 zGA1Yy66rVDJI74J5EXwy48zB8wQic0xbSs3Pddg6w3oDlpzGaN9DU4/NxxxlShjL/
	 dZzbOgn1QOuxgcdiCugOVt/V1t0LyuS2XUJigUl2pYgQqYC8pYC3BFxSDiffqxnIJM
	 FewDjzE6w2VYUM6f3qmrhYY1eGr5YUk2jeld8FTnVmYCeNguqd1qSRdG8GoVyrkW2S
	 Re7G5wTVtYqkLTnCl6GSbMnPXvLWeuCpdniHcPmPEUjjm4GylkkBtbFQ064DExIOX0
	 YyQGD55qQtfrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC53CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771645368.19089.18144407940690650117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb0849e48626ee02060faf23ff07fb403f9ced75c45c2d87cab54bef6f1b463
Date: Sat, 02 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777716453
