Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB053C30
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725141954; cv=none; b=VA9hLU/6waVLiDplpL9qGxoqpITHAheHYYBUWUImx50eVw8qF6QAgKfHLB0d4Z6K5PieAhLOm3PYYwxAMrWUAmme80dUOSdg+HjM7yP5BNOFX/i5kDsASxrY8gxR3a9EiJuEklKVb1vSHrY4mvl8xN6SLd3P3gKUCYqlydTjqAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725141954; c=relaxed/simple;
	bh=9UGrhlV++FAo773MumXTduvyGlgngw4nWGhS/2cBz2I=;
	h=To:Subject:From:Message-Id:Date; b=pc+DxBgoOP+fYwRVrRHAGoxg5C3aO2Zx7kAlrVc7bwQMZrTxZLi/QK2v+/thzU5PyioN8JmbZYsHNoAxDxd1Yeb6wlwTAHV0Xej31iqEk1JxRPWOwnT4u1oKi3cuyGAwfc9ppQjXDvRhR2qYvlf5NeKW8hXHG8fSD/aqTLqfeBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0qCV/z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0qCV/z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D68C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725141953;
	bh=9UGrhlV++FAo773MumXTduvyGlgngw4nWGhS/2cBz2I=;
	h=To:Subject:From:Date:From;
	b=h0qCV/z00TFUcpA2L9+ZlFpt9+FgYBeV9sB7Ki7GA/5Puos/ZNNnNXXsB09gZDYRF
	 jr4kstTqhG493dBfgTWE2a/Dj3PBmcaN6z5mAxJ983+cjVbzLmbnsOOwAov9cw4a0n
	 7glD/GiGML/BADWRtdfPOMCmRz8j378mJ/ktGHWuf0cJokhj229R+qLrYuDGFQKVSO
	 JGcD+gBRpu7zIx6u/C4QACet1/+Y5rf+b6eubmrQLv31qGa2zi3E7Qz0C5il9anAjY
	 rUZtaYfMKVFsViOr+sCnxwvG4UHqx88/97EH2YGdYpgFi/P5cDvFM4GlxyQT/THjQ5
	 mnkzqNtvxvXcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1E8CD13D9
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172514195360.26009.4481041018980000197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79b8df44a7022e041f66e0d544f86515a4d01ced9e2ae1994493a333923b3cc
Date: Sat, 31 Aug 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725141953
