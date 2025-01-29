Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7DC42A8B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738115755; cv=none; b=PNiyCdFn1G57Ub5usbsVJI16XLIRcaeGxbLF2v3AekKewl6nQa5e5hujVEQfL3MXpnfXIA9aWHZ7/jCj3JzyQwTjY9/5UvdzS6HHJfyt+dSSIostu9NUJg2DJivEbMTfKDDhQRavpR8LgHpriPneVLcErTBdK+Ei0gwjtK7WmAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738115755; c=relaxed/simple;
	bh=RabNeOjMmfaJIY+Ysd9GgTAflOS2qThZnjURPfFUJ1k=;
	h=To:Subject:From:Message-Id:Date; b=a3eLHC6L20Vt0mJcKF7Fo7uh31ILxNLrkOtctcY97G5oUWbtL5MlY4i/B6KnD8FPn+OkrWB9aY5MdWlhK/tuhgGhjK6+b8Q3XDgcgCMF1RfvXtDnxaoXlqb4AVvv83m/1ERL5vA2kRK3aDh1IPhrVbqAS//kXtTiDkCMtwCJZ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rS9w5iym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rS9w5iym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6735C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738115753;
	bh=RabNeOjMmfaJIY+Ysd9GgTAflOS2qThZnjURPfFUJ1k=;
	h=To:Subject:From:Date:From;
	b=rS9w5iymyHc4V0vPW3JtIhkkulhOiUmabe8UtNlExgFWqijjT3d00k2DFgiZNeNFo
	 7AWD2CfsfYRpsZtRex8vzuinbv3eEv7XLWIwh2XPOS2fRZ+WvX1xTQedmAY1kJycCv
	 iWfPX0bQE9QTaXJOBzcD/6PvzDSMg79tyBITjYTCeSWik1GL6BrO6nkm5vGO6tkNOG
	 VDaQiozxfdYpUceO6jaq9RgSzBhCwcrYVrXOZhxxfOjix2FjePGHEP39p0RbfLAuLJ
	 QiJevv2Ba6frf27tYBKI0tcYRTwRplye+9HxcVGjvomTWtq8PvCJvT+02IRrbK8STZ
	 793xA5Vd04BwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC8BC0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811575366.11966.1477931665206367148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0a6300f697153ad804f3261bb2b741c24ed9a19ed62e20d53336aad8f9bdc3
Date: Wed, 29 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738115753
