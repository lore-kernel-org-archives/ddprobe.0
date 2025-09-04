Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C356529D27F
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756972793; cv=none; b=QesVA4f0GzdVpCo9NNc3IttCBdrq5268qSC0jmNggidelV3a70huWYQe9N4L2aEWYa2KMfwBqR5xNiR6nIrJ0m+2K6oMnVlBieMfvE19yKhMVWvzgk0r5oMi1l54/qr9OVqA6uQJ1hG1HxjGMqo6Iz3dmLoFh5tWnNMQWMZ7IMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756972793; c=relaxed/simple;
	bh=fsfcg9p1dkEOcc3G9hAReB4/7vd//cVQdbmx7QAVOPo=;
	h=To:Subject:From:Message-Id:Date; b=V34ZxRbQEkIgrAs2Hdy5PcPp94mm7J2lf+fwL9lbZBZ+ZPJBrATd6dqKGDf3UA4X77cno0oyF2BEDMIf7SWZQTS6UhyCNLUXvtytpifz52ZE+/FgW6rkn4C7ndtPsbZebzPYgABrtifvfo2YFao1AdIegKWtKAqrHqq+Yr2HcF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+EfLstb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+EfLstb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA03C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756972793;
	bh=fsfcg9p1dkEOcc3G9hAReB4/7vd//cVQdbmx7QAVOPo=;
	h=To:Subject:From:Date:From;
	b=Q+EfLstbP9q5T2mqq2HEkcIHI8AVppXqN8FGxQed9SbKbLs5OGqeQXHLybVtCCnRD
	 V5MRZpIp7HLc4KqShnCc4y1CdUUKsVc9hljDhoYDOjMxpDED9bk+iqj73xsNoSI3Gi
	 1hj9HtwJoD8hV5QDdT2v9idEWvUKXiQzye/XG0H1vARG9+3Z3Yi/wtXz7GNJk893uB
	 FgFlC8ArMpo+Ps8w53YoSGJPUgkiPACXr++HCz0haTeA7IAqvXnCAs03zfNrv2AkXc
	 oKrfcpVhwJqZ7amE9sHxFHcRAlZRK9wIkGsYB5TZRNefn3J0mvw4h3+yzF7tCfCwby
	 etvafyCXm/Cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B40CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697279357.27250.8260108685761434076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59d6987e1438c48b76230fa48d86018f1d81a54db51c1f860050850bf4bcdc1
Date: Thu, 04 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756972793
