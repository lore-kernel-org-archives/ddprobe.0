Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390DE3537C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788529834; cv=none; b=t1Zi1yvvYqgrAnM8ZYtbFJaKbmZKxtjDqxxR++hJPfevoRRa24vAc1b4t3OzL83euQa1V4mgGn0vrutGTyNmGaJS60x7BKcxFGw8t0tIpS33hAIYAiXSIunoYU9BGMy4/F9PyD8oGRVg3YrhMv+2rT8oz3poLr6cR0r8Ekoq2zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788529834; c=relaxed/simple;
	bh=YKVfBPRmGOO1X1gTgK50+k5cli0z1Vj82p30u3O5jAk=;
	h=To:Subject:From:Message-Id:Date; b=fwN+PkOeZnQWaJdP9QV7tnkTYl1lrLnDdGX+Wb+6o7tFzMyfnUoCgZGLMCdbf2eqF1lRHWa8FyhsmSz9zk6GyaIH1E8kRwq2OgO5/HZI645++rAKvj6txUWrz6WY9VgVqF9QH8eozVlztqpIPWMlK1osxXHfkPSsI+SJNnjQihQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAfpIoJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAfpIoJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D862BC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788529833;
	bh=YKVfBPRmGOO1X1gTgK50+k5cli0z1Vj82p30u3O5jAk=;
	h=To:Subject:From:Date:From;
	b=BAfpIoJ4ljtCw5M70UNUR1qQpGxLbObNtnBMfeJbuNkXEd0dECC86Nqs7UIok0kPu
	 ZZ7ypxNZ9IWBGKZj3zI5tM3iYR7F462Aimu/c7xxHxiC4W+5GYE8nu/rDORXT9haF3
	 zCs6qul7nxntiP9Mo5kao0JruGbPcydDEN+8/FoPxKPENptb0z3lw8mJ3CryMnfxar
	 L8avQVxWlvNIHGrHUDEKCHMdiEOeyGNfEc7DpS1dikFs5btWrRkOYnmsdoV9TK9Z0G
	 7YjzV2Yb3P8SGqLA92tF19czt5BivVV480f14c6a1HprT8eCK0XNmPrndwAac8zwKX
	 dEwkr9OPWWsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AE6C79F87
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852983372.31755.7730598614019185144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c067be801b396103bdf8de7b5551ec0fd3067ccc63b0888d5e3d4cc98e615a
Date: Fri, 04 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788529833
