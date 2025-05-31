Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32998238D32
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748705994; cv=none; b=Yx9G4NWcTeGtjVW2zmJr+gs4Q6Q230Gn4IEbAB3Udy5VtY1Z5Vrb+4XCabmo4K4MGKEe2S+Z5zGH4K7yifRwNP1W9rxQ9dEpt5pVmqZYB+ZjKb2SlaG9qrl/N+Vl++zPnx6g3kwMZag5XrRWh9A+HkO797sqCY2BL/H1o1eYGFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748705994; c=relaxed/simple;
	bh=WPldI620FnqxWunqx5owRpHvHvsstePaWsAjt0e5ZtQ=;
	h=To:Subject:From:Message-Id:Date; b=irl2u0RWT7Tp34fE+rLqd3zcoSwhmOAmK0m1YkaAlGBT5UfQE4F950fiZCUzhjj0sxERjPBWUQ3/MDCROk3GHSqDZC4pvyptcGYPxQDzZkzT+IJJd/PSbAPlKKJStozTbEh1gls2AmhE9s6xpyxFVe2kcIA2lglEgG/L/7HEZmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZS9oMvZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZS9oMvZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AABC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748705993;
	bh=WPldI620FnqxWunqx5owRpHvHvsstePaWsAjt0e5ZtQ=;
	h=To:Subject:From:Date:From;
	b=ZS9oMvZuVdK+1RoE1zThmZpORSD0jNHW60jvW1ZAOr/AtIrvNIbawPAkk1MISfICw
	 GpUin74934S+5SUTzdgNrzqG2UMbRQunPWN9+g6uVZBv6Y1f7rwO13YjHxif4KT24o
	 1wSwQyHE3GkOWZsGZloSgPOm3qlnCzpASl7w837W68nxo6o/KeDLgIrzB9AbdIHF1S
	 cYnVCv1nY0Ho8hOp01zcehgmEeMg37AqxXZ1qyKo0wvPMgZoC9chNZqU0PJqmHSa5A
	 K8Ti7bkfYlzAGBAzD1jQuZbyPUpYaSBRLceQVpVNvSm/BYZZbVgMXfdn/6dW3obvAw
	 WJuI0dTuHlyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B37C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870599358.11767.7632447805602660351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c1d7b9f48cb69d9fab2f5113bf50d1a05b19fc599f06409210c3e4d20aa263
Date: Sat, 31 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748705993
