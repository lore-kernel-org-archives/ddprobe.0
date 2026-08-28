Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3892A394797
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787896834; cv=none; b=bo+L/ElW8g7YJNUXUM9l9H7Sq15EWtkGVRjCDrtqKKLuN7Q+TLIIrGCVz/0LUk8Fj6j81HjGhdpOT9HVk3mTj7Tc7ZcldmIS9X5kgucvgBJ1gb7iDqbdfP0f/8RSP3U++SVEzpOZAgx/ZZsgmDz83dJjN6pcMblCQOqLsVlmxuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787896834; c=relaxed/simple;
	bh=A8eX3k7r2rTPWuxjU4N62bq2xK8vIU2BTLtrI1RmThA=;
	h=To:Subject:From:Message-Id:Date; b=iqCf7VwPHe0KwW+N2B5b36jrtBBICZGKXEP3oGUoyBP76HN8PqZB9jIvCQ39PKuFoh/x6OHHUSMHgLPoPA+0DljhSm0mqsJGYp8Af+WzwrbcWURoJFKJK2MAtyuvEoSLq/U8yQp5/WThBC89XOaY3mDdejqkhwKL7TDARf3cp9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aob0Qkyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aob0Qkyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD19DC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787896833;
	bh=A8eX3k7r2rTPWuxjU4N62bq2xK8vIU2BTLtrI1RmThA=;
	h=To:Subject:From:Date:From;
	b=aob0QkywbUpQVZQbpHo65sVeRH6ooWwqQH1aHFzhk9W7iJl/4ahWU9LujnH5VOilU
	 omxskXx4Li+ypA7jk6xKSWUA1cpK8LTrXEaOpB9X5A9bko473gjzu9revpXHKcR73K
	 QJcBz6ngzHns6jmRT+J8m5oUgFAAfUOLP9UhSkr0TbwPoh1S60uVAKFZcm5WjCanMl
	 7U4RNZdFwdn8SqN2mrsaoMNSSUPMnMgVbItW7nb0GK71rLr3FCBjCwDdyBeNpDJTKO
	 bFZCQKliQOrvDoZY+FJZNlJwRdO3xL0ZanKtH23Ywqlfps8/8OS+cQmkQKDs436kDX
	 XPKbevLgSLtKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B2C61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178789683368.9907.8601926885864557972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea4757b58aacf41e525f871874d9d4eef189fe8492af81fd250b92da20e91ce
Date: Fri, 28 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787896833
