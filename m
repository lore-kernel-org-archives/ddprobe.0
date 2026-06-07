Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4FF4071FE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780814074; cv=none; b=uIA/Pmbu42mrCdRr33hPu+JhFdePjOzdjlVDumKeBnbS+0Jm3WRYfh5EgcUz9mb2i7JKOc08k/V+oc+FQWsaH/YFR8E7Q+K+2UJhRnAr2Fa10amJ9PCOUvxzViJbkYkFZX6xTXuev0uIE7SEMq72dPfeRziiAsyijp59MlKU+7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780814074; c=relaxed/simple;
	bh=MvqbbYhTQVy63PoqCRjTgu+EsmUDeUacbnJ7K7VqCvQ=;
	h=To:Subject:From:Message-Id:Date; b=N54ARV+rZwcZ6iIEThmN+h3TZbAdj7/AnLZePmhlTmT0tJL00kiEIYrJ8t77wPpm2hwwPKiTUGPqjWFZqav9W8I6nRRH8o7U9QyQ0YfPXY2E4FoMhIJVnyVXsdZJtdo47wsyKRdU6K70g+tvnyGIfSp/kjd/r7hkpRdfu5UvE7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I93cvpJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I93cvpJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A7CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780814073;
	bh=MvqbbYhTQVy63PoqCRjTgu+EsmUDeUacbnJ7K7VqCvQ=;
	h=To:Subject:From:Date:From;
	b=I93cvpJ6CKDy6jNi/iOmphKv3MLV0DELM6oKLOhlr+O9aiYxvgP4yYRh8u8K/aPZ8
	 Lza5+0a8iBxmAJA2n7Ym9Ls10EbjpIupd45Ya7Ceh9vcp11rfhZvilbp5gIUqWDQ+o
	 SoDhiybs2S/DkUWs5vl4zrADsEevC5xqjQLLiUJ9bmWGqc23+9Idw1Pj71k0sDj70I
	 yt6EglmnroDcS5qeuXpvtFcpHiOd2nIIKTzdEDTytjPWftN65WAkbJ8VteOSL94IWX
	 1k5IM1OIpuIBozvweYpA7NK2+gpvgix+JhsF8ccV49ebJpWQ1nhbZDuBH5GpmdRhv5
	 2PNzLqMlKOnGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF815CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081407368.28987.6976912042552616693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4601c9a8d635a4004dc217d4d49e25bb899f160c643fd3eb651f7c1f9d0a78
Date: Sun, 07 Jun 2026 06:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780814073
