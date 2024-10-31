Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D0213F42F
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730413554; cv=none; b=vBLh5ViRvAXz8tIPRQSMuMoG6x6pSYcjoHb7NIy6kr3frM35C6JSnwXa3RYscSYYPwKoo0HbepkpkrzeqT/c06XrOBuUVSj5A0UU5CWtQ8Alt8FNaeitnIUn5V8Nd9xqE+ZdkvmsuqyEWGqxgBDd2Te4dPMhSwVMPaK3fOZ46xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730413554; c=relaxed/simple;
	bh=76+XaqxsEBgXksHc/4ld3UNH3Ma2+GNVocQdl2rqPx8=;
	h=To:Subject:From:Message-Id:Date; b=esKpQnmco++fCeJIv99TPOToydH52OffVDUPOWbM2pi+JcgoGIH56LGLXPSO8ag51S3Qbv6AEeOzC2LcJMvmCAXZzp5M2O7BSduln1bVj+dFTAR/dc8yFZAYOaHkmxgcqOGFuWBSHKIVsIm3g+HBrGmtZKWukQKcRXp2UlGC9aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pevxlfcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pevxlfcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F70C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730413553;
	bh=76+XaqxsEBgXksHc/4ld3UNH3Ma2+GNVocQdl2rqPx8=;
	h=To:Subject:From:Date:From;
	b=pevxlfcbggKnnMTOprQBxRbrQzjN+RA1hWokzm7yWLaahSVrDkaqYNDcLX2d+V444
	 XHn2bJQQO8+mk5Rrc2zGwveqhbswL05fVX+pdqzF89hhd0jf0zlgAwvHNzcdmXsC6X
	 Pjss9U/p9loke8J139SBm0ik3ZHvhHctb03+jXn/CcKfH0IJXb+UubSd4bI8snn41/
	 QHWbQ1hX/wMJ8R2cNi5PdHs4RqbqVqHFw6tFngrTS7qFCwM7fgAbPHtjUflpE4u+ri
	 Qyi5FCnoIvo9o7ch+LCDTZzL6SAkfG+thmz5nyJqi01jaWMFsrLL4AlpBTh/ZFz31T
	 PS9SdsYLlC6QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3173E67489
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173041355362.7824.2999368541716943538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a3cbd9fea9ad54abacf87ddda9d8b21047008cbbc4e03315b9694e915e487a
Date: Thu, 31 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730413553
