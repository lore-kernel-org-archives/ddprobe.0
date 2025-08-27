Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AF22F84F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756329594; cv=none; b=F1XZoQ+BF6qbgp1WZ4R9188HpA3Rh5Y2kfvlibBWu6ExA3sy+CUxjQq18mTNNP9+kWSoPZqLcUqNzY2IdvpCFEi8cz07R7TFX0KN6LG1+9HeCBM0J9ersA663ZJcM+wa7/NTM8Exlz046AWW/gHgJmGnw8DSY1AXzBjdt9LxFuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756329594; c=relaxed/simple;
	bh=U08wYs8iWwgEej4bzpJyfdSKXsGp9STe9eR6tWpcw0s=;
	h=To:Subject:From:Message-Id:Date; b=EUtS6yaKGIpcf0xoOhA1V9UD6rr+2Vqesfzw66Re3ykc01i9g4k456tUroThGwY72/fdXUvqJq+qPFeRUrXmFFRIVfAqP+GXQ/26922Aakz/5a1z8aTDKxcEH+wkgsrKVWXBrziVzyLgWavHTl75EvjwSCn+9TS8J4oaT4kNyhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkbdLjQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkbdLjQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13E0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756329593;
	bh=U08wYs8iWwgEej4bzpJyfdSKXsGp9STe9eR6tWpcw0s=;
	h=To:Subject:From:Date:From;
	b=QkbdLjQQEVxskClfk32QNTOD3On0XNmcGi8FLVi3yae2+uXkI1yzL7xzlHHiTItek
	 QboJSl0ZP3MO7qqRULHYxekRjTuvNVLWD6X90WcqXl5KAleufV3Xfuuzw8vGJ2r/cR
	 xFudtJV5l6ezjw1PJOSYK315syNOcX8R65R8e78lq3hnDDnmwFFn/I7JkplxIgYbpu
	 MTSBNX+F77pP8kyx3cLyWG8y18CPlAIYNIoxizN0BNofVGf0Gs+AEYrVxJc4J9Jpxo
	 j3BlLz+fHaWMlN/u+rw4D/0aQS7/9SyRKdSxvjtc7bERw+6oyQQfG6Ie8QUpTgeOYV
	 h2YX8kj3Nqohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF3CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632959357.29871.781131845052766911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d4ed81cc496ed690e521eb4695bd8216e7ebea9343f73f8e53a13cc53ab16e
Date: Wed, 27 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756329593
