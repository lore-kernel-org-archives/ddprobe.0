Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11511F542A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749369593; cv=none; b=O65nZoKmiFKJYdkXrGLJNqqu6I3K6cM05fUAEzKAdudv7JN55g6CEzy73VF76lHPtzT7VW8JtAWznAlXxNDDR+zmhdzg/Lhcdtn+qbJvT3/OUg6eIqEecTGI3b5p2OhP+0bPqdywF6bwMkkybRjv/7rVOaOKXwCZwdbTn8RV1aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749369593; c=relaxed/simple;
	bh=U5dikAVrHufz7gSPuzoeUS5OhEy+RvnS7KW65IG7wwM=;
	h=To:Subject:From:Message-Id:Date; b=ebPuDf8owkX+/9quW9ge2T6fZ4bEjis0LLDygo3mq5/C52tsmtDtzRGr/n9dtUnBZ742nk+usWAe1ZDMcyeDAW7/DVmtKFKBxKSz0Q5D2ev8YV3nO0Y5xTJ69xO7tpOLaBzAuY2kN9iyYaGNYvC831H5P5vBoai2SuHiS7u3JQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlIXphmD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlIXphmD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0106C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749369593;
	bh=U5dikAVrHufz7gSPuzoeUS5OhEy+RvnS7KW65IG7wwM=;
	h=To:Subject:From:Date:From;
	b=IlIXphmD1h1Nn4qlFvvUWaFe2TOJsLed6ic5y2cFTbe/BcF6UktBuPD2P9hz9WXZ/
	 y+qi4W42iHDkapT++zTpnZFJVDEzxeXslbiovtvjlhCWH4ghh3NGKbUhQFAUUhLJE7
	 fOlsghmHuTs/htxxbuzV8JTp4orZQGxF0ONhNiHz/oNyUe1HDE/YCxudbfWXJt1skH
	 R4re3ew29e4Nt4SSciLKtJWT2rpaBwmh4vwu6wbr+EftLdVOXc2Fk9ffScbZjMQqFj
	 ElI+nDtkIzmJStkXYaPTjEcsmn6tTcORi7M/uMHOQrub33ppPD9PC7cjzOeSUzlh60
	 frWRa1RH6onKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D63C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936959357.1256.10666614872136979237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b9d7c75d2aa45e442be9277651fda75e3b3572d8864da7955642238152b8eb
Date: Sun, 08 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749369593
