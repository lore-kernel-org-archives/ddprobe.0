Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C98144377
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714149143; cv=none; b=NqyZ02FdobCUeG7A5eBIIaixRptUSqNNwpw8BCzlp7k5xfl19K6RK62zNFB7DvSxRWGi2D5eqXMZTAWQSvwN0GREmP6h/WhZxnn2+E7ZexqM1VbRM5BZukQAxt0CQ9AcGMrOKo9RRAs1YZKzAR/U2V6syNn6GW4Q++CFUaPkc5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714149143; c=relaxed/simple;
	bh=5hpfBcKMo9dW9RnXW9ybBeAhf39qvQCmHXpn3ceCFRM=;
	h=To:Subject:From:Message-Id:Date; b=RAH+3YD91weu+lcK9SzpDk5a22e7YGM+GCaAhdGNMAQnWBp+Qhajw1EOihXejm74yLGTuuPWcUsXKpdiog0ne9bGNUGs6MobdVBM2UCHhjjbdBrQdM3QhNS5v928UzRetFL2SznHB7+Ulu6DEUu1wl5Ys3g+LHBnWGMvn07OK+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwR7PO0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwR7PO0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE956C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714149142;
	bh=5hpfBcKMo9dW9RnXW9ybBeAhf39qvQCmHXpn3ceCFRM=;
	h=To:Subject:From:Date:From;
	b=EwR7PO0lo+vI7TI2mFatvr+/5zKAlNl+T1jcqxsRKWY7rzeTfmxkJ98pYP/PrYN9y
	 k6jZun00uGjyvLmoS3lVYV5t5/M699Jn+9K/sFzA6PNEH1D7Qk/sYRuTP5c7jXCQ7X
	 OrE49uxMDfaQ8b/MVZlgXIEzf7juyUGFQHqcX+g3RcLQFFoET6t99tCctedHu51GSL
	 aBmiXCnaccWRaUOwbpTZnXeWVt+mu0ZMvlx7N0LdLcU+Ffw6TKPhi2q2QUevETe7NE
	 nVOPVFj3fWXcVKasm0pcphiqV9Esf78fm1EVswCNa8Dv1Al4VnzHxXmLp0SB9sT/Ja
	 J4f2LWd6mJJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5089C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171414914279.27740.13617005532102498226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de497ef97922e16ce9eabc17c26ac71fdca388d122a8947b9e61e43c834247fc
Date: Fri, 26 Apr 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714149142
