Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEEA3C3455
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778170053; cv=none; b=c0RGRGgLOXrPWLMpPbuFMdqyHbFQRtf68hBWYvXOg7hOYMoAGPN0nAQCCtZ5TJJUmaQdoJjvUAXYn9cpRtaVr5DBifICv5Zl1z6YD3CB08VbeAaLxPbEaZR0XMht5kodAU5XcljYmmRHhrjMyZfnhoV3LFqATItuQAlgrhiZuvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778170053; c=relaxed/simple;
	bh=WAVBVlWFUx4T+GHQodRkbRej9T8NcjAO28lZ49lzezA=;
	h=To:Subject:From:Message-Id:Date; b=PA48d5yOMfEbdmVfknfMzDvofCu9uairfkr55KHsZOEkC/MtBMpfzp2kjMnaO63NVQ43ExLbdhhouLU/J7k+t6Tie2MmgA7hLdJ1kXwQp7LR/NhPi9coafgdLi9pFmbnr7QuYlwKNpQzJXwwPOxs2Fm9FZ57ZUsLOT9RHyhlOZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH+83etN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH+83etN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B298BC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778170053;
	bh=WAVBVlWFUx4T+GHQodRkbRej9T8NcjAO28lZ49lzezA=;
	h=To:Subject:From:Date:From;
	b=bH+83etNlmJm3Off80YSGN5lSFy+unLIw+oQVjNR3zENXtM6tzVHjV47x7WJ4+XU6
	 N+w9jWCcO/7c8E2LC8Ci84d1kUjeUTDbo6Ojz1zWHqE6UNrGBqvM7tgL+DMmK9f9F4
	 9b9Rt6lftnFek9Yg2/OKcPHTEdM7m+hiO2oNjUddtqfWkXINrdz9WOhbm3tkp/mOI1
	 uldZe31Kl9J0rDrzemtzkGz7Lr1HmDpu09ARu+BOwODYUbMtMAqVHE26jVp/mW+qPO
	 OzSXKf8mAXGRgoQgUXWcQtq7sUdCr3FXwXNsw5ig5bYUSVoIFJMZQDrqrtdUrslwvI
	 +KfVK0hukfDPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A3CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817005369.9349.14992655148670052661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d620be2a962153c593e014dda6eb77f8589363cd3a47a748bd9e88a6ae7ea297
Date: Thu, 07 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778170053
