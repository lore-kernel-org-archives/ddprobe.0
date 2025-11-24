Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A70626F445
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763979114; cv=none; b=es4b6lWDAQo09JGLKu74f5OXwq7FNowmqtA8g4jMyLOrNcIgvGUkKSz0IBux24pLd9mDVYTwUSDtaeP4J6d4HhQacyNDQt6lEfPxgb+xnpndRD7UiwrbhNfKE3Ly5bRN17hf0g8+WlnDCGv6tpc/6tAZC4Mo1R8LMCQM9NIlS9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763979114; c=relaxed/simple;
	bh=knstGT2TI7xSmvVUE0BFGCDhwUkxde/KOeICyxITk9Q=;
	h=To:Subject:From:Message-Id:Date; b=n2jMmiPq9DjsieaPcMAQR9rGXuqjPXJv4h6c7INWGy1CcF1SIfOXLR2JeecRs4SAkJuSvlbaz6Kj8brokYjW1Cggh2SyNZULND3RBNZUPNmO90wsM6/z0y8kvB1i7yDvqUbDxU/rZAQ1C5wRkN0ofgDzstSvHihnA20b+pxQmwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCnZ+3Uj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCnZ+3Uj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2F6C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763979113;
	bh=knstGT2TI7xSmvVUE0BFGCDhwUkxde/KOeICyxITk9Q=;
	h=To:Subject:From:Date:From;
	b=OCnZ+3UjxsxbTRiII+4ahbOwUdHJfyxwhIQLu2Dzmd1Rss6HYo1bcjeGpHkpGNSJm
	 UEh19kOpqyc/whifFHkCo7TOhVaFMQ1Wi3djhvYEwmljkeDtzAJ4V9TqwqHRL98JVW
	 bJPqVAB2a0fXQTGfB1sk3Adbo+8AiLU+/jH1bb8kDlAO/CvmjgjhcsB8D3KMefQdbr
	 bSVxQ00BtzAG/lkd03ZWC4oJEByaJlZOlfF3/S9DwTd3FsWIm8rInLGLpuDleHSInv
	 Xns2KwV8sQjUi5VPXefYOQt8mFuavkZtOI3peTUkauZMivsEEY7rBCBzSisHG3XpK/
	 Z7b+u0GUHXGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E5BCFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397911361.473.237841458545513280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88f31adaa14f3cfdc2ed878187314076779949d171bf31942276ee03409b922
Date: Mon, 24 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763979113
