Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFFD385D70
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782282394; cv=none; b=a6CARutK9X59qZ45Er8w14TKzad1rd6m0EKSJ3TV27wTBfahDq0i1Upyztk66586WQ9VoPgd7vJkj3vrIW6zk6WZbPpsGJVYTupdRkgaC3UtoOQqgzVWTZ2Xov47m62HUCQFGBfa5+JVif98t1wfkoYjl8Gdqgjb8Q4RT+/RAqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782282394; c=relaxed/simple;
	bh=06mFUT6zcYsqmx+E5BqrXPbIhUUjmgWx+Pja5WCmrSY=;
	h=To:Subject:From:Message-Id:Date; b=eqcNnxpXoVVzuE7S7gJGKERZuSZ0xz6ZDidhvAhmw5bzBvqvGmz+KfVKAG4EsHBL5g00kuklR+o6RW8LphU/B/D9DoWpVb87U9rd1gpicV4SJcMlbhp4W2tBqgHthrY7bFxskuAmEvcQn8a34KGJe+6sEjnG+pA9yKqBeEUY7nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eb+pUYXz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eb+pUYXz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB39C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782282394;
	bh=06mFUT6zcYsqmx+E5BqrXPbIhUUjmgWx+Pja5WCmrSY=;
	h=To:Subject:From:Date:From;
	b=eb+pUYXz1snOLMAmqmQPiuNPYm5o/2yN0T40G68nN9uA6cPOnixGv7eEx4gwfUalH
	 R8uiSYQjDfGU03oeQ5pqYsbWe9WBWzaktsmHZjyrnWJNjmfAwR1luu9hwIAMLCpN2c
	 ADZU7UeIjH3w+rEo1cmXQeWdbyNd7GwJU465sD3wsKSdP5hbMOkwng9tRjwwGldqQ3
	 qegjUEHGaAwphArANNcc7BTbcnGJbkSl5RQOwJuf9TncuCL+nnUsZi57vH38hXtFAE
	 DOO0hp8mbnX070/lLIGPQVKVaDCZ9FIYxMEGN+MPUpfHFiYVgM951QNgwaD3qA2glb
	 diU5XL9JAT7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD5FCDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178228239375.17782.14587676269180851016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0eb220a8376d4858fe2e80179463a589b6e9e4cef15cf2a50b81e79c1c120b
Date: Wed, 24 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782282393
