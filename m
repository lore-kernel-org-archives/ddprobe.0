Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226712D46D6
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760617794; cv=none; b=sN6AvIMJleowWrlV2DMCt1nYce3Ns6PhFACRpvmdeZ9D7ISv0u9lgo6FAbaMmWkRwGGB9unj0nJGgAQfAk3YyNiwnXmWuWihPkEiFTxDFxo3k+ch5RkWr0tx/5q+ptDCKsP4K8eoLSPWgeOtJB29UDVH/2xAJCdm+Plm1+55EGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760617794; c=relaxed/simple;
	bh=IDEkzOJp5fh/bDU0oXxK22aLgOd2Qk61xkwV+hZZrCc=;
	h=To:Subject:From:Message-Id:Date; b=T2/+YPJfS3S/qbqgx2cd04bYQMah5RY/EBkCtnP80PjMMOJGhPOicHrNs91cFqKuweIt/jNKYFEN5qtgue9u02uEZo0Iy9EhpqhiO/9sX0nGQk/vj2DyzYikLrCi6yAZay4oeYi8qLEJelUnDf1VuwinW00WWRTEj/VERju+SFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofhvC2oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofhvC2oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E42C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760617793;
	bh=IDEkzOJp5fh/bDU0oXxK22aLgOd2Qk61xkwV+hZZrCc=;
	h=To:Subject:From:Date:From;
	b=ofhvC2oolAZjde/WWM1urzsotHlyADlBqg40EeD5bkKI+zqUBuCGZIpOnb1uGYJIu
	 cdFGFho9Y0ucsBMhYwqHS19IcmFNIJx7qsYNTcMrKZ/vfTP3pB8XiJ1HciJ+EPak7y
	 oD2DTgQumErmYMS6DYMDX26FamHrTTL/ypOHwXO9Jx7h7kXB6Uwy/Z5kg1IjGTfHE3
	 lVegfbVbLSWa+/5shO3bXeISYokCjK3z6hbp693hHVudKyzinNNH9rwQKx5hrMiKN0
	 uNX20olCkIkBfCkKzdEMDtKXEkzhWWAWHvmmubtm3CLBP/p0TFCUy5GWSwpLFQwMds
	 O7ZZoOfbdiYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9254ACCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061779359.4389.13643077456902865906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8635ef1ef1d6e8111ad70623005904df4de00dca5a0693343fce11f92f1ed4
Date: Thu, 16 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760617793
