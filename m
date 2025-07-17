Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2819FCA52
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752723594; cv=none; b=rdya/fk+lyljFGt862C1q3WS2I6QcNdmFy6SisjMekJvq5jBttYAjhAd3eTtQ4Xj78bmBD3vNL085pOKI9SY96tBEYmpwjGfCcLuEnz0ybEGAE81nfVqrSj7/LVq1uWDAB1l3bHRYd9KYpyX4MvVCYst1qjunaUdkRFyQpIjbb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752723594; c=relaxed/simple;
	bh=gIqQjfi490Zh9bbDR/1JKu3pXxAy6E2Crt6VORpWzSU=;
	h=To:Subject:From:Message-Id:Date; b=QBWePrl3XC9I8SBK2GyuxV0QSHESWL1Ywhe37bf7UwSw25NVe4j5O1KBeoG7IgemMKphPJt0xl3P7EvZeJJQPV91iyuvRxY81+JhKFzFLb55mkl88W9g0folxXk967LybrYt7ZCozVRjCSkDlf/agwNY1LhWqkXjDZ9kGt4CSLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJ3+nOWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJ3+nOWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CD7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752723593;
	bh=gIqQjfi490Zh9bbDR/1JKu3pXxAy6E2Crt6VORpWzSU=;
	h=To:Subject:From:Date:From;
	b=tJ3+nOWACtcElgwp8MVeH/uM0iOdHiyoTkDTB5HBVwFU2KFg934OCXcWwfoFLJws5
	 cOLj3YgPI0OuT7C+ZI9PICUn7pS2SdUFSAhqSlD9qCAfQ9VDycVEZ9/Tk6JLs9x20o
	 3td7sM9/483i6HsHVscXW5zjZJzeUPVRtRZpliGZZPm9x6RXkbZwd+pUTzfLla6tcY
	 mZIoVdCGMSG8jtnL7J53PvLPOD94vMyJSPq//+cMriDZVZKBjiSr2FKDTwbnV7JLgV
	 5A0rXK1//43RMJiu3jZPW2YeYqwyytXzCIprLMjYeD+p14gTT3n2lUOx9mVIUxUsi4
	 PUAAgwkd0DeoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A38C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175272359357.15163.9608103434262041133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52852971ddfbe6bf6baf56f51cf31f21a02d4f99fa887025caa9787a1cea0ce1
Date: Thu, 17 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752723593
