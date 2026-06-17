Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCF3386C08
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781724394; cv=none; b=Q1k1O0vlgJHyQkv2XYAbUN5Ga/eQYCxNVhS6/D4Eox5uNcvtLZJFf3zuENnfvPx6v6oWo9ZR2TDJ+S1M1ap1x92H/ZefJnuFus01eXTMKpktLn22r0YQiR2Vqe4oDD9clVtz2huJJuackmJN4FZfCwJDBgwi4RfWAnzLGyxOsiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781724394; c=relaxed/simple;
	bh=gyqUqBSbryZGk/+Er5R6OtSJvCoGwEJdob/IsAEGHuY=;
	h=To:Subject:From:Message-Id:Date; b=rbSXT2sw8yU0ktu5uIUmhHukW7qR8BOJ23C45/pXotLs4BNTMn3M5m+EiKUZhFuI3z4TKJVIsREF86JQLlXrZVDWTdK60Eut1NGBoYhsCzLGdonf379rt+Lcor+Bun12dp/4hik6NYbo7S0qK/oZoG59rVPUm3zoO0WdAofjywQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hw1YoYDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hw1YoYDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A6FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781724393;
	bh=gyqUqBSbryZGk/+Er5R6OtSJvCoGwEJdob/IsAEGHuY=;
	h=To:Subject:From:Date:From;
	b=hw1YoYDKLQn89fV5oqcr56tKafR7yUP3kW5d7pf9tYZriTCtQPh5PxOTOLHSTLEsG
	 VqtzBZxr03wczaW15GjOxNEi+eB+cU8cxiMlTFMmIIlXROZnfYVs+xN6kiz6Nnw5XQ
	 zlhng4vqidanJAhOnZq+mYCSUI2xb3q8f7w3Q/yIXLpWsKsZ6IPzMhPF0mMFqHBsFf
	 oIZe5AirmjpS5/1Cjqtc0tXg+jk9OhGcymQMXR2FREQJJd6Csse1MOStdFkT33pcZn
	 hP0QhyKuumDwwLo0iX0ckui+R+vblQqodQSiE73eEX4sayXpwzqdyO4YFVI4Nst1o+
	 IyPd5b+syooEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A03CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 19:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172439374.30507.2621421937210271353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4bcd5a875b6d70bbbfe970fcb0a2e0beae361d9b48b84f130f9c7ca139aff3
Date: Wed, 17 Jun 2026 19:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781724393
