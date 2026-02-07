Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3C8310645
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770457434; cv=none; b=MNuqoQmvT6r8Wttk2QebEKga3EM5FA9cACdLhIr8u0NwSBXSNtOOFoINevOapZ3huk93GQTO/kgArPjzBoMsEAKXsx0qtMhK3lKrtjqtFKRFQpER8DWL7dhW0eZj6lEQlEl6G5mmjEuplDnk7tAeBGdKFkbk/pSoaHSSusyzsqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770457434; c=relaxed/simple;
	bh=JursUkyGlyKmq5UTXsaxB+w5pJ01t/0Uf+0mu0NX+7s=;
	h=To:Subject:From:Message-Id:Date; b=fWc+MDVpuoNNbaWbf1PmS7VxmjsPQ2Jsm7qSpVB0G6DCKplL1xavH0q+yWfGTtEErAi2WawO9kgkLlADQ4BbbRCmRffSeRgiOl+iM5mdiRp7rSBoegAiwFJGaKGWsZ9/j6SpOxo1KybXU7uMzWEagS9SqYKqsg/qLWl+93qdHxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVJX7fHP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVJX7fHP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AABC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770457433;
	bh=JursUkyGlyKmq5UTXsaxB+w5pJ01t/0Uf+0mu0NX+7s=;
	h=To:Subject:From:Date:From;
	b=VVJX7fHPHnJN5wEodWaADBYkYJ9hc7wc03d/nQ6pfxJBfZnBWSwROr70gm9OXo/ZE
	 GJMAcmVroq0RX5jZCuJjk5f9tdpdFopwLEGkpDgDGMkrlfd4WdV+uDPRYDklwYGPOv
	 Hkh9D77TK9Dox+aIYzcRdL37RFchDqDXd6nHPe1RIi03OMUc0Mx/BuVzJhPkOhpcLR
	 qnTpJ0FoCMyIjOWr8GAnEpmp8YEcydV4isq8rek9ajgFfF4SnY+Tg9lHvvT4IWWFBc
	 MXnj+1REAhUOl6VxzhMrx4wMMddF8cj99Oj/2WaDx1Av5FjRnx0G0rfvHcpJJc9UKH
	 H0uIGs8/hDLZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E5EE20B6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045743357.27082.12419182845719649743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7200593f3946eff36c2bbd6cf60fc0aa27cff3fec35d123ce791c51c5fffbca9
Date: Sat, 07 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770457433
