Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B034938D6A9
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787266234; cv=none; b=dYqy1v4riynQWLEAerY0ZP7Ya9MM8tcNGNiHKC2fLYbRiGFXdTHSyGqI/RSKumjdbckilxqCOemqiGElCg4Mr0SKtpGrVeKyQPXN0dFFstqsKnjsKnUqmN5ttKBbMvTI1XSFnUXoG43K/4OUrbF3Xw1h7KfL+HYWP/MKCx+7ztE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787266234; c=relaxed/simple;
	bh=HOCx0yqclTnGn3HJn0o4SO4jts0bjBtH7S2dD7De7gA=;
	h=To:Subject:From:Message-Id:Date; b=pCqRqpO/izYLKf39AkMWJeMZfYjOQUhZms84WBhDbDmubHE4Yi0DTPn0Yj4ddhreJArzLFtzVmt/rBh1VMrNzlC3Ge2HNfHjH+23SRDlIOznmUDxlNeE08kC+Pi8a3cTTPN0Q45pGKxG3TQnVIVtwaOJL2hUCyiu2usyrVDeRX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLS3iovg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLS3iovg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C32C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787266233;
	bh=HOCx0yqclTnGn3HJn0o4SO4jts0bjBtH7S2dD7De7gA=;
	h=To:Subject:From:Date:From;
	b=DLS3iovgv6dCT7YiUvxbhLC8/6vP53hewKKlsD+Srw5xovFIqVVtD6giUpgy2VSgH
	 YqW2v087hSurBEdY4nOydr86gTMG7hRZ9h2T000NdkWzXWBEDQ+0PnwIy2B/QngIaK
	 xIvCq043KMfehd1WYy8DIF5m9DBGYpfZPJrqd3fibf9Bjfo8ELsuavPxlR2JXEN3Wt
	 a3ePDREtpxF30A8j4E9Rh32tMW5sZYys6rN0VUtwQAwVrkul98YkVDK0xOO1cn4IW8
	 2D5qIDbQ0KfnbZkoSDvvjNUomSKFwV2yGcffplgP1uPfYvGjmzPRW+PRlKMA9YQHWv
	 NISWaGCyiaZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83AEC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726623374.27624.16742284360873384833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ea3db6b28e29eb643843ac314cd4376e4cea84c931bdf2bd193dd2af5e3213
Date: Thu, 20 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787266233
