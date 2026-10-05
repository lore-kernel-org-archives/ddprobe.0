Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5817330B529
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791229834; cv=none; b=NLda6qk+sk6oqZF2uut6D7PTb8OEKWuO/p4JREp8rr03tMyjQEnKA8iGuCDvhvbi07qDAd4kmJx/vjpxn6u+94ZI6K+lHifae89hS2AUN2l0xDFUksh+jlEms1Zr/aWnSYTrpr35A006Aw6FLZ+yexuNBg7N+J/zVc2DXg9dEYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791229834; c=relaxed/simple;
	bh=scAnddCcwyYxMl0udGaACQiynIazsBp5C703KhpCkpw=;
	h=To:Subject:From:Message-Id:Date; b=hda0ZBt+nrIy2yJFdyJb2C5rRPp3394b3sMGSgSFnkHVUNRkkH0vHZgp0LESxMbXX79rt9qob0LjwTcsK0tu18YJB/Q0aCw6/XdUyRTWrePBKXlQp1w2Y2/LbdNpPKQIWFvYTEFW7fI0hLfBEK4S31k4sF0txbH2E8PhFEDhd1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l73pSzLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l73pSzLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35DFC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791229833;
	bh=scAnddCcwyYxMl0udGaACQiynIazsBp5C703KhpCkpw=;
	h=To:Subject:From:Date:From;
	b=l73pSzLGUWxZuU1TL2iFyr+z+kZrq3fBaHzuWcoAySc4ukN+4InylroiB8DGpEZ41
	 ZWZUbynNHNrIrDfcvIziDKbWAEmsWkHHJ+eMvRiMdTuT0k6MU2pTuYWmKKZAk20/aM
	 ZKkrktbg4DjrjcndCYPyBgUYY2mQCPkkwXFq+UeiCMIsOZJ8ONRgDOQVtzOXze2sVI
	 Nd95ykxtt/leWKG9Yfh0Ur8qiqnnWUZMHcoo49NetLEmi3Lgdwu76/wlMpy4w7YgX1
	 Pd9wfi9ooRhpg6ZuB9q3TzOKg7XeBlXMpir1b+29MPh40V/jZoiHvBLA2jramFtYDO
	 9ZTjUZs2we+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC139CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122983369.3691.1971462575701850335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6daa45ff333e1134af973f7e017436c418fd0f998ddb8d6e911e14d14176ea7
Date: Mon, 05 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791229833
