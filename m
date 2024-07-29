Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B127146D55
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722266154; cv=none; b=CpCZa03b625lNDu4Cdp78XKYvqvomEMsHTJCWQAm3FJbZAft0liyMPqkbuDueRxfo410+VAr7zOBh+v0UeLjVtmTxPKXcpaChZRQM+Wi1TCver+OXjP5aZ3QVOt5EvRiduIqJf+G2FzHYK6W/ti9Wr07pJZVLburKXEcVV2E6nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722266154; c=relaxed/simple;
	bh=Epo1gDijE4l4AQV2KuGG2kO3LLLBCqJP5u2xeT4raic=;
	h=To:Subject:From:Message-Id:Date; b=YTQsXqtT0k+uQLtGOb7ro/SuQo89vY8waQJkjsS9C20IuIGsVZcJxsyC2cJfqAnkdthHE17z2oqzDJcNy+RQsVUwTy2bNgpvjBIP6YriW2ciooROENDLTiRzFajR4eCcAjIfZUUrj3McvJtZ3Y+ayfWWVQXZ0WID4/4dNUjqw2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elQ01f6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elQ01f6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6F7C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722266153;
	bh=Epo1gDijE4l4AQV2KuGG2kO3LLLBCqJP5u2xeT4raic=;
	h=To:Subject:From:Date:From;
	b=elQ01f6pshv28oU/QtNsvoXxuRiR52WD8YtHXIvIDyzjyNbcRv2sPfvk7YLGd9TDV
	 WA33ycrXYPdojRVN9u2pdpWqKszaE8OPQZ1C1ufOZd+UlD06+lUtIQSyhIUHj4t4L4
	 HM+9a83+HrAqCA7aB3JzHfxfmE4p2sCXaYJNh/8O1SVpgYCpVo7g6L78ngKovRsE7e
	 /FJJa/BFgM2TRDDprP5zb7DE6WnlmTJc5js4RejKyRXybXewWG1yDVouOuT3eO9zbR
	 dMEx3vxNTWL21+CawH52uubdy/TEyU+S5dzP5xHGoJjBezbr/tsmUYLYxVT5+IPeQa
	 BH2YU9bZryrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D0C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172226615361.20802.3449846496223288729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95acb6839893960cd44915962aa4f6304750580f0560fc3ea46ee6432fc4706d
Date: Mon, 29 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722266153
