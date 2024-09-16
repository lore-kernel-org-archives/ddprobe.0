Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA141CF83
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726480555; cv=none; b=sYpQZ3EqAx1MLzQQCx0nGDnoUGs0qa2ZkKMtH1EmgMqtLaBov9/8ORRoSnAL9L3nOH25vN6fiTsvdDpAbcQBryk59xaHv7bAr1PfqmeRxJ+Pbp+3blr2KDJ+gj85n64dTFwUq3kmgfWwCwdDoOOItXH9vZx/HpCFhp0+ro1dozg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726480555; c=relaxed/simple;
	bh=DWb3tG12UOroaXX8sk+DMxpXaigphxzOxvrAB83GSUs=;
	h=To:Subject:From:Message-Id:Date; b=kICYuBz14CUPaTua8uhmDwr95vcy+HUeB22tCqacFZmwAKXPX1E4166hhF4bd+hrU5aPjSs6SAXzwM/BIJd7koNlOe4NY6c5XmVLt3jlRMrM4hQ+RR0dNOm3d4s6WrC3o/ze1NLSpIA+ykrbcX8NjjgHPrz54+WssEfk2Zoijsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/2gKGAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/2gKGAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA4C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726480554;
	bh=DWb3tG12UOroaXX8sk+DMxpXaigphxzOxvrAB83GSUs=;
	h=To:Subject:From:Date:From;
	b=d/2gKGAGaidQRG/nRIj3FMzpLLUP4FLFkOiK9wUYw6emRYWlz4nI1mO1Fseb7ccVI
	 bdh+VA6emb7xVO0mkbQKh21CyacnMscrm16FmG88r/mxWniFxvggbxaFrAoVYwSbIJ
	 ll6GiB9INjv8Qe6RfkDspAmxNNkTplq9BP0bCSNSYAQPqVnSiTfxGR1EDO5etSgy6l
	 gY04+NMs+q6UNehKUs5DM60sUvx9JJ8ltiHOZtj7gx0XvqKXVEvvJJCI6k8homvyqc
	 JqtxnvRTt2iaIIGR2zfM8oLVGXQ4ls+GjIxZ73noy267gk8kvJi47qlM0lviA7xYFP
	 qU7tGE+iPJoJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95185C3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648055360.23973.18055415838427686101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2a2c3213cf9c524d6abc4e0119d371ce04e1fb5bc894c660df349724496081
Date: Mon, 16 Sep 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726480553
