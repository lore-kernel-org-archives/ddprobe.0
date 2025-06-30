Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CAA4C6C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751256594; cv=none; b=YcU4lAcScIhHvOKtfaXwghWPv+6iYWU5U7Q4dej4rhQorMDz3sDgMJJCebLHMHYLyMrlzXZBtZn9VUblwN/ht7lPL3lNTeVWXVSkNDF4UHHANjfX1aH5h4Ele9/CHhHTkYVG+WhfjtUp+GTGzvsscOW6+ifQ3u7t83Fil2KfmFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751256594; c=relaxed/simple;
	bh=AM5Z/10+hlkURZU2arwoGSsyXuEs4P2MjwV/lcx6WJw=;
	h=To:Subject:From:Message-Id:Date; b=BR1q1d7qCDemkWOgdlc75TtdY6WDE/NBNno7ebs8mSQb5m//KdUAXqQ5oAsdw45BUabPjzh62MA5anAbK3mx9aFD/jFT921INif2Jjwinh7MLQL/PhC2FozXRpMf8pG9/dQNXR4Cz9g1C1qGQiRuWt1SYHbvSrUmiguD+fsiGyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJwzK38w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJwzK38w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751256593;
	bh=AM5Z/10+hlkURZU2arwoGSsyXuEs4P2MjwV/lcx6WJw=;
	h=To:Subject:From:Date:From;
	b=rJwzK38worXisJudAkwkjuQeQ+VUdXm+cNh089tsXz246uJHWBDLdmarXZeSoyF4g
	 KaGNE6Nk4a1NA1xdoxs4pZWOvml5bWH/DkPtHkgvk5JN7VPQrGGuY22Bjb6KNSDAI+
	 eOFFnRkGdfYfyXA4htQnZRdoi6XoAsfGem/kXTn+OM2ZrtG1C6Mjzyl6COKVpQbH/r
	 JsU3NXev31FmYdXfkzTEyEAzgW66QXpAVL/gUBnhiNAcYgwQTY4N0luUiFP+aOZFq5
	 aZsnI2zxmNcM5wVrnfekXWHcODcjjwT7qp7mX1EiR3UAv2SbLXwpzmjiAWfDmcoX/s
	 XdObAS/uHgbrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D98C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125659357.8293.812608499107609723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42745a62ccbf15b837c83160c50c8f186489902a03ac959670b90abf37e56a7e
Date: Mon, 30 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751256593
