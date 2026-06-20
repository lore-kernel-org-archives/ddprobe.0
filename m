Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC3D15E97
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781960194; cv=none; b=pa+VBV481C3pSfnE+dJnvoB+Rmml+nJrb55RcK0lEOnKLvn90cz7SqxfXYh6XWinAPwcHdJMZ7h+xZkZtiC7dVoiFbzek5PXTnvBbaR7NllyAgcwqHiLocfZP29002TwA/7bT2nUWBfJq1OimBT59zy6WYUTyI6M0R38zlFU3BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781960194; c=relaxed/simple;
	bh=xA4Nyjqq98CA9Ijct6coxBBrv2MWKxMr3B3idVsFxA8=;
	h=To:Subject:From:Message-Id:Date; b=HEFOYahDU1SVjRM6QPDr1n06Su7BwDyRr/hT39u1eG0mNKiqqEhpev6VM7ZRODvBPXnplUPvJbYtW8FpuhrRBkzcaIyqrjg1/9+XBQCn6TjUj+fF4F2ac3KPnZYsfcl+iHzB9VkCE4+e0fLEtACp2PZE9aJf6ivslIRQb3F/7Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxfDt6XR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxfDt6XR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA0AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781960193;
	bh=xA4Nyjqq98CA9Ijct6coxBBrv2MWKxMr3B3idVsFxA8=;
	h=To:Subject:From:Date:From;
	b=qxfDt6XR3k6HIf7Qzw8PkvRmnJotrkPt6XWNI5ArPhmSWT1JAqjiL9IBPSYr8UQxn
	 JKV+Riny9INk4+45uSD4te0/jGHywBo/+U0Xuw1WPcY2YaMnHiuvQxxsMSB+i/vrD9
	 qe99Sqt/Spzwe6aID6Eg8j3rwP/LKOgWoDCfj9ISSqwLV78+BiFMV3l2y1LJeISgCZ
	 eHfmsCtJozzDuLqBAjZsibJCgr7XsMMlMRekA2M1tVq2d9Dw0Luvbd/TjzJNwMOW4Q
	 ucfx06Qn8mIQWfLMaoUw3Rsf1guVBn4Q6CuW0Qy6kGl664l0b1RAg8h2pDgxfWFP4o
	 dhjzU56hcUxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCEECDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178196019370.24813.110927059165243526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3813eba70df5649daf2ad0bf06e3762230d0c85cab688be2dac11dbc5923393
Date: Sat, 20 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781960193
