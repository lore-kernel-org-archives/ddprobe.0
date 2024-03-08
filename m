Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8DAE555
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709875097; cv=none; b=b/Fdjyqe4Mhh/y7oAF/5qYOHehwlKt13synAniUExFbyqQdKeABiPBXKCNrGFRV2X5WtnTxqYIxQIPWnLzDc+/b3QiVdhMb8dl5dmVvUTGeLJquGipMJAPHM2BfHEnhJUsNG2SReoznLuYKVGhnjwxduyZniAD5yiBEqmgHu9LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709875097; c=relaxed/simple;
	bh=d2zyXAmGgt9JKUf+y1D20MA3gvk6dPZ0/sTWLpQKgm0=;
	h=To:Subject:From:Message-Id:Date; b=MjUjkPmH/lfewr6mgh3y+C+aVHriBthH2PQdcsRNZEcwNXupU0MWRLFMTL67bthEL5dX8KYjO9CjLHd0SUh9Ul7ywqURtYd5lPYg+t5KDb7vLrlxq4BCirD+hmnemPooj38MdsWmOxzFnJfP31OKuKMRGHOdbybI5IyGMxS4DIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMf3QNGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMf3QNGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1CEC433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709875096;
	bh=d2zyXAmGgt9JKUf+y1D20MA3gvk6dPZ0/sTWLpQKgm0=;
	h=To:Subject:From:Date:From;
	b=pMf3QNGfFJsppPPpPk+vwalErRrQ26vLTPTxSfPrvINCm+YbN3bqG/rj/Z8hSLPGh
	 ZFGsgbfr608+4tAPL3zBSu7EgSxtoeQdB4Ywxn4PP7Yrl+S3UrdWQKrLSk9Xb+cmVQ
	 k8axac1KJc123z2DQ+k9sSC4Kl+8ctuBVRJNzsX11mqd1JgqWPV+SfKgiGPBiHKt7Z
	 j5/f7TsdBsgE7imrUpI1EAbGjHWS1RKyDqPxB2b1OCsGGqWlCErXX/nlyl5khEBK/U
	 sLi0VGNIdVHQAWYaTXZyNbQRaKaByawtcFAHR+4nVF82iMPzUNvw21kFncMmUg+hn3
	 Exhii+JaHuF7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E679C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170987509637.27317.3052935414219263037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84698299852e2c512d5b87ad914dd09acc1f491baa2ee5ed2be30ccd0413aaf5
Date: Fri, 08 Mar 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709875096
