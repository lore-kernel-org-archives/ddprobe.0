Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540304B04A7
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787016634; cv=none; b=L735OgdgHZ13ouPVkVCHO0KcKSHH5Bcq2Dy9+HKUulOt+iGV+BU7Unks18Oe+/Su6M6dLB/P5CP8X5HttrakDLYe4A7Lm+vmurERJgBfPZtJ4xHY/srw14TbroGpG51Y1xK8l5QUIfxPmduPmbddHDqOecw45yfO51eOpYVlPwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787016634; c=relaxed/simple;
	bh=68gAmVF8Py1qFrO/LBsZiVQIjj29e6tzLq/YVJrL7cA=;
	h=To:Subject:From:Message-Id:Date; b=JvyBbIjSwef6t5MS4xKfu9vN+C9H4IbK39dgXXH1WaHgPLnTclsuJJRnHJvTBYW+do0o855/+nA56wMxmr9T9XYuN6BKHQfNRVUCscBRcmnfh7uu011H7X+3JoyKObKI+2NbbJ2SzzQ/XKwpMFl8UylVvqsogcaZ6geeNgWKJW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT39QR1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT39QR1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB330C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787016633;
	bh=68gAmVF8Py1qFrO/LBsZiVQIjj29e6tzLq/YVJrL7cA=;
	h=To:Subject:From:Date:From;
	b=XT39QR1MNYBfV0ORIOr7gAxzAx0yFz9gWFdOFAEK3DqVWwar1vC5dzumYJjCZmJAq
	 TzeZw7veeLFS7QlHrod+Wz1t3cUshX/MwuGLqroU0rafkQHh1Awovsu1krk9T5JZ4O
	 FJlLAAXBTIby3S23bKAOFbXfCg3YdD66ikBCPAb44cARq5fhY0ev7B0+iol89fLmAK
	 6e6gd1fN/EaAiJnaK4GEHsiwAWnNU+ntnj2zEiLd9/lS1Jds1fhrSTSYS0CI3j3hUK
	 RXEHct0GP3yk/b7QPdxFRWgliUdLZoUS3XVRjNShTFA9p2/2cEo1pVkVbQwTCGwEq9
	 tyxwO28Irzocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3508C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178701663372.2845.13668239957853611609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e47ce46f226551cc5a757293c9721c92f82da399b94dab746eea3167ad2302b
Date: Tue, 18 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787016633
