Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082F2259C9C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772228694; cv=none; b=P7HQJR0metUfpFMHXmRGX/FlhOhN60kip7i+rUX+ThVuDBo0K47aVjGwRJvHIahCqmE3ipb9RjosBsmPrcNlo9XM/urXdELBGDismca2tWKzkw/WZgWoAmkQNjZW1KQQbigcoR/Zizl7cMdWmeg+wDxmRljF5VkGNBQe3pOIoSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772228694; c=relaxed/simple;
	bh=V/9lIchlvGmokDeocu1EWLavd8YjB8cenFrFjXuo0pk=;
	h=To:Subject:From:Message-Id:Date; b=t5FZMh16Vmhg2LaATGkD56/Gx/Z1mpvi60Q+RxXb0ezB0WFA+RDPRbeu/I/FVp8YtXTJ4k9ETj5y2R0+1g9xRFQErkQ8Zbys0nVjWnhky+Upn2V1H1j6x+40I5N0sulD2bBTXfTE+81wUX2NRs5y56lbmq9pw+FWyCDk5Z/Yls8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2+QzGjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2+QzGjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772228693;
	bh=V/9lIchlvGmokDeocu1EWLavd8YjB8cenFrFjXuo0pk=;
	h=To:Subject:From:Date:From;
	b=j2+QzGjwmTojYA16+L+A55zXO+3DxmWHdfMafI9lmcCGtTIDqcj0wPtBgBG4d268T
	 7ZHn7fw+MT9Vl0CiTE2hbf9xOL7u2PWUcm6+iNqYe7x8wtTf3BZclT8p53HBe2ovVk
	 L+aEfPc7TSXNfX6D2QNdOp8afLIkwXXIFvX3j3BwJaQYymBizhovcgPyCgGqfVFLmm
	 7nlXuzqjw325uxC12I6TiySVumTL2ZJOtTW9sHt7yJ2rBYZo8bPScixRk1+RPPQV1Q
	 VEn0EPL5IE5WZoo3Mbz5qhYa8t0OMzoPjVm6QcCGOX1aljbipn1Wz9COiUoLOlucpQ
	 AOtpsHS6GakJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC34103FFAC
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222869358.8298.10666693962297910398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a1b53c1647786978b3ecac910af03aef4d067a559e317010d0e989c6728ae6
Date: Fri, 27 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772228693
