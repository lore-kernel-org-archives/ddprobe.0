Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B6ABE4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750561794; cv=none; b=PLBKV8KcFDAhvCEBGOmcJRBcJoSwvbKN7ulh7XmBsSetvDdHrPvChko7na+TpaWiBua/8c89iKUxOIseIaBAKy3Q6GRLqxB8qTJWN3LdhD5g6l66dR418Wqgwn6PdVaGJuPJ677uJrLDfbFIBFkx/d9V8e6bWMZMss2uQP0qb0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750561794; c=relaxed/simple;
	bh=6FJfcEzcl4HjY5Y/q1nicU0VN+jS7nsHbNMyq0Ld3yo=;
	h=To:Subject:From:Message-Id:Date; b=RK3Ud4gb60fKnwqk1WjPnAtG5OWbGJQd5WZgqYeKvN3k658CGlqCP6AbnVfl8whzj51tDJSUs+B/mDOsGuCUSr4kbN/3sbQNOHF+Jp5S0DbvdBgnVzSTeH7uuAojxIpdshMDhv3/vtQCS+E6gbg9Hc6XJCrarmhsf/0PAcuO3QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKxd6eDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKxd6eDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CEC4CEEE
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750561793;
	bh=6FJfcEzcl4HjY5Y/q1nicU0VN+jS7nsHbNMyq0Ld3yo=;
	h=To:Subject:From:Date:From;
	b=ZKxd6eDZK/GQF+pBwNfgJ70ycbxS9Z1ERU8AmVidbK4sZIMaz9k1xvT3JRx3LKAvz
	 0JMrUHgp1wpJ7mMLSiEB4iqevHQSbhXpDJ3QUyjBnQvYCuRnQe/WU5DdjlD5AA5SJk
	 izSJsHb5uPsKAnKAv5FVcyQC4whpV8sj/hABWBpdr8FzybRQ3ENuMMKXgS2dQ8o5Vw
	 YMR9sTrUhoiLJZ5+ocbUEzcpCCF823SKB2FTkBlTHqIj2pzrm2nzyzzC9wWlRftNSU
	 eDR5N3Ior8P33pzkW122UGSyqA5utSdx3cCqbkVjzXvn2tpCLmNh1MqmhctCtvgokN
	 VFvYq5bJPqJTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94853C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056179358.18522.3140544178521260620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a659eeefdd0c17b7e25f336c0c0ab5eb47c60fcbf89c3d25ce5bde28753e90e3
Date: Sun, 22 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750561793
