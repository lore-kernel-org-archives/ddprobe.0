Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E27B24677B
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762682994; cv=none; b=TnR+9DVa/xp0iUC1ULaoDnS0hyuO6ekxtr+ftQ2D4G/STzEV1d0S6AdqdytsoREv77jh77yjSN4nYV6ceMpzi3SJDy4onqq5HhIHf64YIBBFNkfUPi3YG0gpTBBOzEGBtDTnKnAoOmLx+udlJopr+8l4060J6itQxdybFGA0mUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762682994; c=relaxed/simple;
	bh=WTNeI9cb8e4Cz0rysYNm7jBI9Wc/CbMlP9PUrwCptps=;
	h=To:Subject:From:Message-Id:Date; b=Voe0ZuGvl7N7pBEmiQK5FrwHDhra7mc1yU0Gc+cWk24Zq9ZyGxuyThLac/ROTstf72owcm55Zna1BPkAp74ZYCiGaJAx8On/oWABa8iDwFxPvu4PMism6rJ6xRDyhfP7LEGT0iUV2Dhp4sRqWgkox12jGXcyZQFXZPFaHUyAJhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZX7wJs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZX7wJs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DDC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762682993;
	bh=WTNeI9cb8e4Cz0rysYNm7jBI9Wc/CbMlP9PUrwCptps=;
	h=To:Subject:From:Date:From;
	b=jZX7wJs/9F46g/fUua3itdnkLOcEWOgeJbNUpK+FWrtk6NQtv6BhhN9to+U/dOiGw
	 wzW/05KurIOvRnHzrzrcvBugglhd4nKnmwXqkqgPWrZwuc2Dh71dt2/p0f6cyEYX0U
	 ajdP5trsjZ937upBgwNxLKJeNTSNUVKaUH9A5spi/GVrZPjY9E9EqfU4SVDonWb2H/
	 mGgsTFNt0OkXZuH6t54EXv3eCkr9YzmV6Dj7Jf+j7X8NywZtGiF5g3iCBCTEl5jBKr
	 IWnO1kwqBbB/gyF3M+kd+WdUoXQA6H6FvqAwhckEBK/UyR1uUhrHaW1V+VSrRRiW6j
	 kPkW/og2h/aWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9550DCD1297
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268299357.6749.4965193412101580110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47bf3caafa5656055610779ab5c703ec5ce2013518050e1b3f8997150729c28
Date: Sun, 09 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762682993
