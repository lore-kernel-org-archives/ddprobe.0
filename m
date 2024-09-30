Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1799E18B471
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727699754; cv=none; b=dMNMk+mnWINHRIpgklfKDAJxlqXsm+mhFLxqNer9nbV4PnUc8O3bNkFfIIvppPuHe/knLvbSElwA+Dy/L9yAcesObmuGFp/n7XvJHC1i8iFs+CzGrdLVuGzZ/gzUVMFA86+zbzdEhZTnY5llXeWpIYluvuUqp/GiCXnc1IeiPkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727699754; c=relaxed/simple;
	bh=HOy1oPuDLZdClQtJHdRuP9kpLYnSJqH/ba2/mPuFebU=;
	h=To:Subject:From:Message-Id:Date; b=JRkKJwh9hTlL5Ok9aBJjFNj7MwXCk9wiOzMQscLkUvlKyegDrIUUkcuE1ZmRKuRdwhan5kKRAqol1iVwxGcHopHFvPVzwVV/NlwL5n6d+9Ej7SsHmMZl1tflAawrWfqMPT7Hd3i8aH6h4RomlrLEjtLp99luUPTEc1FnqgQBzQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VL5dxm98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VL5dxm98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA68C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727699753;
	bh=HOy1oPuDLZdClQtJHdRuP9kpLYnSJqH/ba2/mPuFebU=;
	h=To:Subject:From:Date:From;
	b=VL5dxm987jUuMne/Cfb7frC0rw07fBrj0vewY6PBAWbjzsLDfULXSE4G2LLrxvD6n
	 Mu8lrppuX3H8ekjJvASTkD79zTfkbBbhqZrtQ9E+Jsz+Zm4b5ZCyHXDsFxp9fYpdAs
	 NhOEnda7QS06ruIxNmvcv/9o3Ljq1qjYSkjx9Dov3BYoZGDaqC2p6Hd8AAnX8xSzij
	 QKyTwWtG213mdgidPU+0XYPpZq2/F9QuCDbI7RErvKiucKjQpzD+AhTUxSDmlaVy8X
	 WMPnFu559CHicCGes7TD2PMuTp7mDYGHioD1Rkb7J7x3Da17WDiauB6iDxGSD3zOU+
	 MO/YGTPVgSzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91426CF6499
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769975358.15647.10833425071516529709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf759037dac2a57d644904c96ba1b07accae38200a147424ff7b49ef133163a
Date: Mon, 30 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727699753
