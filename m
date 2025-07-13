Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1883BFC0B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752418794; cv=none; b=oe98WhieznLxxHFFBfgtWEJSC1JJqgxJJDv1lu+eSNARksZRLDPPw8DO/4UAEmAnajjNrzP2EeJ7N20lY5GKszAF1FqPXqYQK62MJolSUMHfpdDI2uOQtGXismx9QW6Z8eI7hhKMIrthxy9q/fVT1y6ltxWYaV8eKvfpKM4h3YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752418794; c=relaxed/simple;
	bh=zfRgkV+8DL5XFBr4Mb5tpfw9kbk0go35Zq8i+V+ZZhg=;
	h=To:Subject:From:Message-Id:Date; b=rLW7av5j58WzUyX3gLR1seG2jNHYrD2as/FHVpDieEP2K8fIWXMDLcCsrCcXlPFbnNuY8s82AJBEzXTRPYO2Ew5CDXsilcSI4yEMDg4JlrYcNXHT4CR1NMisPumE2rOYmFRkPQ/TCFEnfHS7p2ffmEFYArjeO6kXiJ083MNicL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mo1hNz+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mo1hNz+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752418793;
	bh=zfRgkV+8DL5XFBr4Mb5tpfw9kbk0go35Zq8i+V+ZZhg=;
	h=To:Subject:From:Date:From;
	b=mo1hNz+iN3bePunwUPhFdRLapOfukCwFCIn4SUjt9MKrKAXPpaUAritIeHG+qVH4D
	 opR/6enyL5Unt7+u3SCPBYZYUl7GhhJNNDXIQXTJk5duD54an/8g7g4CmBaaEw+wFS
	 3MEeLTm/40soovFA+A/XQHII4b+GLkXwswEOMMpzXQk5eD0r2oEo30z7C7lHYgQudo
	 Sh2qwK0M8Rex4/MPQUZ2ArA2r4gghiKXI/7HjQFV7UhhGSmD2rc4KC2xHP1mMovAWv
	 xSv0R8QfCwgxkM4X34D3JRwdZmOhn1AhvVMXskuD86SNoz2BpkbFmlMo2AAVgd/WGK
	 QbSXOet92slBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3AC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241879358.4961.8116484559711045791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad5003201444624cddc352ae30d1c51a4b165d243c9e79cc1fe2d6111aac810
Date: Sun, 13 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752418793
