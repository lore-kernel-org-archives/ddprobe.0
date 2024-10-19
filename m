Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EDA36C
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729299954; cv=none; b=J6FyONL4MjylXAAB1K1R/wIXPuaxK8DciU6Dl8OMO2BitaCc4rVzYNiNgeL1m+ap54FTNhHg7eETi9nE0AfABalYR/4WKolw4oXjKJww5zfLpql0XNjIAsw28fXgVyUNWYZY3hBU0yWQBEoET2j5jEwXAuWfbUnixO+cZ/En9sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729299954; c=relaxed/simple;
	bh=ocXtfH/MJc64zYutoYFfA8nz+MQIFGoQXsGS3sZp65w=;
	h=To:Subject:From:Message-Id:Date; b=f1NLYkOyV7Mn7ByK9DsThqWLflvJ40tRFB4lpGPhCxVYFpMW3heEYrrfSMFYcYjB0qWRKKThA1mpyfVruNDvrsNy6zXWK8nRghr2VgYH7vCvCJaYnUAsICTnrrhSE1FNfFC/5iUQfCOqD6NC97NcHlsFjgNJ5xXmAfAImo2xfOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjxOjn5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjxOjn5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B251DC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729299953;
	bh=ocXtfH/MJc64zYutoYFfA8nz+MQIFGoQXsGS3sZp65w=;
	h=To:Subject:From:Date:From;
	b=bjxOjn5m6iwmsuQCK7kwglk4vwwAAFk0s6EJeZaqphGS/op/ivb1KFeh4SzqLPmT2
	 VP2dWHHcBHBueYKx+y/uQjzBjPr2pviSZFhcMueX5J6Jk/Uq9Y7B8to9E10CQYxUqy
	 ngB3vZPkq+Ed814PJmWEbodghtE7SBXIfpYFzFlW/HCf6mBU9ugffuOm3PJR86A7KF
	 70NNairWqOYmy4HyRDna9pv3KsoC5C8dIT+WaBdgn30GIyWPTrhQFF8gQe9syCYpYU
	 bqZd0zVDOstHQczC1yjrEVteask0a8wmlJcAkBlJK8ZLxqsZtDbI5yoCqHK9/O3Bxs
	 eEkGRkN4Gc6PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1CFD3E195
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929995359.25006.1211574420286624172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e25b48df228366473794339ac90bfbd95f206c8882399710e6c62b95e9be46
Date: Sat, 19 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729299953
