Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442B02ECE93
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786021834; cv=none; b=IhDCznjMptziZ5IwJ8S47aQ6amvBfwf982b/hpkUlk1nr5x0kaXQFnFSnQVHhHcpej/Q9RMJ3ehPc+ZCO5aLx0OdVQVOA6f6KaC1kxKMR1G7jSwv6Q4Ed+53q9StBTm+LOatvdEANHEjEPkBsn6ZExbd0mOIbeYpFg4zg34mIjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786021834; c=relaxed/simple;
	bh=qEwYbvAmzd/+APAAeqqP7aYlzaqY1niMFn/yBQ25iWA=;
	h=To:Subject:From:Message-Id:Date; b=ZA8Uz+Ha4wLz6/O27kmmPsLAvi7RRTn1rrxQn40zJru0elxKEdKtrzWKCyeFuUclYTuphi2DXH1hQcDrjVFdnBYYP6jNU5B1KNNJozeolXcp0cVReG+Hp1CRZag6PYH3RTIh3PXRGgfrXAgWY+omdwRhw1wk2hWFzGGKHDDXunA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6CLTzsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6CLTzsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89CFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786021833;
	bh=qEwYbvAmzd/+APAAeqqP7aYlzaqY1niMFn/yBQ25iWA=;
	h=To:Subject:From:Date:From;
	b=B6CLTzsBIg60Mo7TQBeXyYKm0FLiXP1+cQOzYXl8a4zaOPtzQCd3aTop8n4c5RfmX
	 SXfBgfV2EcQ/gneZrWeZPzB/9JpFduk4UKHT1pBKiBhfSJx3gLf7Ku/S1GtWqYXAz+
	 3BtCNavagaHb4AoMFlpZGNfet7kti4dblQrm/i2baA05zQk6BMfPmPP5RTCFDYj4s/
	 qTcGNl538piLE69UW1h4xSxo+yD0YZvgQt3YeaoTwvO+L42geEHEPzeiiwIkdwYD72
	 m4P/rgNvjg7NJktri5p5Z1njYgxQQ1Jn78HoO3Fph55Gi2sXI6fgmvTPt5xdEJkMZq
	 WKst8vbsmUE5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B7BC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602183371.13718.4179091653113629512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedc8fc7b4a0b46ad0639847b7219aa0c92220fcab02d150e79c11e4583a3680
Date: Thu, 06 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786021833
