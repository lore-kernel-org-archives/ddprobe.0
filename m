Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33D817DFFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788930034; cv=none; b=Uiuncun/gJ47vCLQumVGU7CvrKGKclipfIf3miZaIB9w7OVvH+gBZSaRiDtgTN4AIc1Kk9kQLniW5y9m0/AdJDtezfH1gOTVvQaKgHIKsS3fI/vY/ka5EoBgPy5Fc1lXolGylxNZ57lBFeuwE9U7RZ8ZlvFRCc7XmkK7K8CXgB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788930034; c=relaxed/simple;
	bh=r07E2asKc8wrL7Dq/9CUgwJWLVICb+hVn+23fN2AR6Y=;
	h=To:Subject:From:Message-Id:Date; b=OHXYwS6KyfRGlB9vLKUYo44cQ7KOVBwxW3TLQPSv6dHWy4yevSPCchwTy1+vX828dkCvps1N+dNL1/9dS7XxJe6Ik1tu/T3hADzRejUXJ5mXamw0IllhuR6lLXMUVFhKmnysHe407vnE7Y9oqlgI5QvyogV3K54791qA9ur8yig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGokh0IE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGokh0IE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B2CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788930033;
	bh=r07E2asKc8wrL7Dq/9CUgwJWLVICb+hVn+23fN2AR6Y=;
	h=To:Subject:From:Date:From;
	b=EGokh0IElZRUqBfjHL9ha7/JPELgR6nGR1fDQDCG9n1EQ+ImXff8/ELrWYKqYZLpO
	 BDu730yWnjaas0ChGcdzs4wDK8u9RjiT2Jlm5mdlBS6jTfJ97EeukwyeyrHl8W2tsO
	 sAYRqbgPp8vPBo4meyyX9zSApbk7txgr0bOOztUnh0IDyLN9hZ39UM+xpVb/l1Z2BN
	 QmHmvOejGhSeOhuqqxOsTJEg87GalSILDus0sBFIQVaZtUcRFbTAx62IdZ3ZyEqoyb
	 JwrDtGtIDfEif9DSyNFnOP7AsjYCqGErQEV+p43AVMY0nNzCioCudDGfyHueA84hNq
	 sOYZMVaGHi3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE45C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893003368.10111.1895690124065600289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c67543ff86cd663f423009f2f100af9d50b50956c77dd4b5442ef12cf89f52f
Date: Wed, 09 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788930033
