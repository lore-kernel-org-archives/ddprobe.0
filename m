Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C88E70830
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754230794; cv=none; b=Zh2nHQbjpxzKN/Mm3mFwPzWZvx//FPLI8MXStTURMzfNqh6EzIgdADfhvfbe1/WWFJbwzNAGtLYirlSXEGcnWMyy6DdOzplQ6hMFtGoEEXd3ftgvpoiGiaDsNWXR3HWgIpdEBGoiBI1EfOlvjhAL96BPSF9P6qnQo52z6XQgElE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754230794; c=relaxed/simple;
	bh=PAzifUVHjqn8OYiVJqyiFVkJ1EvlFrL6vM5ra+h1HSQ=;
	h=To:Subject:From:Message-Id:Date; b=WGMZuV2I9A36waMXOSZ3inRUA/BD+g7Ytr/ZgYyOa/t/vdPZc/IOh467ut8Y32nB+DyDqfkxALcd+bgMcG1RL31QXTGIExZkZiAoDBh1HBBmOxSssMRb/SNwiPtuaYW7cSjL9ZTERuP4DGBeRAQ2S9MqWqABOCjjiAqFN5i8MWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFoeW38r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFoeW38r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A707EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754230793;
	bh=PAzifUVHjqn8OYiVJqyiFVkJ1EvlFrL6vM5ra+h1HSQ=;
	h=To:Subject:From:Date:From;
	b=CFoeW38rVbTsmhXwmTuMn+YwkMCKs3xDxv7ZNPNT+0VN0Tx0cRkoQZF9Lpj4LreBi
	 RmmfXmvnSIqYt/Gyat0hp77fceuVF8rczj2K2h5mzWJ+DA4kOjc8TPCOOUarjbbyj6
	 4d7QrQ9MJ+9JOuRbLKneZQuftTcVQkacFWJmGj5cxixtg+25/njGaOIIsncHBTEIyG
	 Cu2DYpeHNTeIzYrSryP1SQoKY8qdDcta387pCw+S5/WMRpiKRnFQBijKPjvQSNfNhw
	 nU5okLQRZM5nHzxIEfukZu0g9ALXQNm25r289icFy5d0DlSQXdy8oeM9OPevmIvDu7
	 FlAJNR6g1isFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94427C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423079358.20514.2947474005198329350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ea3b78858a53005d6483455ebe8af22cc3f92877129715d8529895c87e4d59
Date: Sun, 03 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754230793
