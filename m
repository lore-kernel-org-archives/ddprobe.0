Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31875433A8
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724003154; cv=none; b=o/B6slV0YGGm1o88h3swm9VvSlLN7GP6kJWSd4BK2wn5jJTJDLfZIM1qENZfUnFaXME29IsOD9O8jRxDImJ5pz/F6/y697Gp7E+b3r0obHXJOBTh7hZnrO+1u7tdErlXMMAjQN1V19+oGzp3xvBHtXWAreNc1y3Oy9Kyzwwr5ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724003154; c=relaxed/simple;
	bh=kbFKIYsrGAs4BIcegj7adiE8jdex3Xx3XwcmzZ40e0s=;
	h=To:Subject:From:Message-Id:Date; b=p65zg22Zh9dT+tqZHWBj+nlBvPjsMuEncQjFUruBag7jDvUpcM0L0IMChnl9YBBNZ6w1ny3HgVXW1+litQIePddT4eZRTsjg0qwHZ+L8uWs4eZ+9Ay4+SDUJO5KfleEw0ZDHHK21bCuysd8is0FCsSvcHnuwyHie6SHKmv9TkTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b05TJtsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b05TJtsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF339C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724003153;
	bh=kbFKIYsrGAs4BIcegj7adiE8jdex3Xx3XwcmzZ40e0s=;
	h=To:Subject:From:Date:From;
	b=b05TJtsI8h+zrkWy81lok9oiPop0EUWa3DkdXKXmqMIMHiNcB+OxbaUWN1qrIExyB
	 Tc9Yu7JitKk9wN15FqVhbfPhbmROAJAhmKsWGJFf7pQ2BcV7Z5EyZATpcSpVKLLG/e
	 F7ZwwiqdpqAljsqjTNfEmOUUNJ5Jlhx6TLQ737BuxuP1o53GMJ6EVS1NxBOscFW1eU
	 xEfBPV+9rptlaBFQEYYBxBl4+xrdMcZCVHsDAPXawRlmeFEVDZiGRngI5LuB+ldH+b
	 jOJ47BgcRtAjaClPy+KWeFg5e50ip/mF89NBWqAwKD0FoP7PbxEMN62bVGjIWoCsDC
	 f1ePVZdu2MOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731EC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400315361.12519.4973542206520879509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9bb3c657455f6fae15681488356932ce963c0d3c82d9075c7593c71a238976
Date: Sun, 18 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724003153
