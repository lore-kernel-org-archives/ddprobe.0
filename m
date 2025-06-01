Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C711A8F97
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748771994; cv=none; b=lom+STq8PII6hyiG96cgLuwai3vHF0TG3hqFnnrqzrAvK2/c7ko8s8XTlpdQx5dqcl6hPBbb4rlwxjSnOjJYMZfG4fMojYaLy7y0WUcxSf3aL2ATg5EC7fMjeITEYVeXR8EaSVR0BRhZ0WBpB/ymJJoHP8ETZrpa4Sjn1T/9znw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748771994; c=relaxed/simple;
	bh=HMR4HL5A20g0iq7MKXh6QQraruAQsbpmt3gHvSUm6Kc=;
	h=To:Subject:From:Message-Id:Date; b=El1KOmB70SnOGv/GYgmsSPYWeAa8oivf8YGGlM68YL2eFnznPyDJRxUTY0uQSJy4r+Y6LUatwbWkEq10symunhlGwDIV7ZFSeT7I3WsKlkJTnYnNTqb4l9iSUbg4lVOYGllPNXz3mSTRAAYvBN8lPi0cUnC6s5DT11nC25fn5ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lryHV0CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lryHV0CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A191BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748771993;
	bh=HMR4HL5A20g0iq7MKXh6QQraruAQsbpmt3gHvSUm6Kc=;
	h=To:Subject:From:Date:From;
	b=lryHV0CBxX1dPMMOrBCMy8lGCRZuvNQWmK+nMa5DEPb9HrsHY9KDT2WpWuRHkvb/G
	 aGdp0UFmHWWK0/QNx8XS8ncDvETFNRnv5PdlWyfoonOArr/t5l79BjIjXhIgq7i8gn
	 6G8IFUFLg+dnqXEyyMP7/IRXItAESeuE1A865XPM8aQX4O1EUi+rYEu6R4WKQpQHfI
	 GkIF5VrGq+FkWXiLBS9wV4sweeshjFKBA2W4m8B+FUBnFEISdfus6JkZQViAm7nmUb
	 pWmv3rsnK6aDj8RNksLU+fm/vB0G6iqDzGrWlQSyhHT+7NznuiCf/oj6NXr6TBWSyE
	 Te/MzaERIHfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF4CC5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877199357.19199.6872730970426839616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef4b998401dacf2c20f739651286c50996492e0ec741f9ad0d7e2e3be806430
Date: Sun, 01 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748771993
