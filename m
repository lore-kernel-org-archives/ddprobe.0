Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA001DFF0
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771074294; cv=none; b=OMiJZ/YdnJW52iGpUoTqSy7Uil+REWYdAcpMuASMTkaJhZp+KXb7fErpnNPBC/HM19v92Sr90Wb2QcZRpLlggleZpz90bY7d5oaa/Yak2UtDTDr58tWKKHCIbtNf/5404PnhpPQQbB/LONV03SMENqcmIKQnEPtWp2alR0JbkH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771074294; c=relaxed/simple;
	bh=zk3GB3dLPhtOlpHdSR7gQdC3Loaf5NF5Lpq1ZHmHFtE=;
	h=To:Subject:From:Message-Id:Date; b=VhuHb8qWB1atIz6ayD41IILzcnCyejQLP/ca0Ezuk7Tj4Vr7Yz8IkxF3D0kKPlGnuGIb6JphzH0s4bG6BxdoqZrXw8KZ6RuFRAhSYn/RrSMPlKJ0X3E4xpGALVfzgL0WSqQo/UkJP58GlDKzIIk4XMY/cJANJbZt6YhZmVzmKYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx2c6+Ym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx2c6+Ym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5A1C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771074293;
	bh=zk3GB3dLPhtOlpHdSR7gQdC3Loaf5NF5Lpq1ZHmHFtE=;
	h=To:Subject:From:Date:From;
	b=cx2c6+Ymwizhtee0Pi132LScWE83XYeTGWRL6kUiF1r/SQGNoJrVB7SJbJJdcJHKy
	 7c/MC5I9UXut6q0tuO8d1o5eYaqJF0UYGGP6E0QzD8Y66x39V6h5eMlNmcWN6iSlUe
	 yaOX+ldgjc5xRBiTmBpmnkMN6vtIvLvwlgbBnjt+BGrKbmylgjtHz3LV2KTYsjj+bK
	 GNnObn4Myi2Zme7IZVUBFknZtVihuw98qRzFFPYgUl0UD/pLFK4w/+i5viGGvIM6XJ
	 TuzKZrM/4skU4Yxha+GjcL7qZc08pp5wWsJR7Bz7yOit2SM7O+KW/W42UmkmmpffFa
	 JJcQhjbLnw73g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A2EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107429358.25866.15473573450456751728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915806d961b0bc9e72496e3287f0044abdf9456b503d70c78f8c4495b28bd0a7
Date: Sat, 14 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771074293
