Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1933126CF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760605793; cv=none; b=QViAEmvHKGwE99oh7s2B1Niwh5jHUxSC69mJk6PjQBJAaqukmulITEIVSXyS2vn1mZT7Bxsk67C0d/O3N0LF1UqxJ2Y/DyzTHw1RqC/2OZvyHt9peHjWa5GMV9/QlJm6HwMalsbcXmeNwF7eiQopOhn3DpTDUXG/pxW13AClDl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760605793; c=relaxed/simple;
	bh=4Tfoqq2rG28MC7ekQPLNjFDQxhEbYSWlWC/4N2/2hH8=;
	h=To:Subject:From:Message-Id:Date; b=NG4j/LFzWrZdwOSLQMj5N2PfEPmzZrUzWzJ08n3q0sNRvyhskNjx9g2HPSGpAhIDKHcLmsj6/Z0d+0Bqua3U6li+mhkXN5nn/RjgrPWFjaQBmaA4YCfTavluh4kVQO1LX+AEiO1qJL4v/aGuJgeLYBGSE0Bv0bI5m9Iw9couDoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWteVKzl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWteVKzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7C0C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760605793;
	bh=4Tfoqq2rG28MC7ekQPLNjFDQxhEbYSWlWC/4N2/2hH8=;
	h=To:Subject:From:Date:From;
	b=lWteVKzlrPIR3Diq3kYxeFv6Zmswie/N47MwjWuJImEPfXtdMF+WGn+46dzXCsaYs
	 VZLG9ozMDIe8gSEmrzttW3Yxvth2djOc+PXE1BRVltAsM/YJiMJ+BZjRajY2toJkEF
	 E+sA9uImI5XC1o8ZZdKY2aJH6PHuktB8mmoswqzSNfS7cUMK4fNCJ6FwZ72IcFj+pF
	 pk+Nr8FsW6RDHOou9CppiLTF/PkcnC1orQXnFIJ7794PFVAqyYFw/7tCk1yRcav6sD
	 cgN6ViON44jsCX3p4L5foD0SNXSwvtSR+nTqbHh8LqmWTUWotWPvugo21f7p3csyJe
	 rx+S3FczItlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D4CCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060579361.9266.15609906514971601305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ace6db35b76a697b2b2b2ebcf42683c4069cd8060b1efc019d53978bba6426f
Date: Thu, 16 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760605793
