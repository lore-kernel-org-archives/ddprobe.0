Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7B54F6466
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788795034; cv=none; b=G3Csp7asyH9nJtLD5Z3Kt3OxSjeOWy8ncO9WvVMTH0VCPAiEoyCP3a/S0cI7S09zFsWDlMKWnn1AXT/Fr6py7/DQFX8HYALWcM74Tv94GGEC36e8kAhzFGKAD/xJfAP8lkbvKo3mbYYv6wjuhXfbXetTV70oM2EL2aJckmbQ384=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788795034; c=relaxed/simple;
	bh=xnihDCz4fcm22OMN1zzFUZ+14Da4zdRue5p6p9DEbL4=;
	h=To:Subject:From:Message-Id:Date; b=SmHkDNRgpENT0dRCaJeXlf57e6F7lnK5PGRm/lvkM6K/6SiKIPVy3/xP9ObSQsZ2g4i9Kfa5TJf3K1ZK8Q2zqv66RF+FM1bg41v9ZGlo+wtLvB7kmx3gdcIDNQOTqMVUfRszfK0Adg+G1rVsGRz3/0mpmOXDrAf13HrF20JnO2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3Nt4REH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3Nt4REH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8855C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788795033;
	bh=xnihDCz4fcm22OMN1zzFUZ+14Da4zdRue5p6p9DEbL4=;
	h=To:Subject:From:Date:From;
	b=p3Nt4REHK76d9127hvSvLB/gtD2Q+/bTlOlK2mJZcJCiu2siBCoAxwVRjwIuGKpiX
	 8C8VRA8raNtbF/QnIrD3ApjfSzrLf0JqAIGVcsPgang+8k0dhtFjxJmhimcTGpiG9v
	 7xHyhdcK1Y1xYughXc2DjzSJKpoPpuve1Em79eVjJSKPRnRpznQPn73jiFe/5tVcOr
	 WWK0MKFg2Egkt8/aBt9alrkCjuJv3DG0HZ8qRa/XU8b07lefZOqzM3VfQD2T2ZWfa5
	 Gkjg30VxT6SRbfI6kRNuMqYqIKcTn7pOT1XbRrnyR5bJc5fAe/Q3Qb0oRA0npYXKBg
	 nxzBL5JWja2sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E8AC79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178879503373.13321.13539592451233624376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e2f1e259b85cf9e6bd7855f73707e813cdbb582ef992f122111ae40cbe12b23
Date: Mon, 07 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788795033
