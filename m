Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BEE21CC60
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762329594; cv=none; b=EaTosU7NWxJp2vOTZrDFteahmSnoHyhz5p8xgYhblZ8fnYXFJFFvA45RSo3f0xM3CVkByCCHlOLwbelsTO2IoFqIMzR0Oem32+L7Y9C6a26EW4anknpZa2lFMJuD8mndJXqVwrc18fjs2unYT/07mkARDl0+V08nTuVv8stvOTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762329594; c=relaxed/simple;
	bh=OXwsTkjYjvywV2jMWjGSzhEAFOJg+P2b364fKwM1qn0=;
	h=To:Subject:From:Message-Id:Date; b=qam67Q53OkWtxlqd2ABz8JwOKMB1uNrNB2imTc54uNQUGvpf6MCXkQE7dBQQ2wRh4xo2wrX6tu4Vtc99nElu/AeCRMv8nQ0SN2ubMgoHo2E61iLlQ7g9gzq7SmS5W44WjenAlTr8qDSv/73jzBZJY8U0QJYC4V6BLZc3Sr+O/C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKo73INv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKo73INv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30ADC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762329593;
	bh=OXwsTkjYjvywV2jMWjGSzhEAFOJg+P2b364fKwM1qn0=;
	h=To:Subject:From:Date:From;
	b=IKo73INvIBkOINZQ+aLbjDSVBAnlmTHya3FDPugzwrKwm4m62TSTARP2qxwiFyeZ+
	 gzWkbHLCVoU22ufWnkprnL8K4phTSVNFypRQLq5QlHaQ/+yYkBH/polk9fQHoXhMrE
	 oBmn68wxby+zvEAugWXyJsT3pu+qRAq6WQXJ+UNhM6rD21OF3fTLOxNIxJqUdXTEAX
	 ZTBCiZXUSOdWGfev15GuBPU1xcVkFaGmuRc+L2csjAGpvAbJsE0JPFIwpXmiG2Cwdi
	 0aHvCnsOJmBGgRGPM1L7oOszpHBN6KYDLYXx3M5AD9Jj8qCtZ9LK5E0rDBFQdqLorv
	 U5g3Bf96j78lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93453CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232959359.6158.8384285337266769894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1739dbaf706c47194b8ee95c3fac0feb0425f89465bb804d010d7af8ad7619
Date: Wed, 05 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762329593
