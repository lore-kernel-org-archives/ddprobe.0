Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6B037FF51
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778813435; cv=none; b=GGKgSCSi7KdShQSqpCucYqNmFDZ+68brEWZY7xXWI5hzRzs1aA0cePvVYtlLMM9npArvnHxydGl1id9fsh8Yzkf+LNyyQVPkD1tuAEb9258yUATddxKffFkf9H1BJH7DXgO1sOMgA2Ey76Po/HzGD0iCIKOFsSLaO5i2s6wA/HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778813435; c=relaxed/simple;
	bh=JtvDViCHWeeME3IXM6lkBu8iEmt1kHwscR5gGVHONHE=;
	h=To:Subject:From:Message-Id:Date; b=KR71lm8N3BO3TOG1onhjJpEduAoLyeG2tAe5jB+/KWy6lYfrgxGLJwSOPQO/+DxgmjClIePba0LVJekKkXoNprhE3sSbTL4Ct4LqIj9GMOBINeoIzcTpo7KvMIDk56TiC1Dp3DWEjJbSJ/mdyv/U9kNWYtaoADPRPAyFYpRqp1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2m4a2SA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2m4a2SA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFB1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778813433;
	bh=JtvDViCHWeeME3IXM6lkBu8iEmt1kHwscR5gGVHONHE=;
	h=To:Subject:From:Date:From;
	b=J2m4a2SA7ES46PJJZ9modU4D5JUBE9Ayn0Wg5kbaFZ5IiOwnjXyXPGEruFJIY+/1v
	 +bFgNvpCYQgAKAV57mSemD1se7h2AL9agtSoctNaI40rV+SpkEg5asfqn1oyo3HrNg
	 xaRhrjviNX+PbmCyQ2eXdFXqsBr4EDDDPvCy2eYF6Jzb/vzg0gCwiXiOQTtiMZYwOt
	 nXE6kH4HwCO8AvJp4wcVNkZH5v5uO8WdBHLQ+jirkTnC5/abZ6zDWZK/wF2pyi94M7
	 gL1mxJQKv1A3fvJuFB+mAKPHBNUqa/uYxZ91noaH4ZNLd94uRsyE2dWsrMZ2CU6QUS
	 SRjG7IFqq3AYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7E0CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881343369.21958.4686656315818757234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71cf863f9bfcd7599c71e466406529cbd4c44911ce5d2576f6d4a148e187fe06
Date: Fri, 15 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778813433
