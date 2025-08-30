Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A83215075
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756528794; cv=none; b=V8vJFR9oTQFt0Byt0us6QAjEGIfCmnGfnuSn+PDVfU8bZ+BBhc/jGXDRo6qO9l1gdW1UT/z6V8PrsSkN5DU+EL+TB/Rf33dB3paU2JwXvwqwUUOy2ax9RV8CEgDFDc6stGvb9bHNvUM6qFVE67JD9MNjYedHz35hu80YL22bR9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756528794; c=relaxed/simple;
	bh=OhYv4uHc341X2PWI6KnyJG8uYqIyVzcftk9lufcXdO8=;
	h=To:Subject:From:Message-Id:Date; b=iIgsfyPjqEfydiVxp2dgjXh9G0GYEFzqRjgigtEFPblLbNh1RN9NnqE+9TKEPFBP388s5PpdGy0mL613AMqxqkWyrUITMrLxZUrDS5l2gGbA3B+JYCPosApRlZtO35LO5FMTeym33XeJ7v8viBXvdcCYwKqMxuD6Q+ih2tzTN3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2NoxSic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2NoxSic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55DAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756528793;
	bh=OhYv4uHc341X2PWI6KnyJG8uYqIyVzcftk9lufcXdO8=;
	h=To:Subject:From:Date:From;
	b=K2NoxSic0XJmYm8q0jDLy9/y7uGCvq8Fn/plzAsggK7XuDdFbo/rFsXRN2/qGqeAD
	 vhNSn4/Ysy+EezCSFDOjEkCRFINSn6h2LtafmZ0bpSpI4nG8VdldwFX0PCb/Dcv4OM
	 ULANAIbTy1tJbyA6Wpgld1PODd9P1+B5F3i67ItNqgUcagvizhZMoOEsp3GiCSFgJn
	 oCvLQwKrGVdwE4FrdyxL07R4WqRuF9JJ/sL3tpixrmpcdesdV276ILcbC3vIFyEE2P
	 nASToQBD6dF7E/5lm+bPZ/B1zUPh1dOE5Mu4j9PZlcYXmLDhUFt5CdyGQSvGoBfRE0
	 gKIKiM+COHBkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B0CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652879357.13854.13997150245225571784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b460f69792e06110aed41e9ef4ef56a8dbcc54c786e44c4de0a9b6d2f7fe98
Date: Sat, 30 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756528793
