Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0923596E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753597194; cv=none; b=FWPgUgUj/eHFeF5s0Om+PfCrnYu3nwJjkZMxjYZ1HwhJL3vjZFW8XC2xiS7oG7nI3qYkt4qEwPFeKTdimzOiaIgQFNl7bzALJx6qfL1xTF/5q9lGMDK+POvi4DiBFD3DUAGQgLJsiBSaYYJTa8IFp0mZor2bNOH1Kcx/UR3rAuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753597194; c=relaxed/simple;
	bh=RFtLFeLrmWz4zxcB/Kee64Z85yRObgqnaLYQKDqYzQE=;
	h=To:Subject:From:Message-Id:Date; b=lG8wov/BphX6+8wfvxXkZVEgzwFKPo/Xz/SbVA0xpJHNWhBwImAfyvkEdsujq48v+9stmr9jy8s/nty9VfE6RRpVxzhqZA7cQkJ2UUv7VnqcYbLKPyN653W7u4HKa5TFbyzYdTRyczJ7ZKK9rQnDHNO2mITEjG02yUJQCR1MqSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abpq+vPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abpq+vPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82FEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753597193;
	bh=RFtLFeLrmWz4zxcB/Kee64Z85yRObgqnaLYQKDqYzQE=;
	h=To:Subject:From:Date:From;
	b=abpq+vPgl7k6yTAoGuDayCz6Sd7q/pblCr5YZqy5ErFPd+tPnIryyW5KznxImessY
	 LhiAVWPgAIUADf4NqQaciN1/5tdF28dSoZl/oc3bLCpod2j1Z87GJ48GFLVn4oEJkG
	 BHzhkQW3qJ1e/QLDoehhIJp+rzp6wACWk8PAux0CIg4u2jNT434bOEE9Apfk0JyyC0
	 HWkJvZkH+Br2dpOCAuslMjg6iK8Jf57MP3+PVE8dxkcqgq3q/INYreLrquzwWkUizf
	 qfyzJBB0feddmLMvvlxaG0wSDvQJa/iOInG7W0iH0MfM7xc44Y7j1Ill8q/PARqvYK
	 fGlHDAyWKG8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936D6C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175359719358.1889.17791137133392334971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d8273bc6210ccead65a6e1eaa94f59b790167a4c3875d0210fa4d86ea0322e
Date: Sun, 27 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753597193
