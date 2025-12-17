Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3CA345738
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765965834; cv=none; b=qh4RcQriex1xrGwqUZM5TyG5gOK3xuHd5YZMHg5aTB4uNaS0ILyYOw60PB6rtMfYql4lTBUbFn+lMHTmKZTPBy09iYvPaihxcKUoN6fXGBIibBazA5wAPAvFGEDbvt6nWmsN5LlkjLogGdNNMnZGfUSCRfHRscPDNsqZ7ls6afo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765965834; c=relaxed/simple;
	bh=QMl4dCGJwuDYdwVG9Dqe4qPAm586gi6ELD7uSHC1m1A=;
	h=To:Subject:From:Message-Id:Date; b=quL49hrHsRtNkH9fB7B0nVTpUOyRjsbYJD9J6kLNAj+1H/Xmchpu0Y4bB2lpIuphcIe/U5qPi9Lo/hKHHnmqAcKBaTziqBiB/Hf8GyoC8gANv9iIXopwTRKFKYfo+lo/O+KXpLPouL+qFVMn/g197x3bMgYcUJlmtO4K2eZ10nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj9MDZxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj9MDZxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765965833;
	bh=QMl4dCGJwuDYdwVG9Dqe4qPAm586gi6ELD7uSHC1m1A=;
	h=To:Subject:From:Date:From;
	b=tj9MDZxMKyUbm2kyoPnhRkkzvRcnDWxHoH9kFzEd8C/y7GRX5UxAfbkpVzz9C2G6X
	 kOVr6ffh/ecIEtDLpD2cJhwjehKJStMiQlp/qvSRE6AexVGPDQFlNY1jJ8FJQtLzrW
	 ys6MycEi0XsDls80nEQ+9OVDtCE+wbMyKA+wkYqhY1O0Gxclc7swKRAopwNTXx7KbE
	 DvpDKu4RNId8T51VOUJn5snxpSYT02lWV0YjQ7JE32iZj906CP5/1S6mPMTs0VORVB
	 YUeFk4fTL2nWMx7fHTJtYcpafGjMYKrTJM7E2R1y0mz38NpwbUk5CcgrDKJFTRQSSG
	 FmIEPcJrsCdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96976D6552C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596583359.14728.17916886298041726065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5be2660a1b05be924c689f6431a201dd07868fe8cbe368e3da142af87a63a61
Date: Wed, 17 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765965833
