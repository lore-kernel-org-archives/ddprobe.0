Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215B2F12AB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781372194; cv=none; b=N0OR9ayBOKshu72dVdzoEcvCyhYC1m8MJ5SN76vDo3ZsdJBjnF+5rEZ+E6Wj3yUz/4PneVNEX9pzbHLf7SKK87koPbHkDpxhXksGpD2zUTpW5Y/fcjPxHltF1k5ifFiZ7dd78hSysM1t+wr1obvZ9kTKj5tQgsZDk3CtxRJIsPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781372194; c=relaxed/simple;
	bh=tRA8fNC20s9JENuXLwvhmunJUtrxWVxFzGMlqdXs/c4=;
	h=To:Subject:From:Message-Id:Date; b=Ei5Or3xzyf8W7/uJXYYT/8UxU952jCkyRNBKTlYGGeYEvheOdNjn5JpUUV0gWQdzN9O+oIKggQ4gVYnIVWHKm/aUlw16zzTGpZH3ZJjGkAQiFArzrnUh21Plj5P1tW35JKs333XMnqbCOjQ1ZgGj7NXX6JHFuOZ1D66B1VSY3+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQGU3Xo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQGU3Xo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35B3C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781372193;
	bh=tRA8fNC20s9JENuXLwvhmunJUtrxWVxFzGMlqdXs/c4=;
	h=To:Subject:From:Date:From;
	b=QQGU3Xo7T16grbOKugkohJ35YOxQf2P2aFY8zEpqsSQ8c1V6FpXFCXQmHQV1/LkI6
	 klSqiuv60AcbiNLIE5PAUbXwqaHw2H5FuO5fwXTdlVcNe7jqBMh/GYhbaf6hMNT3/V
	 BQdum8A5YGMFhr7DpgL/0btsPlJexoSZf7FMwYiyoUxz0s3k00jnCleiaLxg5UStw8
	 aWkTSgFs1maYg5dh9H7bQm++JNYlYilbfsSZWbiiBabDSJMaL0uUulmc/vLfeuuqGH
	 l7g6/Wc5G90pyrXjsOqoARj3eE5T6dW36WkTOzmk+vONjnu34/BtH4GkbyksbcTJ0Y
	 rtUcRE3tiiSLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CDECD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137219367.26540.14910878787841083581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd01b63cebf321c216342078f166f96d1299569c41660663abae52c441068f0b
Date: Sat, 13 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781372193
