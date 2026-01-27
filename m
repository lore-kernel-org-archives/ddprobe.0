Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EB0279DB3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769552634; cv=none; b=sbQ0adxPS1mBneg1tGm5Kr2epP93XXHPHTgutlVeMlIPCKx2NT6wNW33HMwX8H4aopdSgbHQHFI5Bf1w09YOkIi1SO9MPCenlGny9rVRVOXSK6L8jooXxKgcP9AR5uPSCpbr4JCVFRilyGyFluvj4UCr7gY/dU5OnQrj9fCxz4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769552634; c=relaxed/simple;
	bh=Nq+CJe1dZ2lrLI0FbkJcQLL0s8OwWF9Va753FA0wcs4=;
	h=To:Subject:From:Message-Id:Date; b=OA8Kw/6KtM/lXFOKjYouEpAu1PnoYYPuBk3ETr9610Zib7JSZvRnz8GhVKw+1Jx0/MCc5M58LxViYf9QwcG8pr9k0bZObhH/hzFqYXrYn4wvPvoZL3duIAHqKixH6K3VLkUGO2Z5mp1aJU/Qk7PbJb/XmSXLZ00WOtO5LF3H+pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTjmtJCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTjmtJCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F5FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769552633;
	bh=Nq+CJe1dZ2lrLI0FbkJcQLL0s8OwWF9Va753FA0wcs4=;
	h=To:Subject:From:Date:From;
	b=dTjmtJCgmLWo/jt0OkdyqttzNPbraYUk3UPxtpMsBFp2MbX4o2NMM3SziZ6vpxPMd
	 cbQs12t6BjvScxZy2CR+ElXRM7PhfxPq6X3R6S1HOLirSYskxUex5XyvUpdE47WCXF
	 lBXr+PXdW9YmPIQzIatytLSK3/ZyNxhX3lmhBxq2xuWJM3aZfMB4ax446np4ahWszH
	 rM9QAnLUPymcq4z/E8bO2wWliALoUJgxf23vWB4LiZq1Tp6iFf/3ntN8EovDzUe3y3
	 ysu9qUldxSI7vBagU8nZMrloqeCyJGP6J52b8+KTcg+QbpdNiNxV+JyR0yswnfsGp6
	 Hbgzxez0TMIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E09D2FEF4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955263358.3325.2491233496620760171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab2941b7a71873136325a67c22fe5e8598c6ade1e048b4c01a538f0454741b3
Date: Tue, 27 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769552633
