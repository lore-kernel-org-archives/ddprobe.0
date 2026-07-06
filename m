Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3733AEF36
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783316314; cv=none; b=lS/20a0aHOZt6YdM9PmSXp85BWURqdy7E8NK8Y+Prq9CkElCPbs+eGFLPm+ead4MecjoLvFLvZiU9ACeU3n5etsjj5VPu2GRT95jRhF6zz5f2QC6FPRGYKBziuNbHX6yGwNK+zy8cOCUl6/XTy9OOHM4tfsboSmP1HokOUqNiiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783316314; c=relaxed/simple;
	bh=WpMlKL+sC9DwLUENcEdzZhzlzt0LHr3zEpvzjMo8/b8=;
	h=To:Subject:From:Message-Id:Date; b=dUKDmnL5wt6Sk8EXPuXPwKbI1v5c5oNHCLgXkm74kbCIL0K97e7dkiuGwjxb0gSqw14Ku+DIA5PcMFTThHk2p21u0IRMGAfJQ8qaB2i/+X0l8wv8CmSuyDVhmholfX6L5m+/KgwUYzpA4QUv0ckWRCpg3yxITSiEjbzo2breegU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1eLxyD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1eLxyD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E60C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783316313;
	bh=WpMlKL+sC9DwLUENcEdzZhzlzt0LHr3zEpvzjMo8/b8=;
	h=To:Subject:From:Date:From;
	b=U1eLxyD5v2lEjp/3i9dKkbeuOiGpNmSpqaJDXKtEyx4cq0UCQJ9o5Yo8yJRz0j9iX
	 r4gDFuFtM8s6FMtLmPUjSDE0o3zk722wM3LUklJmYziH3uQ1MDc6WeA4ZLPNgb4CNm
	 jZVyvuK8e/94vG9Xl6DDtZGgRK2lS21Bwgrky1JUJL195fDzBrLUipnBu1u3MNdLIz
	 1ZFOdEoMqZhXZh0bmAzfpKzEpG+U1ABhaOoRCY5m4OAxc4puWfQ1iuarDmcYMNfCgX
	 FWasYZL1jbDWTWEACjF7T8i9pDXmLmaBVAtY0chRJpjFHxeVOI06dO3PMk1VLpvw1l
	 orCgTvf1Wum9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8318C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331631368.3452.12896627207745246144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29a072d88f2dc522d9adca1f4516ca11e6387581a0874e81da8fdc8ff3ec2273
Date: Mon, 06 Jul 2026 05:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783316313
