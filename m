Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FCD19B3EC
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740538134; cv=none; b=mGxjWCnLeBditKNAx+ek2KLHIenJ7y4iU4g4EiQyyVoEEvcJxSprezFORzPKyuS8X8lRM4BjZVQh+9+2hIkJ/q9IQJjP9KL1cLoqJY284Uo58KVjlmJu4eCOzSaqia2gvMDUJIt8+kHlTPsmnyLWejINPyg0him5DVU6/7NghSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740538134; c=relaxed/simple;
	bh=v6wc0Fd32V5Y8KNp7oz7g6jHwRXkI88tUC4EQa7E7MU=;
	h=To:Subject:From:Message-Id:Date; b=N5olQnz32g784/TafLO5QAUEGD3R+wQzUBuhX1GPcuUS6Kr4PZyxQCMmOlPzvt7v+Aod0mTh4eJNEQ4MLvoPLf0gqODQ8T5YpXgY6ZPoILqD8KnW1gU9BD2qnN6u9nqUrS/8nCHDNmmX7S7LoKxZIwqkWpNpHMXrwMqjXfXcqDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oopdQDUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oopdQDUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1677C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740538133;
	bh=v6wc0Fd32V5Y8KNp7oz7g6jHwRXkI88tUC4EQa7E7MU=;
	h=To:Subject:From:Date:From;
	b=oopdQDUFLMazXds0joNbOLU3K2vv1wi+D3Zxw9fQWMagcIYuBTgR9Arx75d1FOBAG
	 O+jc/z8LoUn+q0COn89onzL9shht/YbJfQ8NAFRVzXg8MbasRm0iqZbiQgcywTdJLU
	 ISEgHR4zefXVRI2FRELrCG6OE/BFzyG2zSI++WGtIv+JuLclKPoYZCO4MjYHRQ6gRW
	 6wpvUF+/WUHdhlpx8Oq2tjAne4eTclux6gUFnuEyEpb6D5a8BSByWiLfOCw4bDKyYA
	 JYnQPnP1kxpc30cHuNTCnZ3RRWgOOcXAHIYHd10RiQmSg7V9xGqPF1dSV1IjelHa/c
	 lBpAJnoRdiLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB93C021BE
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174053813363.19614.13941074377821471205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a862a3ae9fd7ef5b1fb9665902da3a47e9dd7cab0a840dc829e97a2293526a
Date: Wed, 26 Feb 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740538133
