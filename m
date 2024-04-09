Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D59412BE9C
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712694496; cv=none; b=PWzfy2chRq62+/I6OuAhZkNdUd+/xH+Rxpx6HQo3kah3nHvenP/eK8uvQ+fn9JZjr6CagG0rfV5Q0q9Rqyg06lWLZKS/83fT5R+jpy69jM/pHHaR6/rqfD2RzI8TNFYaTIcXLfhK38XNsHk/DtoxFOJJY+37HagqH+RnilLYpZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712694496; c=relaxed/simple;
	bh=vHXVhaucewCmWwyxuAeCjUds7IR2BD2K7Xzhzf+eqCI=;
	h=To:Subject:From:Message-Id:Date; b=mkYBhR0ZT1+T26OdugoWYAs3Q6IiwdHS/UQTasElIPqM6UXWgnhfPTQdxVNl4ms/8fHCEfJt/sR4YIRuc7qzCY7t1BhiEaKy+lcUsjN0ZID2qQPK5PtzYIV2WADI9vNku1MtMtPkX48gsGb+8gApoZ0qFT1qfLnEVf1lWrHAICo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koG+Eleu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koG+Eleu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B866C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712694496;
	bh=vHXVhaucewCmWwyxuAeCjUds7IR2BD2K7Xzhzf+eqCI=;
	h=To:Subject:From:Date:From;
	b=koG+Eleue4wPrx1kY795EB8ZpcrPpQy4LHiN1HToLS6QDtqpXmOxhKAi22zoSp/52
	 lOz7mOjGhCcfazOhMQ/R0I4q9khNQJbefuX1QJBlYN3q+9rtd+Wz3jDIasGL1r6hhe
	 sdPLVVbuZszctvDnBGwQgLJ9uFlcN4RXrDUfEw3yqmF7SRpa8mTq8o3Xe6PcieYs00
	 paiLCxp6h33P/rBVrHEi+nAKVYtBRG5/iSHzBh44PfSQ44+yTMQOWrBetA7S7bJIqA
	 unTguSOLZe4r7iZirf7NN39cMhXrbaPjy8vaMODTner8hT6611o+KtUyr8bMrtJvN9
	 ZtVd+QEJKj+5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692D8CD128A
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171269449641.7176.14030813234564010482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba3fcc262b0a227b1513941f368a282b61a4627e527335c6320294ce9a144a46
Date: Tue, 09 Apr 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712694496
