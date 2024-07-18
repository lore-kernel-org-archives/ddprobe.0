Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245EA1459ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721334354; cv=none; b=queujk+34B3qpEcE3AQtOfsrj+sTnltY5SLSY8R5pZMIQHO3J8A2ehKVQcu0O5a2oqlEJXX4kKw4L0N32qBdwTWwRpNL2bqaoztxWjjNLsbXfmvPhSiCCuZ6hxclLU8pwHr8LSmLqxHCjmnhS7tmxGyJUPqaxiKbHnPNGaDWgso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721334354; c=relaxed/simple;
	bh=cxvBt8mKtH8w701orkapqQlW0RqNXW1WfrOFOYPbccs=;
	h=To:Subject:From:Message-Id:Date; b=OKEMYrXvcW0oGBTckPt2UZIm4BWgfoQEQ+3okNObVNhwTTPHOfuMnBI1D7QjH970FHuhopxnj7SIhyhKd+Ix4sZOhBAWC9RhTqynj9e2q2iu0wv38unevonBEnJFsvL0axo9k7LpYVenzQ75ShY9J1E8tt1Pt+xCx5WaRVTFXfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvRj+ESZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvRj+ESZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A921CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721334353;
	bh=cxvBt8mKtH8w701orkapqQlW0RqNXW1WfrOFOYPbccs=;
	h=To:Subject:From:Date:From;
	b=TvRj+ESZ4kaX7QpxVEUswS5zAbC5TfSB4GmDaT7GqXQ+JGSK8QO3QTvXakPTBa31y
	 ozv2enadG91oU8+/h/yND4vwLitA+TCvo2NdQzEwTwOzyuS4/N/LGHDr7LyRPE8ZQ7
	 O+enG9c/l/wt46ya29KD91vV3eUdolFolixAtK2+xwABh/9FylzTVjyZlPm/5834CN
	 d6NApme3Qo3UkuUN2V5LgFr4VGO/a48O1nkI/OXdV+CwkG+deiae6SnpPgrZ1JnofK
	 Y3WOdaPCjqkWPp9pCRq6Zl3qbS/InWReogmEZWWfqVqnww04npMpKftf8LVWxInU9A
	 WUkg0PHtkjing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A623C3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133435359.10475.9974725265773338926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9c39eca7c213cc11bcf0643ff9fe9a349cfe2497fb696f7f9ab1cb89ecbe2c
Date: Thu, 18 Jul 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721334353
