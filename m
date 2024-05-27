Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5478C20E6
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716772463; cv=none; b=NWzISoIoiBTMlcOjWfgxSaSrlU5a6BjaAGLITXaBGtuuB5Nrw+2H3c5ymtc2gJ17RIMzAs6voIlfpJLs51gKn7kHY+wivc5llMVY1G/BIKqp++LUh6GgyaoxZZDFzw8Ahrl04vrhJ0SsBKfV7vhCtxRjEXt8xonpWruMQlfqOLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716772463; c=relaxed/simple;
	bh=nO4y31mXtcTAq2tYVVtM5ekTWuC3MCSRhARr8oH+KjQ=;
	h=To:Subject:From:Message-Id:Date; b=YKfD0Msu6nC1iF7CgPEC1vGKnbzd4CHsEadndyaOXtQohyDUEVcrlo74CRL6PBjvB++HIFVeB2k4ikDPjRh5kFhiL4nDVGdGJVTUyObl/2mupdTxyfGCppEmUUyjZex426HAsacA42mRSbboWCEgA2HWd/PX6+KJMaSQ8W4jrl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty9KfovX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty9KfovX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB65CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716772462;
	bh=nO4y31mXtcTAq2tYVVtM5ekTWuC3MCSRhARr8oH+KjQ=;
	h=To:Subject:From:Date:From;
	b=Ty9KfovXRysBEZTaZeudU9uVV+OZIMexa8NIUhEAE1F53Z4gPh60yswkTs7iBwKYs
	 ssNo7mL7r+okPtWC/wO+6uE++/2uI/UHuMQVl7wMEGYmgSGdNAxx/pEXT0qqNO/gZ6
	 r/wGBuA8brYGodasrWHN5nkA4RKvpYKQtbbiyo3WxoeHKkJy6S0hKRTXF9lKTutyMH
	 La1J2tQ2mMGrqn4CZyqHZR+2dywVDCCsNCqJfc/KdBm0185b33teSYEbrB0aWFuwKv
	 RXqSj080oI3iEm64ffP4LIyTR5mEofGjmWKxeV3MUxgbAjEYEC+ZJ8Zh9AjPoPZ4oY
	 rFWr3zBgEGHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07F8C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677246276.22201.17779453731680482616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef394f37efa594e71cddd07958c9e354848bae2879881fcdb515da86e50a8dbd
Date: Mon, 27 May 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716772462
