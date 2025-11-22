Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B858285CB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763811714; cv=none; b=L0H56m9peUtVbl/nnLMahSzNUysbmO++bleA0mPQRDakeOyxB7VWl8K6ZRmpZUBzFEasU3SohE13XzJYin9aMXDXcUkdlrgJx4Ajxed2ejkICYKXE1TN2p478QQM4Ns2sQJkyXFS3IGjcFi0F4fmFAM1eG8L3piUw+m54+OtmlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763811714; c=relaxed/simple;
	bh=HMn3DI9QD4O4t9fX83rou8ROAOZqJxB9L+jhoxIycrU=;
	h=To:Subject:From:Message-Id:Date; b=GhalKMxXOd0NqpuR50QKEKWt6b78sfZ2ly0c7mGuIQXdY2awNzVwNm6NN6UhNaIe+wyH7ACyZJ42bUBkhzW8cfTOw+kJzrvkTGU05pfMYjaEjBDKufYt/UjV1j8337EziwXKb8MYcLdpgLsoM8bQ2JsxD3h7z1dQPPmSn6dF+sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGvjfVVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGvjfVVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA4AC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763811713;
	bh=HMn3DI9QD4O4t9fX83rou8ROAOZqJxB9L+jhoxIycrU=;
	h=To:Subject:From:Date:From;
	b=bGvjfVVW7m2x5UjoQ3ZuoSdUno+G0RINe4PRHObum+xwKvELzkN7HMBIy0Uxw6vCc
	 SoTlKVuZ9Mfoe/dWyP2me3EEhrDFw58yXW18F2y572vVGUi2jCuviPui0fTAORzWE1
	 v+VGgVC4OVcZ6w5rFuq0ynhFL+/x2M3tc+IKyT9cLlwiLV3jj/a8AEkNzVYohgsiy0
	 dyWmJywXRHrakiWgFocY4GTTWyH4vIl5J63+sPvLUtGdpP9S+p3V9tvqKRSv1YQoZq
	 e5byEwMwdSF7ys7Qquzl4EcGmOpKcOdEtotZ9Hcb3FBckL5jZNn+RmmrMWbS4SflJ/
	 Lxw22J77ueHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E39CFC52A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381171358.20199.4401728030463874891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b2e94d51a2cc01edcc91cb34d31d27b12b887a36669a64ea849b1aa28a61d2
Date: Sat, 22 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763811713
