Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2296A27AC37
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758051594; cv=none; b=QKocv6iEPvEq390wo8GepGynItJjEdqpOeXf1rB5H4agOsPP48i3oo2vTpH7iyF+nqJwD2VgXVmfbpIjazBkm1GwlVCnYZ+pMzv1kTJp51o3c/h6TLHwU8yao/alhFyP/D3mviAp3RO7fW6CgH02Dff9V2DTSQ53ZIOpNEwc++8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758051594; c=relaxed/simple;
	bh=3xuBzjtwNtAV2vK1gVDD6PfJ63gnT+9SNEdLQ+LVrpM=;
	h=To:Subject:From:Message-Id:Date; b=N2fbXQ+mVOjc2fWc/S9IjXKpzcb0kVEXN+SlBU0+1c49KKK5RqDBZxtRSZQq8sSGisEy+J5c6w9m+bKOSjH0Tu7EIwL0X7gkYqx9DwgbGvHo2M6oPSXgDLlV0hFAzxCBWIO4abUi+ObyzEcqa8o5m7GqpFw5beSv1OqhKJ7DHSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxkFuIMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxkFuIMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A82C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758051593;
	bh=3xuBzjtwNtAV2vK1gVDD6PfJ63gnT+9SNEdLQ+LVrpM=;
	h=To:Subject:From:Date:From;
	b=WxkFuIMGsleCZTKxs2hrqiv4wREpw5pZVwjH5o2LjppbcCsOG+x6UFDr9KyGlq8Qy
	 cKdnYisH1wEuvs56iJor6W+4rFOWAX1RVIm0sIznzIWKOzd/Zb9Kdo+IkDzXrc8TIE
	 KEdwU4ZclKyB9CQHZ4YxdHxyQjPwuWaqDwb9ytpAzR0t1hvvmFvP2zCFqMyD1s+gi8
	 /LzuQNKAG+q+zt3RW/7JbEashknn1h7HbCBtQb7bVbWSad5p3IiUTfK7oKGZ37Ci5x
	 evfRgRtaX+TwVOg5ZCaVQM5qId/b+9Jvw3+/sy3TL/qGVs6DfYp82cElUhlIJjvTEx
	 ovoalCtOZpQRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91746CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805159357.6492.4086379442581988322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78218785d302b8f8652f92895b692462cc0411a20e5f172aee333136da27531b
Date: Tue, 16 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758051593
