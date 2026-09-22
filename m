Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE354F475B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790059834; cv=none; b=jC3nNj1r6SEusHx57MZMkWfkgT2gvfE2+X6TeA5F+Ek7GROooIt6xA0qyz4vONqUwiiyQjgAbqRTGabe5RVvGXtGCLAv9PCU45TsllKL+laGY/IifiW7dKI1xCVoNOCtcWLGyTUfC1sgZfXiDw7L+1XHFY5b8EjBokCiC9rmsO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790059834; c=relaxed/simple;
	bh=guyMOLb8ot22i4Hc8Fu3CXWqYcQzCHwgiaiWCPqVNU8=;
	h=To:Subject:From:Message-Id:Date; b=IOq7XwpVKKBRF9LHr8dcS1o4Rh7OsWNblV2e2myK1uRWyA/dEC0uiPZJJYsX3jurhzRNpTBpOa1REzcooi1wbgh1LCxalOu/BP7q6gtgH09jvk+U2xnYQi5Bl2wSGASlQfw6j0VVNrvEghPVQOmMVvLZErBhwovrFbMD144jkf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBYZHmCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBYZHmCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D61C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790059833;
	bh=guyMOLb8ot22i4Hc8Fu3CXWqYcQzCHwgiaiWCPqVNU8=;
	h=To:Subject:From:Date:From;
	b=SBYZHmCQ08FQ6Zn+0o9XAYFj/XNs5WlFEm23H8/wTTuIyQOdD0Dn0E1AgR5BWsDOh
	 YjIdNxNRTnv9D7qLlZL7+YMuSLrhh/5/2NdWM9LIdI9Dlf9d+94yaNXrqrHqpXcgxQ
	 SnKWl/+feH/2NJv9BQhYedlsJooK+8S1UWj1Rgo0eXHNDNRSQxaKDpQXRLIHbNZXwB
	 XvTl/iX91oqQQsOlNyj9fgjtSa4EiHg6B4IyvFmGTeeIezKyh4I6CP+BktAdDcYzBg
	 lKmgchIzv4IolZlC/RbBlSx71hPtJA90HF4ZghofY7usnaDdTfFQlcPbirqmcFeUNT
	 Hfq/yL+HnVPRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B051BC982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005983370.23193.3983420563729513928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ab0446d4f870d9dd99881c2ca4a2a61d8fb7a2ec1387d9fdb8d03816732e59
Date: Tue, 22 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790059833
