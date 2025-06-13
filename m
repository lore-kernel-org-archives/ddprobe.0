Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FB42F4311
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749793794; cv=none; b=VVuRZoM0SskvAFm2kClcYZt/OjtCdq+cKNBnr4q8yWx1D3OvTwwyGBdFuVpppWUchwPsYomjmovkfn/jjm0IENmUgHgFHczPswEt26BbcBHY+RMpbnYW9Ht31BwoR1lHE9PUCv4IWs8F4BbT34ELQoaiVRVd81phnu0jKcJVDGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749793794; c=relaxed/simple;
	bh=J6kCz4BZty+E1u+1U91Iz4SmFy7JqbeN7KMSWp/BadI=;
	h=To:Subject:From:Message-Id:Date; b=iV4CwNEDrloxg8PzxSaJKc0d2tNeBQDIzQVL8ykGWDTz3AxOEz8l5/8jXm0THjCyoZt+bFRaJQn8RkJT9dcZHT5p3sWQ6k+tKASQ1is2QFykeWA9nlZVuUQSXapULkX42PyrAkcYeh3wT9Hsq9PCdHj8A1147UN6sN8WrueWYBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3sLTKTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3sLTKTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8CCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749793793;
	bh=J6kCz4BZty+E1u+1U91Iz4SmFy7JqbeN7KMSWp/BadI=;
	h=To:Subject:From:Date:From;
	b=Z3sLTKTGUjjZAO0bPubGfhP6Y43aolbL6f154T4M6DX44EkHXfRQPktYN6AmsEeXi
	 oO1qOKvjterH7T9UbD+6MidUpsfgvKfZRyS3BOT5Nps3NJv1f0sPffCzQBk1sYvJp4
	 vJ11N+8d9eN8MkxWBAR1qhY0IWlG1AACPVvgmYs5BtOfmzcHw+CHy5BVwxI5hc2oa0
	 zZ5Q0UiCnLnTlv29uL5LdfFhyGyUZYYe3gt+zdpMH2Y4I/FsUMOQK/deeFcIVFpvV0
	 HU0PGhDJSDBLJ9YrkBy4zaYYnz8QynMiaAXKBDOz7rwSl9/VALtLFXs7JtD0J16Fd7
	 NJ4W2wZYU1PkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8DFC71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979379357.13558.4950124092913410905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8570959674d5e0c36d2abb1e1b348eba12c3b5eb1922c6e8b2af5b0b5407a747
Date: Fri, 13 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749793793
