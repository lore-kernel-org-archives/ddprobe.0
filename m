Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FB8647
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724906154; cv=none; b=Xh8ZfWgwoGmPVfBT102wQytd+PYYAHttNZ70Wkxapraf4Do3GXNnLkV5MMqa7V+1466ZF4gqfbEJXJvU6j9wi8aZUWtw0hbmqk3koZpY9YmY76+Tcd7ckyXRMcY/DYqJg6f3Sxc8MIj5Pa+ulZCaiCnF6NLcSrRM7ilEoMrVaaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724906154; c=relaxed/simple;
	bh=JLd09A3V9621sIP2W9cTCzXpFagkx8l8DkvbqeHY1sc=;
	h=To:Subject:From:Message-Id:Date; b=hKV7rqJ9PyDykFmg2jCctRkGQeyIrkJT3V8K5DEnTj5hQe9aJhqM08JvumzEbwZqsIevDDEwlakt2y9T+z28nAYVFq7AwhdjFlgYUGTUptxwqKI2trsaglpArcSbLHUPhY+PKSrWYz5Dx/8FYocENcILPM027/Ad3Iti2aWWus8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZQkkUcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZQkkUcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9379C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724906153;
	bh=JLd09A3V9621sIP2W9cTCzXpFagkx8l8DkvbqeHY1sc=;
	h=To:Subject:From:Date:From;
	b=pZQkkUcpAnfM2bTbxC8igSSc5ZxX6FCybBCL3H4hzMdEarfGAwVT5TWcblo2ea2+s
	 R1GBq93BBKYD9JaEqGphW0BJ/KobKaPdhhgU0bpSdFohJx/2HJ01PCOv1vfrnyWeYe
	 asoAw5BwIxP5Go3gOap1Iwda2Qjt8/8GKxAIUSHjb8PW94Dlbm3n5HL1VfBp9Bdx2C
	 EuIiQC9RIshBXWUWif9n09ooh8B0Gs0g7OaIWVAmbTqTZn+YUMLjKpCzHxXhuTMvJr
	 ZT03xkSN56LVW1YGw0z9yXdPY9lY5mXyRuXjuxf5M45jwZEufwcvP57SXNp/kLH9uW
	 BPi7aUtIqCEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB2C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490615357.24388.9336129936870314718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e4955c2da12f1cd8fa4b0a23de7083ea3ebb9b3a89f9062ffe1aabff0c8ad8
Date: Thu, 29 Aug 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724906153
