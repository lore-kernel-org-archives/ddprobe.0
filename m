Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5818C1E
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746679194; cv=none; b=J9/ZWNyUqbv2kg05IeKAGwRJFoOSC/jsnVR1/cCXHwvgiJz2PXhiDxHE78wjQ8C/cMkQ7VSoRzWH7jkAwmlH7SrZFXJ90mDtPOyHJqeTlCUxtHIfAzHJomiZsd71WJpFEIVLTT/aCjNTqnOL0hHaAdPA3Lnyvqspgw2IPLa10hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746679194; c=relaxed/simple;
	bh=9j68Y80jQaoJrMXyLUWYj57/r44cLAwHa3Af6cdlHHg=;
	h=To:Subject:From:Message-Id:Date; b=PNddMPX12oT6vW+hZVl3RcGvobLcAu/kNDqSWm//WBucFyv8+1MV4TMBFufBiYqPiEtecYANK52jiANvEaY4SvUG+y1KwM+xzYBh3sNfkzLRK4jvd7TRpSfQyg063mhPUeJJvNP7iap+yYCBgj+37kNHE31jcSczxtW8vHz+skM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnR5zZ3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnR5zZ3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B7C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746679193;
	bh=9j68Y80jQaoJrMXyLUWYj57/r44cLAwHa3Af6cdlHHg=;
	h=To:Subject:From:Date:From;
	b=JnR5zZ3InWipTJBaJLTnQxKgRPAoHi73y/bmFGcr27euPHlGP94v3HQkhmkeLz2B+
	 5VY1eRoU+KZknxgYMEuybWYIqYvzq6N0n7vzMtzDAhUJE/BVusvnqGgQSYvBsKtl5U
	 1HvLWBaCPvx7KICi9Q5Oec5ZtVxMAABl5F/g9t06gYYmZba0wlBCzTVa1uwK+8bqSO
	 SVlM1Jiu658csIMqFbQdaJMY+nPN1yRAY+4i3ri0qCDdli76cb8ShV40UA/bLe7ERR
	 MWNR7++nOgyeCsrX+YmtkckgB3g9jcnvaid24mdGm6QM0vqS9QyVq11GYYOW/Dj9xN
	 SRTtavIWKkPBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C2C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667919357.29988.7431513373617336447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7476703726369c0abe09ad0413def8d4a5f8fe6035007fd90d36eb0d7d001177
Date: Thu, 08 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746679193
