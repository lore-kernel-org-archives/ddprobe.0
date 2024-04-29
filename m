Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC1E86260
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714410743; cv=none; b=bB9wKTk/mVINyWpj13fEd0jxlqNLFIMVFXQuIVqJcZcGopctDWSBd1Xsuvx24wKduhzXkWYESuAHza8HHUuDDVl2UwvBw6bzs5nkcSxMNKr+rfqTrTnSLKX1nxRMPeGDTCjseU6/Q++Bt7/qmX8cubmNnDJVgvhvjQ/BJWRQQ48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714410743; c=relaxed/simple;
	bh=ctQ2LDM3mdSd5SEjPJB58duSVB8cOf/4XL5GFygm304=;
	h=To:Subject:From:Message-Id:Date; b=XwIJwJJLbNCMzPa+G0HjhFP2DA7AjMNrV0dAB4R4jJ1QMAAkofCQfKatqNVSiE//nOvzCh7oy31k1FeD+lAgL5rU9457gxRzuOjBDQ3RjaICFxlLjr3bbLah1omjpX9O9YSDgCfizqkA9A6bdtw/aEEmABVtTCUZnb4FdFzb5Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esp9vgVP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esp9vgVP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA01CC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714410742;
	bh=ctQ2LDM3mdSd5SEjPJB58duSVB8cOf/4XL5GFygm304=;
	h=To:Subject:From:Date:From;
	b=Esp9vgVPi1tAXnMd6rNoiyGkAvbhbX0y3NcnNXJQiGZaAUs1KED7dnKmiVIPMRKqe
	 eUI3Qp3iEC3pyaqqWuXyVQB4c2aqFu/qEFewfOkoW5WA2pPHnLYimgHqA7lmmv+WZ3
	 ILDm8Qx4SQY0dA+eRrcSN/P/FdDxw44vnvQw+O6VffSW7VXiBDCImw6+h6kzTC8Yka
	 tGIdCGHd9Qy7inq+LfE5Cs010FuN6UNo3qpakZzoyRBOCMbAj6B3xo3rud+dVqDD9g
	 dyhylRtPc9litk4U+Y1151kR+EoU8j4upCor0byydyGLtLQXtCTqdwUqcRFGKGFMTW
	 Kn9zykgFzKFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42ACC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441074279.3728.17177836442388150267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd238c75305b278ab7174e20e32fd4fb97440b9b907e04b235e49b945cc9c7c7
Date: Mon, 29 Apr 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714410742
