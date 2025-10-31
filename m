Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D57334C3D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761898194; cv=none; b=e3w3yQZwYP0NuXRw81Cgh4grbg5mTdd3Wnw1DXM3C3fZBL6WASPNsbSdnQbCx9UzPk94Hze6zjDcUuqsOF760wUJVsBfPt7jW2VSsUqpcsIbjB7AfnRD3ERFztWUz333kUfMZsybNFlQ5wcbFzaC14KXpc7LvtWY31PcwZe/y24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761898194; c=relaxed/simple;
	bh=8sRUrAe/qc4J1M7ToogPrTALjBgXM2WxWPw92oAAGoc=;
	h=To:Subject:From:Message-Id:Date; b=ZxfQx1CO99gOoyEEIxWT8uXJuJnO8FQuYzNE3WqCxNmZlM2XEuCr1RWZU/DhktTnFUoPqrLOYpxCJ1h3hanuUvH3xx9yi0Fpyv+0evBKhXI2mqX8z6UtvuAiSck38rlvgfsSXhBOawbXbBlUifE2t2vPbWFsd+domr6N69p3Q38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIDQyXyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIDQyXyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761898193;
	bh=8sRUrAe/qc4J1M7ToogPrTALjBgXM2WxWPw92oAAGoc=;
	h=To:Subject:From:Date:From;
	b=OIDQyXyYlzLR2sXmIEWuBfGSSppXLrzTb0FpIx4FoktP9aeXKem2Yl/LTAd8YiemR
	 BJHOIMa4FyHGu47rVgWVXBdLJJ1wx7CXIHNUFyCwL62PiExwso8BiZJi+5/xdF3/25
	 Kuu0zKnaxY65SSN6VjjLu12je3xqZmYEjoss+/CaQFRAeMFTnmS5IURxzNQTDuCKgm
	 A571meNakKshWlwWOW/9tXxfSIhxP/Y40wV1X5SPIFSijZBOw+NIN8h7YU1+83Hwyd
	 PUyZcTcuJehsq4f+ZrqU444aRxCtPccpJyUq7ytofDjo66nj+4pXapfSWJM02psCU3
	 +zumZCbkoMNGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95775CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189819360.20371.11574001648474248063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c75472bb56aac3b3fd6e147bcc21b64ab5f88a44e3756614d2e32eee5608495
Date: Fri, 31 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761898193
