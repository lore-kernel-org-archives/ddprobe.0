Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3381129BDA4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754978394; cv=none; b=NsP2t1La/Hcm0BDt5aZ1F5veL5vGNXzpHuIP5cti/px+VT6Y1lh4CwkKI3TcHZ5I2dP9uOwrnpcNDj6EmT84R0qsB+KZKZ4w18t+y1L3AIsMAaRwXB0HwKSoK9zeuDgrCkuP6JtyyIG9mmuQEo65PFHQ5K3f04Hjty2KDCBUd8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754978394; c=relaxed/simple;
	bh=YFJ11+qTmQi8e76uSseWicq9CblM1DtjMsy5ud2TI+E=;
	h=To:Subject:From:Message-Id:Date; b=HObPC86BihMCtGrzlZxFCBLegbpHCF+ofEmGTYwIg0PtnSr3mszs5Bw7NgcHckkUcI0BrtwwTHzYJV2HSbORXyZEi20BZlTSxczZKztUF/xvocGBV1+rwChU7utwJJmKbJtekP2e3bLlI5Qd8ZFGNDMgB/Kk2FMdpolZNwK/B+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk3HOIGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk3HOIGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D101C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754978393;
	bh=YFJ11+qTmQi8e76uSseWicq9CblM1DtjMsy5ud2TI+E=;
	h=To:Subject:From:Date:From;
	b=Xk3HOIGAheitYoGkiKscBhOE4cxNjCj/c/RPQVu0/UelAhMBt/fGO1jI/pAnfOJhr
	 DG8sa1ztVdmHhcfnp5I+2TJTPzt/e19mqTzShkfBuAaMPfLQWJW/U7tPDa7+OyZT+s
	 SK2J1GC/7NWUqH/p4yVRXWOPsKzUrMNPb54JnWBAao5BmrfRgtNNfBOew4zFJnE5QG
	 oP5dyEz9DUWVMtmy5un9uHy46PSceXpAQXWgS5BXWxK3AS3bbsmRyMqDQHokkxa00f
	 bSPtjGHP/uJbznXozd5kKI63wfz81640b11BR7JQDpOi8evMuteYGA2NwbXui+k+i7
	 Bv6VkxpRxxZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E749CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497839357.12032.17768171085559751601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae3a7655eff5ce44e5b72adbee75accdeb62080fb057138c1fba8adaf786d84
Date: Tue, 12 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754978393
