Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7F5450909
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789126235; cv=none; b=SHqmnlbKSwZiLYBIxFLyD0+S9BuUgZbaVOoxw9jU7Q76K10tN1M6BbijwD2pPkXxkPdX18HmNEeG+FjSzSbhVVUeZjJK9tXAqbRUluqlBNXXrgEI0MGqNGmOiur8jlFjxkWZXcih5kLewb2FdVxV5E3KhjK4+HEk2mY/j7Xd+Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789126235; c=relaxed/simple;
	bh=87EYd9Uod3PssWYDl0LXQ6hPQs6LjgB5w4Wf2bpiWbg=;
	h=To:Subject:From:Message-Id:Date; b=UJKhHw0Rxh657al0oDK7e5g54AgpTrpb4JJiyEea8SEwKnTk2qGDz7NOsqRBU+EsnbFmVfd2fyyzSOU/Dqzn/gFwEocelaULMjLd0fGh4wJwOSZd6Ocp8Stc+gDMdYWilrR+RK/Dl8auWvUcct4BZDqSHR0DEeNzylLIgpJwT4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpVkdZT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpVkdZT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EF7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789126233;
	bh=87EYd9Uod3PssWYDl0LXQ6hPQs6LjgB5w4Wf2bpiWbg=;
	h=To:Subject:From:Date:From;
	b=fpVkdZT4kwiCpvN5M1b22xxB+x73j3LzqoHTUq9f0Kj0BksxMxX/xzMrCO3gPl3/s
	 QKpQQQhtldqQMnKDAtBcdTrYEdXx/d0pMPZ276kWJwX1WqZN8kQXjwOzlbPT2L57yw
	 u1+cDhUjfb0dXiKZnTwxnWmsD+C96Xp3IdHsGkLyqTaXBfh0fHwrveXYx17/9xG+DQ
	 I/LevI5JnADt2Z/RgVgnoQWGuFx5d/ZFg4IZsVxhQXySQp5KFPYCTSne9oW52O4Opw
	 9ugIdU7wE6Dvel3gI1Hh/e1c56pW/EqugTiEls77Qsfkiz3DsfDRdWW2Wo5aVlXshe
	 XnhmIIkZLCevA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A3C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912623368.15067.7205438818905531132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed98cc2596ddf82c1eeeedcd9f927f450658e4622dfd99808fd1b5eb667c13c0
Date: Fri, 11 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789126233
