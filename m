Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEE9231C91
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787701834; cv=none; b=MTgqMCnzlJmnU5pcRGiaoCKSaVdPzwZJUCAVOB20YuAB2uLPG9gpp/F9Ys5rHaHPGR69R6aV6xz4aEoU6FgNKWVombT04WnA/ftyCYo/QdxZUsxYXhhfSAhQsiLg1/hgzuBtIzh7SGvAj1xtJO4FABzF0FSLs8m43ERm+NIzJS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787701834; c=relaxed/simple;
	bh=v+dG0jcNaZYNbpPcN+XpXJ2E7I3gpeioPZphIv4Bh3U=;
	h=To:Subject:From:Message-Id:Date; b=pzJT9pdwGXbzpQg1h9chbpQ/qRbm0eXWkq1lBuEwHEwsebHxQC6YfyFGKbcxDeHxnybDzx82T31TwhPmDpINwEKGmUv6hcUrzg2y0DFY1mW1OalIy7xtUYeAB2MISEFsngUUQWjXBtzZgM0vUfzh6E0dOsQFAAjGx3kQG2CHy4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCvE74A9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCvE74A9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3955C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787701833;
	bh=v+dG0jcNaZYNbpPcN+XpXJ2E7I3gpeioPZphIv4Bh3U=;
	h=To:Subject:From:Date:From;
	b=JCvE74A9QmzaemA2Nw0zusGtDIQXYOjXOoQvOpGSUgYjVNW+YOwedHbU7yUQVxFH1
	 pxbhZvaQUZI8MYsER4rJ/jNY6LEhTB/dVFm/HZnXBSlFYegL1tl4Ad2aNL/Qnaslrt
	 RM/mv3h3WZy166qpRRKH9A9R6Gm4m371aweHrz0xSRQUdzTBW4w6QV3XTR+L5HC0Ci
	 hGK/S3o9yxo8MHK+RDf3XOpGQsoRMw+LxTAtcCqRetEyBPpC+0kavohDPV08UaefqS
	 BURqAJHNRLsj9pFOxn9lATMbeXY5fIz4zsMOKBJQ7eoLkHxbHVN8oYuVQrutIYtPby
	 1nBrtn1G6zQ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1284C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770183369.23132.10740907507860539556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14dae0931af44a4a921d281c65db9579c63a0c3363febd2e7203c44d3ae32874
Date: Tue, 25 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787701833
