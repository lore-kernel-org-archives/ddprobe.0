Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35717944F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751878194; cv=none; b=IzyaYplmVFNeQAOySwH+zY6w6zG0KrR/YZOB5jnri9EE5NfrIwfIOx0aTrJssA3uljbAEgBWqJ683egs8poCcOHj22k1vv8X8q7aW0kym9raL33Jod+FoRjWBYj9XlvwL6BmsSxbhFN2KNb0+uD3NIdi1L6IcakH8xCj2SHMGGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751878194; c=relaxed/simple;
	bh=KCsUVq0Nqa+Zm4BuWThAantS/dX2/QUMGOtrLFpG/Tw=;
	h=To:Subject:From:Message-Id:Date; b=exn3rS7JJiEAnLCy7hZzimLlZWPiRPy6Lb5ygwGUNKJDrs0qd4UBqgBzLJqLjNYwyx8ER9HQ5iSd+UeB4cEK9Zr1IqOixA8GFwEectIj8nNjuq6Dv8zufFQkVTjxWQlVzKuo5zdlTEtqLdxnSe5UNfg6Pn6HV2NiFn00cm0xOVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doQ+Yucv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doQ+Yucv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C872C4CEF6
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751878193;
	bh=KCsUVq0Nqa+Zm4BuWThAantS/dX2/QUMGOtrLFpG/Tw=;
	h=To:Subject:From:Date:From;
	b=doQ+YucvFtbD7dfJafWzsiJiE5mzcDTGBpMJ9LXNrEBLL6qmXJEdnaGJWW/w7M6vK
	 hDpZfVs4IXwxMlAmaso14tlea9VNC/SsG1ztZ5nFxE/BHt9JF2a4gE64qktOhuokhS
	 S8arwtPyjSlk8s5FA365jO8ZhiHvYgwOB35hv5p6d5BTkEVU0h2RytPoenMS78iTGm
	 pBv4a91A4jpYAIXkM+1//JaZ6ZyLosaDrm+U/bsfrlgXtTCb3Fz0ep+dWVZuxd7YUG
	 Auyd60gUPE4IbhDEU5oeIVYrDMaFtZEnEFl6izZjcTAx+Q7qoU2HpocDDFPeu6LJZ/
	 HylSZcu7te9Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E102C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187819357.23907.10488904433498357294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fecb9996ae072856a227d41a1613e7d60d5dda83252f5fdc5b7a6f39884436
Date: Mon, 07 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751878193
