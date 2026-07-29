Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F02E47B40D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785326434; cv=none; b=PHp5AxmgChlmMBBfvVnnql1lf/hIm4k4rEBAtM1PWzAOWEVOYHiJ/tuJdh5pMQa1VFv7nXlyd5FXD98XizvWQPWgcfLlNFcVfL+e/DqnaLGFlsk6unujd9bUHCDPCEg8HB98/9pabXV+ak+abtfF0ry2MmBtsIHAhXtuW30a06o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785326434; c=relaxed/simple;
	bh=bNCY5eMgGYqI3UdJumSc6iWJFR+ck84+iFW8k6sV1IQ=;
	h=To:Subject:From:Message-Id:Date; b=DHM7WLHJhuvsCO0j9ZCMR9oApZZwvea3Fi6G4hRyY81+XnOSVIwNWmtcY/M4KuqhystN6K4ySuJymtxT3KOAxz5SFCniSFo/G3VMoIANPlLsFR5+JkaiHVV7XpyddqrJSGOiX+vjyzTbIhldrDIRdP/GV3b7eCqaYByIfJQzfjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6DY9zyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6DY9zyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D291CC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785326433;
	bh=bNCY5eMgGYqI3UdJumSc6iWJFR+ck84+iFW8k6sV1IQ=;
	h=To:Subject:From:Date:From;
	b=e6DY9zyS/JlbR2PhsaV1+Y1YTDh+wWTDyF9DEP2pOwCp1LpybSnkgTn9zEcA5OESb
	 xKeYlV0tO12gMWukzAthX+tj5aKe23/zYY815CbmCUdYPMrMroJC+igr6qzOovHJif
	 K8VWO32JESdQHvfCsHdbPOdOVBcxzg9/+G4AaNVNc29Ee5VIn6tAU+o2ro9uIWU55T
	 7YG2wX3P90upl6qn+LUHxgfoq+tcjzUkKYEL+fnmhVBiFLDGPsIn3s+z9EZI0gO7jQ
	 k6OX8JaJUEBHqYu22osq6pgxQBd6Q5wCH7VJRIfUYM0uCb0PL2E2+8KPViw8pjlY86
	 k1YzmvN/1gfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82A3C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532643368.21831.17378931991209698171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b850545c5437f599031947221f7638863372c3fc0e58df5816c0aacb3b331241
Date: Wed, 29 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785326433
