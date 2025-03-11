Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2CBE1EB18F
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741685334; cv=none; b=n1C8EIqZm+xYzMx7pFMQrRCFDSlvRw8ODyfDhGaX2XbcbvsgFFcsb0vsOO6vGr/izzG80khqUjIyWfUhkZDg0vOZYhVOJr773vcvafsC10mlwQnNB14AxwJWomFvzSHrQMrtvkFBSSLx+9r6dOdU1wakG2YisU1a4+U/kjn5xsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741685334; c=relaxed/simple;
	bh=r9x2zCEUG8FAfTmaC2oDg6UUG7F30ghBhfyDHrK4qRo=;
	h=To:Subject:From:Message-Id:Date; b=XJCMKDfQuGM1BxCEey/yzkOuV4k7UQPvVY6WP+krtczjI02CY8SUOGe5I2/uv0kM1/OZXNnagyEoXW/VXBgacKg7Z4hspYaskH6F++mFzJV+WgPBqvyhw1pRY7ikbQ9ApmD4ChbvJg2Ul8+il0gBfooIOfJb+OQP1+0TFNf2nmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVuZ4s2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVuZ4s2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CDEC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741685333;
	bh=r9x2zCEUG8FAfTmaC2oDg6UUG7F30ghBhfyDHrK4qRo=;
	h=To:Subject:From:Date:From;
	b=qVuZ4s2stw87/XRJtGk3xWGDlFXSsu1IvXlLecdXjhcHApi5XVD+UvHirXfPxSrYl
	 mC2iij+eJ1EC+a0Uipv/x6gIXPGk8OAYmB9u9MEBWcZ66jPYEfaDQqGrPMseeW5yWw
	 zs//tAvuJlXOs0RN7sGxT3JZW7k9dEbzHzgjfM2u295QgWSIB2Txq/1l2V5ZC9sSfs
	 lueUQdGgPZ+GkZlCaoPyGG62agB/tnt8UWCczO7D3Tjic7rv1cOnBqKzfvFLZEFAL7
	 cJtxnn0nXz/iXWCwBtZmt4l6fV6uH9+dsjv8w2FNekVXd8st4EGffiZ5Xixy/hGdgg
	 c279RR2vLP1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20F5C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168533365.17475.9748882541618867875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc9e0b516fdeade4b9f50127b951ec79841253833e2c74a81530e521958a277
Date: Tue, 11 Mar 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741685333
