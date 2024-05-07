Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C88B46A4
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715050343; cv=none; b=LAalLGpG4a3yA2/qPKaBcZkQ2OyR2b83/03uBarJ0mTX9H04KF8jUMTXOZnnPTJDjes+JdHI2dl80ddOCNocTwcBRXRcVBVGdVJ7JTm/7eustXjPrRaqSzDtdAP9K012UdBWTww4ABYRBppxOu1w1q1DJFZsi0pawMF5KmGzvwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715050343; c=relaxed/simple;
	bh=YXWzCVgLoxnETNeBZwyX4iJ+rvSk/E8VGMFzC88OH1o=;
	h=To:Subject:From:Message-Id:Date; b=kal3orL/4QRWdU+NU4SPY1y023+vVtWdKc9nND/PYbeYzFw710PlQ8oWYh8Izx/RMGN76s4734+Nw3wl3tBrcer7CE5UTaVneU2SegTQK8R4equI1v8dwxG/mqLiQY6SVFvoAorhPH5noIfKyzGTYIbI4FWUe7Rwj9XCJ8g6yJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvwO0IYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvwO0IYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC53C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715050342;
	bh=YXWzCVgLoxnETNeBZwyX4iJ+rvSk/E8VGMFzC88OH1o=;
	h=To:Subject:From:Date:From;
	b=IvwO0IYhFV0qg44WRX0Q74eHDtyung3ZW/k6O/l/emuvvIhzq2+r6rNo1FtFZnG0W
	 wxmMoLXjrqfi8DY3YkxLdxi5UYJoNwUd9OVgY5xAJi4Uf+USE3ZRM01dAtTj6I5iem
	 FPfknmGms24Socrr2siWR+HtdA9KBVatnIhMoM55lzelk/cgHRufPiZkq+dJsb3sm8
	 Dsleddu/3R4hBBvPk77UxB6hgw/goFtuQI+uPLIzmFJT7IdOSHuEj6ZYXjoDZxbKFV
	 O7TXN+UXeDwuQjA1xzGizQ7ow3Af40TuL9CQxePZ4hQ/aXrEeig19Yp7wdyMZtRCTt
	 bFkCfZx4umHlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2579C25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171505034277.3084.4171995851715311358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155aa8ef5ecebdd0039c775e841645c9b0e9967aefc1ec5f90f47d1134c31292
Date: Tue, 07 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715050342
