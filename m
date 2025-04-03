Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6990DDA9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743666593; cv=none; b=MbTIKZl1WDoiwZqXjJl9c+YsKUGYlUxrqLuIEgo+yKR1ItdBPW8niIUtIGPu5hw9VatbDREmDHbygWqIS09kIx5o38lHsRCy9QoDN7r11byyZyEPOTsqCtDTSPj2/9mXn/Xi1PA/lsB9mI8EpibbZfbcsWZ6KJNrWZkBQ7208Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743666593; c=relaxed/simple;
	bh=zp3VTHSMbbTCSitDieBzHvIqjVQzJJ1hA+lIjsib4GM=;
	h=To:Subject:From:Message-Id:Date; b=eGOsM3/z3Ayw5K5to5o6Pi/+fsyaBDBvs0a9riLtMHE7Shv4ZGs74Dw41jOmTpW/Fyd6i738QjRsY8JU/UOf7YLKPa7aduqHLSxEdrJhP3GOyTiE+X0bUK90i40AlavqjRxQEaUGewFMXQAIhhQlPSqKk+Hs355Ec3LYJLjitvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5XcFI8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5XcFI8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6619C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743666593;
	bh=zp3VTHSMbbTCSitDieBzHvIqjVQzJJ1hA+lIjsib4GM=;
	h=To:Subject:From:Date:From;
	b=e5XcFI8iIptYaX2G2cGx0GVEsRlTWMF/QJ0W1gnsqCR+5vnF8mAjTjAZWUv8zKS3o
	 HItjPA9reYgQks6Fmvo7eC6upSEV9JwpF05QNNwnFVqmH5JvrBgvkude/j/VfYmBVe
	 Y7XlGwKTKbpJmmxmvziFgktHV4cNO75tKWf2IsXKVz/edfn3Hh2TU07cEphKQeM8AP
	 jatK8LHf/8FokNLKm/HWL4p7sPLLsbGx+Y31CiTrpNtE7xumeGleD8J14JdErRk4tO
	 GrES2d4V60SbWy0TkoCpqp8JeKe8qSZCzsa10pemKjwFMJ9hUqlaM/e27z2566gTie
	 bVc++XOsBek5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9583AC3601B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366659360.16114.15469955088676543196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4666d081afe6af6a5bccebfe4690b0e4b1f7d71553ea605ed9449a2bff01c207
Date: Thu, 03 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743666593
