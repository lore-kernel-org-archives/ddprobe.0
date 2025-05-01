Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457094A3C
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746075594; cv=none; b=tJ05XaKqR4hsiDz073OlxDOH02Uq9dbEOKNaadf7qXjlJU9/VpGDNqhOKuLNvid3BKN/2XZYO+v3TKpWXLKVL1OyQ1MfoZk/zKNmfIzkMOJwW90mVKWjQA7nE2neOUzdhLSLa7tE8+c/QznnbSqlufX0YNYvdETDML6/h/f7X9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746075594; c=relaxed/simple;
	bh=wzSBx2uU7aJDNHzqKUjtXLIDYLSd5t1b39E7EIvYqCg=;
	h=To:Subject:From:Message-Id:Date; b=tOA8mR4xbXcWHM8D9yMsID1Wjho9QqcjCuvdr9XNhbsEmIadNVsuk6IQdsDpCKzbBCzuHSfxJ6ecI8lKDmQ172X88u6Pt8E+6x0a0CMAtenYKrN7RcMPyRFaxtZRhAr0aMHEXaGMZ5NLW5nkM0N7ykDJ427KVB1PAeLQ62abfXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSV1BjQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSV1BjQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA66CC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746075593;
	bh=wzSBx2uU7aJDNHzqKUjtXLIDYLSd5t1b39E7EIvYqCg=;
	h=To:Subject:From:Date:From;
	b=HSV1BjQL5CIDmXkl7Fy13JMryx7AN8FD0eQLXI/s0QAjhdFZp4qLfw78QgG8MzSNp
	 eCzbEzXEN4+5FwHVfafNZ7yJEyfe9RgUFXRdsIxW+8Ud5qesgei8kA1LYMpwsbF01a
	 /U32zbwS+JwXomXak4eLh+DuT/NGrHN3ZYI4omIfMwCHxVb/ySm4yWSXM0oxI5nBpL
	 czKaWyMIgyx0xsATFfdjTyZquGt9A0u1R42EN1uvCulRXB7XCI9fdi6XoV/CSJHEAR
	 MDXMvzxopuBuUB0rU9gMSaLqPGQnh6+gtZ06DzkpahruXyhLVeZe8JtQjB43E7E9rw
	 hh/vUVmkOmCkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971E9C3ABA3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174607559358.30855.6540891933020518259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db85faaa3e95cfdae4d7b4bb88a5cba2d62d1377963f637ca199ef8af90cac3d
Date: Thu, 01 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746075593
