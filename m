Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548FC36D4EC
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763915514; cv=none; b=G/zOzzVqwmim7RDYcg/UMZS0EC+zb7nLPyDg910I0uaRiszN9DncpNNu1IQ1qj1g5jFXam0KUeECEgfPNLL9qCJ4AeQt8ZM4yWtoi3EkpYsyTq3mNSM4tIW3JVrgZxgx52F/lZT/P8WPCSebgmR/jzPJQR2rVqLAnOMjA9x6ex8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763915514; c=relaxed/simple;
	bh=4aMtLnUjhuqDcYt8VNieX6WqX1OshjpUTz2xL9wXmAc=;
	h=To:Subject:From:Message-Id:Date; b=XV4niAJwnUecN1IpLK0h3G8LvUZ8qr6/Z/pda3iVK0OeFBE+/NjYsFQgl3vq0wM2QeRVLWl8uq4qjWjp1unEz1xOLJMYp2kpy5Qjlm/5xn4XgIgS3ZQCSC2WoAouYDwwziarFe7lzDFGiR30gwRpp1Zpm+RrU/cgYMPMTbCPA6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdD5s8tm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdD5s8tm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B05C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763915513;
	bh=4aMtLnUjhuqDcYt8VNieX6WqX1OshjpUTz2xL9wXmAc=;
	h=To:Subject:From:Date:From;
	b=PdD5s8tmH83atbCe3IPOaQiPMc8T293wL5dT4SRytw4L2LQicTrBnsHR74zgArrbg
	 qNiIELmZwGc65R4+bWcUYbgpBkqMHBcwMGkGmQX0C2BB7JK0yWcCKovgchZ1KZVFR6
	 NGu92NQE+BXLB0u6tx9TZfEkS8Wrrs/5rPD6JOYbKLkQWa0G7CXE7Q9CRCTCuM2KAU
	 y3tLVZ6SvsSvwtqm9XnmA9JyIYZgntTqwdRI6MskbvzbudmK4oJkp+aqm6gRojaoUJ
	 arbPETDikrP//iab1Rc59lHvZ1x+rnb2T0vATjR/ip/QitMtPUV0uPcSxusrIw8v9r
	 7bR/WZJc9Z4VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C1CCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391551358.31039.17989468148727431213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be5c025e4191e7c8146d4e88488ea4100c46deb64eb2d391123e3295145afa5
Date: Sun, 23 Nov 2025 16:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763915513
