Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4143627A927
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747903194; cv=none; b=tBu6/QwGJKqqfAemVCFoJzGdp/7xXnaCAphhr13PPMh0zrLgbVFvRtyx4gqzOgDfthpxLe3ullbvQUNS/NcElnx5L2e/tG/xNF0APRW9vmfRY5sPtQ8vYOk2pD9So3SQUqfMj8v+pqwmugGldEaNF4UhLi7jJLlg6uRoJflzZTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747903194; c=relaxed/simple;
	bh=PXsHyGREKkn+Ayph3h7TIYDws00pFaO0DtwRcQyUcsk=;
	h=To:Subject:From:Message-Id:Date; b=e3vrUw+/X7EwD3GeK8HWUr/6oJGOln4E3gHLQ8uy6M4UchQGgo42fx5cFIU+181NAYEe0D5qjC3QWCf133GiWaU2o5Cv8LMVySYXvZzabs1fRUsstm4S0/GyLZ6gc6twhPPQ0DhWAp4UYI+91rwH9LTCasny3Qb+HqTSAG2Emv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eind58BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eind58BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A20C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747903193;
	bh=PXsHyGREKkn+Ayph3h7TIYDws00pFaO0DtwRcQyUcsk=;
	h=To:Subject:From:Date:From;
	b=Eind58BPPmCIcVVzvwWKmWYZ8CUs/k87E4WS6nJrYdGQlKJVRIjs69KwqFshV5EIK
	 eGPJxTYfVjKr4Rh3HMliVUhAzzPcHvx3NrLgV5bNysDEIefUTDPOmNUkkRwn+o9CLq
	 Z+n9V4Q+RvaR7PQA63ujeXKtT+PvQ4Nla2ya9mfDK+rkwuRv/KrsXRbk1ik1a1olOV
	 kdGbX8wXQNYl11k2hE6eyyHZ0ODVbeN6+U/GZPkZeQKMiC1nTGGfI0HfZsIzoZbWgR
	 OvGAzeAlm7IJbn6Z+PLYH7OUrAHtagtVBPL+FkPBKyDl5FQWEIS3gpUw5iV1nsemh+
	 dHOgnN6RRY1yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFBC54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790319357.15446.16710223866495665438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9428fa3b01f5f16ef7f0f0f889c009a0d1735b478bac1e069d1f64e1cdb1f8f
Date: Thu, 22 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747903193
