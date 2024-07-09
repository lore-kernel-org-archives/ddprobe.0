Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69571148FEC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720512383; cv=none; b=BNRY1QXbx+zxSZnEzq4eI+gJ5hAAtzsV7tyoVPlLG8HKuu65CPN4bygIxgEkhRPDPhvHB88G8bPJWzUDMQTRBa2s23VBWFyK76az6NZgkb75hP6i36gzF0DfHyYElCjUBt5v6IrtP1O6O4I3RHAceoeaNuhgfdlCmJXqMTfbuOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720512383; c=relaxed/simple;
	bh=EDAvv+LQUIvKk5cgMFEO4bYqSsYfPpVkyfGDwjeclZk=;
	h=To:Subject:From:Message-Id:Date; b=TwF6FvjEOuRCnLEslOFywHU9YMpBxgC5pYgu6NnyIR3iYFn9s/8mX/I77zlM0b5vWl4vrgZM8zY/3dnIwxkYHyvl2eWj8HEcjk/lBm4dX0l0/KhGGxmVlQ+RrGe58slftrtbyQnnrkvnxxxBmQeIr/hWS1PYI90z6U31wtKYgCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM+Ca2yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM+Ca2yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5F8C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720512382;
	bh=EDAvv+LQUIvKk5cgMFEO4bYqSsYfPpVkyfGDwjeclZk=;
	h=To:Subject:From:Date:From;
	b=tM+Ca2yt9M5qZRgWnU3EmD19zaHOl60L60RVRjKDqrUvlYT74UT6+FunFDzgBQl6W
	 0in13Q7ImHlenjzFFzutHgeXJJl5SW/tKKI20qyb0CQ2ey/+QYB4gOibGZxKlC6kNv
	 emeL9EBzSwml+DpBYGRdHIBsrB/rJckswIDHQMoqA1/NRJClVo0ClB1mBmCCV61+3e
	 SkSfEL6FoEJbmjNmXforfddDRt+j/8lkeK4/E+aYs6ouz7oS5RVc03vcdqiJd6irDI
	 gb8FFwV+PymL5iz7Y4BFB1qgL38UfPnFid8U+7lQz8YBGElsyAsTgm48i9ggoThUr/
	 HLGAoswGQE8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C031EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 08:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051238277.12472.5962316870553313544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c8935e88390d8e892f5e61cdd7673cbbb10d36e246b8d7069ab81a2850d4ac
Date: Tue, 09 Jul 2024 08:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720512382
