Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4C52185B3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736438154; cv=none; b=VqDmygp2ayPidFPCul8zcEfT8XX33bCNQt3Zj4dCbU4cbP0gvbd/ayKkzks63QA0xnYMQW9+OCzCCTOFV7D91RtGb9j6DSQMoJPyNCwQMdghYO+oeISyBzTlP5y5L/5CoXNvfUihGYTfApgYfLdN5wrffpmwWerYQcC9CnbzOZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736438154; c=relaxed/simple;
	bh=v7E6VnteyifOHIDvUHyWVCXxmh4DJeT83OO83oSVodg=;
	h=To:Subject:From:Message-Id:Date; b=D4jYdvM2j3GgB8qcu1R3X0uq3nEuxvroiBnrQlm8RSmHD2zc1D77Nj0DBP3xLisIRZCNp0diDD3+wbF3UsOXq9ytxiBsLSfaw5PA29NeNeUuUt8heOHCs/SkA87TvMiNMDWmKS6a0gAFSS0YmkLo3pHn+2RpKevyHzYBgODosjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SaC8oihX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SaC8oihX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48FAC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736438153;
	bh=v7E6VnteyifOHIDvUHyWVCXxmh4DJeT83OO83oSVodg=;
	h=To:Subject:From:Date:From;
	b=SaC8oihXoYQ3Mxw5YkCQnbEW8vK8c5tWMNm3ilkwLEFwV/uNwYrgAU4HSGm1BFCL/
	 kEz/ZNFtR0Nc2/Rv2b5L5LLFTQ4a0P2OVt9rrmFpwpj8ZYK8dpwuz6T66GslfCIWvI
	 vYhC6+OwlkyTTFvmolhodlKrktnY+BseVsFhhWWaCevQuaxA0n1KtGntni73K7a4YQ
	 gaENjgULEaGhPnAmIYyg3FXrtGNlIdlFG1d+whRknx74/IqLrWK+ctYQDHWywqZ9WP
	 i54LGjkDnL/QYzaNHf5b0/YoXnKT3JG2RR7nvdvI73snWVjOBaFvzeBFTZk0YPOQ76
	 kMGf2YDHscVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F52EE7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643815357.15825.3819751404784187676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c1ae69d3ffcf2caf39d338cbd64e4ff32e3c4b0c25524ab9f4dd19b9ebe104
Date: Thu, 09 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736438153
