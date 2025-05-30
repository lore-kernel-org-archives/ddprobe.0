Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C197A4C92
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748647193; cv=none; b=DUqKor2v+GA6ecXZ4asN6eNdtciTs41ppSCDfavP8m3wfw7qKHB7ibk6Tn+CYwt013u9C7aeiAfsZvcwG8rksRFlxggV4h4aUwXhaSHDx9jwucdzMlzwN3qdYVssDmSjjCLpy5laXYC+aza4SnpqprByyL+i1O7qNyADHEipSCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748647193; c=relaxed/simple;
	bh=uVkDf2dtFR2NheE99CoS1guYzRMBKuX+bxbzbHjwXv8=;
	h=To:Subject:From:Message-Id:Date; b=M0kXVPqA4w7pp7ntJvUaN3cBMHOWQzbo543T2p+Na2wcHM/pd6KAVEjAVD895OoWlqnq1e0rBHb5FmkN6LX9CquiD1PIeeJjiZ2KHlB7OmA5ggvTcXq0RcKd/vP1VRe7eVgehFQ9SaBT8/86eGqiXbYCQFwu68Qeb1QhsX5rFuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmUw/Jl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmUw/Jl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E16FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748647193;
	bh=uVkDf2dtFR2NheE99CoS1guYzRMBKuX+bxbzbHjwXv8=;
	h=To:Subject:From:Date:From;
	b=KmUw/Jl0m4oWe9RPqzRewXDScWhFcNQN7iKVsDetRIHL8ALiRZEmNo0Q7WA45I3q1
	 pF0VvLTQj22tNr1eC7XAmgD4KNEIqtZo7nq9DGZDzE/QvmgXfjzwxhhAd2eDSUXCYc
	 UWh4Mbatpz1zi6F18qCU/h0fJBakMKTdbcekS8FXS1GwGKVtELa49ZQipRaqeqzUOG
	 +qVHYP+y7miqWh2TbGQnVYsqpLMMhvdY9TmSN/B3omLlUjag+n+OTU1WVdiJR86l6Q
	 9LzessxIqHvNjQetmvWhtKGvKvFIAUkP7LX+++Tcy9b4g4mzvscSuOQdp7E1ilRLlW
	 zPOvzTbu0SQNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC4C5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174864719357.15009.14092205491418458648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82e5416a91d0188085b8ee0932273701617b64bd6233bea8f66a64bcee08bf9d
Date: Fri, 30 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748647193
