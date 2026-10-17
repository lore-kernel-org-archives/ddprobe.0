Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E95B4CF46B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792277434; cv=none; b=j1xQMsQl1ZVc+ypLWRc2q1g5ff4/bCKaew7paZbiCdrmCRgMgK3P0JM2V+VKiXkJ3eBy+pEtReFNnsIEwl5Y13Y2ixta12SDc6HdbtQAorK7iLW+8GhXIgVFSezkksaG20aIrQmWr47xw481CYrZ/e6UgLO3Io8WhbfI5dE2ehY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792277434; c=relaxed/simple;
	bh=S+UjUJ8XGAWBRNrZ6G1bEiJvZLwRN36yMhX3TeO07Co=;
	h=To:Subject:From:Message-Id:Date; b=D6uBZrheQliC2rqbex8+rvksuOSV96FUXMhMahzD0LvpVw80ljfSc4xoeZKYQba8w1JLut/23It95RBXRhDWnZWmmJCn2jkgdc3H42ASHRTjj7VL250GArDvJwiDjUT12FsLBrQYdQqFvSSuRFwqfiImRvsUh+6W72Tu7ThzbDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbOPd97k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbOPd97k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2689C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792277434;
	bh=S+UjUJ8XGAWBRNrZ6G1bEiJvZLwRN36yMhX3TeO07Co=;
	h=To:Subject:From:Date:From;
	b=DbOPd97kTayVP2FRhXRHFGF6l275Sk/T0rehGueL9Pe6wICfCgIqsCHcua2BfF9LN
	 qR0rXXD+2DvLTFKfm8u5+54roPdKcWNXotVHay3I51Vv0e6GUKcQ1mYd8KY5xhBQyn
	 tGjWxT7RByJtYzaYu0BeyxQUjQeOnf+h2VCvWUFj/AztU5+rzGIoiIbtJEHHDmE+tq
	 qJVHkyLbA4hG3UBxXhFYG2G2c9lp0iCnlS3DdP5cvXmMbmxirRXX6Ew92jrvfYA0wH
	 BOILau24Yq83c54q+8oHxrK3jrH0v1Ag0FBwkKJNEdphxmEeA7murEqeEO/Pggy9fB
	 Zlip2LqoWh9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C583CCCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227743378.13187.8282789760018443510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5551cf4008cac913910343b0acb7ebdb53aaabd74470f29bbf82b64197aae9c4
Date: Sat, 17 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792277433
