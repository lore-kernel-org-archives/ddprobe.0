Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3392322424C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780195474; cv=none; b=R+N/0TRXElsi0w/octfwJoAmtAAU6GfJUX1XTxQjDVy2EGY5SRNB4qWF+MlgvoXmBOF/vLDjZYtyyI+NJH0jW6z+8mUVJdwiKRQorDFiGWwQ7L7/6xR4nQ/HFR62f27QUwXIkJMBt7cHBfujbgSD9ZeQe3vtxOSrFB4tveF2BI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780195474; c=relaxed/simple;
	bh=rzWNlRjh6bMsNX79wmrGKnPHE2YwqUnH8LAght5xSEQ=;
	h=To:Subject:From:Message-Id:Date; b=lhCrTGJsGEi7X63BFovXY/YNAgzpkF5BpWJTmWaptgqxNsrGuMjbEQSKyJhjfCdrpJOPJO/jvwA/FziZ41Ev5lcxqkbgfZur4wwyT2V2E4NP6eTbch6lRl6rqYcQkxo9BeF6LKiTh5CEr4PfHmtJxaqDgUxYR/krNZFrp9MvpsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cilig8gQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cilig8gQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46E3C19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780195473;
	bh=rzWNlRjh6bMsNX79wmrGKnPHE2YwqUnH8LAght5xSEQ=;
	h=To:Subject:From:Date:From;
	b=cilig8gQA3Y2I8NK/twwpXG2zxAnfFEocyzUmEEjlQG8fo9WJ2ckNLURwqBDRq4zt
	 FE4EQ0V2qyBhZim3eBIFpUFRWJIazJFn7hJT1tZiYbMYnhiGdyXV5nKEiN/j+6I2OS
	 KV/sd2dDH0RvuDgU+y/fyIdM0wlp2sJgPMLmIXwuRyuxP0IERNiS92WXKVPI6LQEjP
	 4ZdT3C1Flqu2wcI9o5gUERKbYCd1CNVzLYdhs18EUOTiehZrGo/L7eRlfI1pGuaJ5G
	 41635lY6wEPS40BJHRRyWx4SLrw5VHwtwxKXUw2y8NJuh7rs/WNNvpCPxiVLOjyWzU
	 eVpYaFXe5K8Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB27BCD6E4A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 02:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019547368.5843.7277830184785571099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59084d82b57e35b72d1017f50f21159c91b6423bfb1d2e4a4d09b6612aaf0c1
Date: Sun, 31 May 2026 02:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780195473
