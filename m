Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386F0146586
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727475354; cv=none; b=aKdN0iBXxlQicUx/0dYfZarPnLZGw5Z2qPVkcALj7Fo8OhYIkzMjyH+VsNOqMqJzXUfGnxpOdFzSkD1rV8D0cFI34GLQqJEtRqmr3q2F6eHl80lmXRwt6leMKkBsB1QfLI9H/hstUtAhABu7VXK7Q3huvDVEoC8AhALuylaiyUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727475354; c=relaxed/simple;
	bh=9oVHiKLtVwJmMUy2+V7cb83kDAe6XDb2iAZxqujqxaE=;
	h=To:Subject:From:Message-Id:Date; b=Kb1DuzCdc61oy/Sm4WAfzhfCCVFn8r58fZWjBHO957MAGi67kGrO8wyCQARVOcrA5yuIMfEv40zgCwKdZgU9Meg2SFb//LvvLtMfaIc2KIp//vW3MYLP8QRy9Yaotn4gSOPvN7ta0Qw+HqJ5X0Q752Yh0lVmnaa2XCKE56PnbfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tylyLlqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tylyLlqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E3BC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727475353;
	bh=9oVHiKLtVwJmMUy2+V7cb83kDAe6XDb2iAZxqujqxaE=;
	h=To:Subject:From:Date:From;
	b=tylyLlqevbr09TO87yrrc0WkuCuvelQkk/7likFN7qVodp63q5lOYr+oBPrmBsEJA
	 rivHMCKXoQV9Q+gLO0/z7j+u92fEXgpui1LLk+OVUstEdJLXM92sBbHp1gIOtdNOat
	 freLhnPhoTCgJXaj8WnZjr67jivDZZzmrowx13frt4ERC2byVJAb/OOncPSle5+aqL
	 nIHGvOuCRbramZUQ/n97BDxQwq3EWU3awp5Zg3gUF0Twv9XrZ6G9+YRqgmRqILVOgc
	 vNrur/bViJepVWq4H2cHHJ3as7r9ftMtiaIgZqD2XR9UCR/5Um9AsOMLyNth3ODCI8
	 8/tJLZeasJqmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90759CF648A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747535358.2563.10829633753545265229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34be81116b5294db2d04d5df3d67dd3f6bb054f93cb8b7c29b2fc3bc83ea3743
Date: Fri, 27 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727475353
