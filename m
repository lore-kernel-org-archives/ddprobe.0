Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B927A91D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784158114; cv=none; b=K5366N37DtaBwMIgsHc85bcFdnI8hQAdI5mWbiJsSCZ8hbCUlipoxCHE2O9CTkyZAYUVOw+RHbH8anZ/y9m3VelfUJcx59kB+LiHdRYU1umnazucAxDwYWbl/ytI0S4zHgXdb9Zjcnp5A+t7vb5Hv5ZVUhD18llYEsXVZ9+AdB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784158114; c=relaxed/simple;
	bh=/ex7yxSdf3Vq9K6nnf8LxgxCJx9yBkeBdL7q6HfDflA=;
	h=To:Subject:From:Message-Id:Date; b=QcwgByBS686WkiqAlPG4vP8lekTRE3IA51eulXF8zMWbwdi/VHMSPvr3+I2gFlo8zScEvspauf5xRRwc1DmDRrgh1ABtBnboJ0087gdRwEOZOaivPEPLhyiHyZAzWJO3pofnglpfA5wviACGFT/uvPimxXGnSYqh9Vz9U5RQPow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7tUso7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7tUso7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC64C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784158113;
	bh=/ex7yxSdf3Vq9K6nnf8LxgxCJx9yBkeBdL7q6HfDflA=;
	h=To:Subject:From:Date:From;
	b=Q7tUso7DhAIrlnivTAUGhFkIgBOeQV5txngoeU0oj+Zf0zFDarFyeI57FlQ3gMtOB
	 TndDQwwVAdSF1Vbk3hmBm3HliejnaQbPcARZ4Rm6oqfDbPR/Y5rekRbEzPUMsOfL5P
	 VpJlD0t8p3kZbnJaGQNArKfxHPlTFcBmopjTJZcH9xs3MGWThVxujEG4oVJef7MeqF
	 T2XuTltqVK6weHUnittnWqPxUQNzSUjRrt+XvgizvZJ2MqYLTq7zJtFb7ks8R6sWwL
	 yml/9d9pj+zZ1Cpnn9A4APMeFnjfCjicj8eJNYN19StszAj3oKdrN7p0uuvZWRKNm2
	 SqVgPYzNaWffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA68DC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415811369.26357.5122374004397755667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80693ba4a824d792259ec70a48529e0bd82d939ffb18ad10e58c92d350abd49
Date: Wed, 15 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784158113
