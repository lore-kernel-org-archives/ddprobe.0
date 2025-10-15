Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A62B1EDA26
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760489994; cv=none; b=urf8rIhtNlWLs9ypvO483bnN+hHJoVoGsurtc50n/L/OIpRZQc+ITKUP3de6O/matL+OPIn9P497ub6uX/Af9REv0RG1Y3cxhkKldi2RRFJLegXOsEwzj890eI6Wdg4hYPJu6lD0zhoeVPeA1h6LFQDQjyXX+ky6J3pr2ue4p88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760489994; c=relaxed/simple;
	bh=reBmsL9xlX31socNG1WLqFeK9TJKU1Yptp4BaqdTMQM=;
	h=To:Subject:From:Message-Id:Date; b=mrfLHsFleN7sUWqbrInrZUn3mrOwvwFSvERnDHSGCx/F3x4F1rMK1M9iWlIT0lyE0q0yKgF1F473vBJYrsn+oweY6ymC/jJ7pMygwlsv56QmczlXQTQK9mokUF5KJTyghiAQbW+GPp/QywxDdQm76eXOITrlAQx8TXUz6pLbBhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mB7RnlS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mB7RnlS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760489993;
	bh=reBmsL9xlX31socNG1WLqFeK9TJKU1Yptp4BaqdTMQM=;
	h=To:Subject:From:Date:From;
	b=mB7RnlS873dVebvOgoaHy/kO04sF0E2B/rYX1UUyduUWMFeeKzndQRYrckuJFZg+r
	 b6Z33ilNt4ctLHe3OL0jQ/JQsAaiEDBahFUnw6POXvpEF/xtIutBO7GqTRGzfEo7gZ
	 B/BGOSZh7LLAsTH42SDT1t0JEnw1Rev75FkJZ8Q34jDlvO197CWRRaDzLrcAnCh1/J
	 IYTAqZo/T94+KheXFdOV0zS2Enl7vbyO3q8xQpHZFhRzkPJZziJX1RxGqwps9YLfcv
	 0SjExB80HZD/QDGMwkkySi0+jRuqM0Wsu9zDc+dQ/oePbcYvRD9La1AUd96+sgZIjF
	 1mrHhWhrax+dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA2CCD194
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048999357.13276.7713854798096568680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ed09807be2c1c2efbc90472c1f455894c63b8135efb715d60916ea58ac1c27e
Date: Wed, 15 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760489993
