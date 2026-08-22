Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3E925B0BD
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787428234; cv=none; b=Pm5oUxaHa7aRhDVKg634ZSPu7rvFXtNMJBQcnRR9EMmqhkPuOJbHVmy47w6K2tE2q5hpqK3JE4d3uMxADkQCqF0Oipw6cPTkyRNyWdGpMEn2aKEq6a+g8FyV+XLDeMIBaTGYu5bc+wgsIuBQHieEJTNGfltTvFAPApFmXrNn1wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787428234; c=relaxed/simple;
	bh=rz/uMoojQCbzdGuHDf+CaAUQAl7olIQfi9THdcqaSRM=;
	h=To:Subject:From:Message-Id:Date; b=NvZm8DpkW4eQnTY7JJztq/R8S4L4SmO7wvVrNQt+S4FOElotKxY7O1N8eblaXeAL/WP/k/NHtvhl5Pu1Lb1TADVKfiTcT7PiQrz7aQR+UEDfp51AO5eYfvdQ1ryX/bxXh0s92JVgAnwS4rs267Ri7ulj9T+XTUKIWOclwe0mPh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6hGIbnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6hGIbnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C96C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787428233;
	bh=rz/uMoojQCbzdGuHDf+CaAUQAl7olIQfi9THdcqaSRM=;
	h=To:Subject:From:Date:From;
	b=q6hGIbnNAnwuPztEr65EYpM2U0bTPQ5zqqIbqA+eXlYi931uI1Qreo/DJauGNvHmH
	 nJumBPgRO9zpzqETps/GW00RXr9uCVl311sbF1/40/lSMKO53qYBlwqIUBRPfXl9DY
	 mOYiZUjHbLIwiAZrt0W/3Efa7xx+fXZNQOvZ+RmSOz+IyvwXpN50K2LoYNDLfJIyIj
	 VVvdAtcNG5QmyejqpNkboyW+bCgOD6zSnaRXa/vFny6izqyv4z+u4Czh/FofhBxN69
	 rV4STo3fM6sUzWayY3PZM87iwtBcMsDzlrovNaqC2B8UvPaT/zbiO95wPxVYWqhbZ/
	 iHgd/wt4NU8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FC6C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742823368.29073.3658507928718266390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f969c0ffc3e2c0386be68a432b7c32f7a43152ef8dc12353a00562cf67d0b27
Date: Sat, 22 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787428233
