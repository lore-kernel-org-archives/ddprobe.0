Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1BC43ACB
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725701154; cv=none; b=BNQTxzwSH/jUoSJCIYMsYfMCgjpEU+EMVa5FAGnJArtMykg7f9krXvXlSOIh2XwGJuVp+KKD12uedOj9JfV7fNZU1AMNkGznE8CmPlkiorhW4vjCgZkk4SmNIq6Eb0y7Ie/Oolsvu/YNgwGu3oYKraSbEHKTyhUS3Iu5vUaagog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725701154; c=relaxed/simple;
	bh=aE/avLxIw5XRv549VsRPIKNlDDzbt3SyFbmOO+QTfng=;
	h=To:Subject:From:Message-Id:Date; b=Ltzt2+ZsrmOaoidDGQunel1FPXb4cShWO8NY9y2M9SX7qdKg3ZGJsRdr8KWvkF9AjOLyE4xEYPCA7cpwqrQ14Ijvs9m4iNaR2k1Z0mcipKsz3JZHLa7WX3EvKM44L7YoC4sVkWopa/la35cXpH80VMER/bUZfN3ndSQCrTb8j2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LstMvGD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LstMvGD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0778C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725701153;
	bh=aE/avLxIw5XRv549VsRPIKNlDDzbt3SyFbmOO+QTfng=;
	h=To:Subject:From:Date:From;
	b=LstMvGD5GtNJEkW90fyJ8ncBxNnk26PjI/fnAPGRpIVXaF3eQytoMB2hp+v0N33RV
	 FHZlXV56UBmFAE6NGMt5VMsZzkaezRtIBF3ZgpJJnVkj2Jfe652j8GrKRafDKdR/QY
	 3bUyWMX5fBxOV5pVVxxRUiIX1teCFncil8XUclN9Z6ko21ycJhrXKkwmQZcAJkMKbU
	 qb3Xxe4/4cDTPCH068rq6WK13DYGo/sIaL3heLpzgQ8yPk4wwAsSMnA9H4KDItD6Rh
	 rD8w4thKnlmrvouKKk2EAwyE2wq+LwKYX4xKVk6j48Wi9MzMXNFGkgVNYxPOzfjZ7A
	 eARxA1I0aNnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C4E6FE55
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172570115360.4315.11224832555738313256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 228c768b31576ff9570b9d5d305504e2c677bf6b2472629f5101349ad097e808
Date: Sat, 07 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725701153
