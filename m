Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487EF4D9F8
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 10:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713176363; cv=none; b=gORiZJx+b471QSoGB+PyLQxWkWDao8wucfHXn5nnc44QYPYdI4b/fP039O4cvHb35seR/A8dMzY7l2ZXs532HK0R6nT2DB3LMqCNiKuQ/2Sum7dP8b/7TG5861eAUNrFDO1u2rTStV71upIjYprdEfN+yIRn62pNkN/gvFY7drA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713176363; c=relaxed/simple;
	bh=1Fcw78vJqbOmPGMtkXkBkuoMKI2gK1BctfzA4PfHXOA=;
	h=To:Subject:From:Message-Id:Date; b=dIUZxm+beTJ12QlSvHkwEpz65UxDI2ofBNYtThjXPzMwIguV0jkrAeof10rg8tdj7f+JNx89d8vz3rLKdwkLtG9GkIhKOl+qO5kU+QTbd7pm9ZnRWr+4ZBhjjQiIdAAMagt7Gef2lAINRMrDLaH5DpvB9a63tRrhy1e6rtl6brU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB4lezMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB4lezMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA348C32786
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 10:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713176362;
	bh=1Fcw78vJqbOmPGMtkXkBkuoMKI2gK1BctfzA4PfHXOA=;
	h=To:Subject:From:Date:From;
	b=OB4lezMjfJimARnhXBmFP74DoowIngb+s+PrZhCQ+4BBQmYMXee51OYJMea++J0IV
	 aHXJrrYUyD3DzrLNrHmvj7trs6riXe/tNdb7N8BJUx934jQJ9ATaS9qn0tmcLIAu8K
	 0O+S+PrOBTBuPp4Eh28P7t9D4OEoLXFUQy/EkwYZxSsiOteVL78TU9MtRBFqZHbIAi
	 TsACFr5DIben/AOzVovxfn/HQI0QY85Ua7pnq9WIQltsVrEjYVqiQbcHjU9mhYs5eB
	 Og1O5AAgRzNauAro3Vth4b3g77diImrSJ8V9J0lSQfE4N9o0PFmA0Vm9Bhyk9/yx96
	 gv5mRUBtbyNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0C3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 10:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171317636275.21829.18013935285991251392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f429947845f2cd6f2110afe8b1da87c7f8e6dfa71e86e9137a864de042922e
Date: Mon, 15 Apr 2024 10:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713176362
