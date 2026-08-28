Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2ECC37F30A
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787948434; cv=none; b=UqPU4vExv6K3C7eYP+lYKZUWrsxY+bC90Q7x/ni6XPw5kefcEmwbbHqL+IdIG9vdmZCaJsUNmeW2xwMsVn9tELbqnsLEcnlXbvQouaE5jMQ1paZtFU9+g4/vMQNi+wy4uU1ZbmkKXYiysImGqvI5mncpvodxucxg8+g8Vk8Rck8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787948434; c=relaxed/simple;
	bh=3lxJg05Dp1p2RtC7H1Y9QlOsjfVh+l/RV2kv6pF1qLM=;
	h=To:Subject:From:Message-Id:Date; b=FFrZUz9S7YmvpYA1geron0/SqH3A7x4WDezy37NX3G0JYJFOXccbWX206L/BKH8vejnQPbuy13U5s/mJHgqqKFeOZN3wteLrAAK8PKEVZRFgDTMRhNpaPBLNdmSOMlitp5yZU4eIi1Nu0Aef4dvo2n8VzbDVro1RiesxGWn7zX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4yzNOW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4yzNOW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4F4C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787948433;
	bh=3lxJg05Dp1p2RtC7H1Y9QlOsjfVh+l/RV2kv6pF1qLM=;
	h=To:Subject:From:Date:From;
	b=T4yzNOW1tLZFhpKKSY45Xjy8xdFsQgbvJ9fgWMyJ46DP5FhDrm8Ia90hVeaQvcTLJ
	 YlQDo48i0kIvn0HrKwB72N3ZZvo37k/g/Yf5k0vcsd7gcVOsUgo47KuVoJ1dLUUkBL
	 ANkJwg9Ftt6LPtG0CDWyV3moltCjLyz6GIYouVD8rdYIyIeKt2PYTqPEUYw+G4+SDF
	 6KLTMnFwTpFmZRahCI8G123p3/T+5Ton0sqxNyMqPEvTBZDpQ4ZCrpJDUdgCDi/W4X
	 tPzPRSwRHtd17+bCXJE9+jAwVxJfODejH7yBOhhE0b6Ns2jxYpj91Wzf87kIK24bZ7
	 +9mSzh1pRpWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA793C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178794843368.30205.6726657980361566956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f5cd6a09b53f0c64d0c3658eede3e0b15465c9bf6aeca7c3f30800f1e76145
Date: Fri, 28 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787948433
