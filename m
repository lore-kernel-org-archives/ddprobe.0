Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1441C301714
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763708514; cv=none; b=qxUqS5fpiNPogciY/wdHNDITUB5VIIW963qZn7NBetcXj9qa9DjbrD4cDnEjjvGWCiDPWJjOFU/PZ3kZ+5P3tj8CL5stSWDHOOB35wyYeEPmr7raNmCa38Us5NcCrHOoZDvfUKClx8HSnm9IlGg8l2uhkZPoyn84/psVDVTHmFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763708514; c=relaxed/simple;
	bh=2AH7CD1tDrhXkTW4oaDOT4zwwkaGfvJhUXkdR46e9Fc=;
	h=To:Subject:From:Message-Id:Date; b=aW5BQ1yL/pSXpuNS/U8sPrB/7tmMUcnnmEEoFmpCRoULkaGGBH4bzClXcvmDYUyL4B49f4N9ETt2azi53jweOQSF2n/6jFfZuN+qbO8AdnCAesTJ9IjG6JLQDdXF0uZ7NzwkdXNNEC2WzGZ9gPOQ1puMVVFLd9zRSvxklMmerrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8r/YIvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8r/YIvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A905BC113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763708513;
	bh=2AH7CD1tDrhXkTW4oaDOT4zwwkaGfvJhUXkdR46e9Fc=;
	h=To:Subject:From:Date:From;
	b=T8r/YIvhhW4xyIGLljzZtD2ffKNjreMKH70U+KRlXmL7JtYnV0YrzfZ+qIKiUagfS
	 SDAK/QnbBlt+lJGVB9FY3mm2mJZcoxrKrp4KQPv2L1vmqYdMXBBpdgYpnkATDoqmai
	 cF36ceDRQT4yU8iXvmfJZX/Dr5Q6qhP1qC3ChDnJZMI82XO18+1f8jR7l04NfvQLjy
	 1zeFmZm/pt+c7RHSJ4IuW+wLhlurNShBqa3wIxGBxfrOK+rXPLlYTt/17ZBsIUn56Y
	 srBGqBWGR72ENME9kymFCXRSDn1PDgbDwyCUvrXJwNzFcY1Ckaz98IpsTFRDNRsM2A
	 Az7nKAiwTQUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979B3CFA477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370851361.4167.2908606786568760680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa54905fc0afa84ddfb6d43c3c4b5e399cea5407174adf1e7d39cca455bf27b8
Date: Fri, 21 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763708513
