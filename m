Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E9241C92
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728405355; cv=none; b=kluw8LJ86MkBEgixQdW21obhlCL+J0cxrQDIYVIn1xqmhv1jkhN1Xqj+A5ZnZ7Rft/+NAWx6dwBdkJQb/SB7FKOBdh4pEyCXYTLBruivszZo3CdJFoXP9JYCA6u0C5fgOFYVThOIyd0rm6XZB5eIOQeKAGWbhQVI+93afo6k6iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728405355; c=relaxed/simple;
	bh=O9nGkRB/UKmwa9Kbc4hRDk5EP0Q6KhMYyQSMGfxZjro=;
	h=To:Subject:From:Message-Id:Date; b=jkh8nUFM8NstcajIKIcEztY9iFvB4r4xOXgP9nBMyHQvh0270QCvDldI3NGm8YBDWKyaeFK3k/ZMs/4vv90Nwr1rAI0XEHPwCiv64ao3px579F5bE8Bze0AP3KuxD6X9rrMFpfpu4g4fSrE/yFAI7JRsda6+qJ+FHOgRVcOtttQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4p7/e32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4p7/e32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCCFC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728405353;
	bh=O9nGkRB/UKmwa9Kbc4hRDk5EP0Q6KhMYyQSMGfxZjro=;
	h=To:Subject:From:Date:From;
	b=R4p7/e32wj4wMXPUDgi8kBybblZ+UiyYITJx0Q8SeiAABojHjIaYLwyjtiWIjzBFi
	 GPvmXImeARirjnv1EH5gl4NezgnKDqdaSBk4hMP04oy6l1GWkpuD98cmS3wy/Yk85u
	 fwhpID+ydpwp7W1YdbgtBNGWntK/61lc84fqn7QFGK2y2avFdVdzQw03pIRPmA8yZB
	 8MAh31K8ezq2gYx2bBeryYsf1j/Vh319h6703o/B7ihUKZCQRTrRJFqe0Ygzr9OjbQ
	 MfESHH11mpXk6H3cY1mBlCYoi7JjjaufpPhOxChRCftbYZErMFJWO4pF9UAtLP2mGI
	 rfaq2tHW18WHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E39CEFC30
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840535360.13616.11576692251852539261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88939837ea831e7542c779a14864068ef8c5a22b0872963d9fa1c1214d47bc30
Date: Tue, 08 Oct 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728405353
