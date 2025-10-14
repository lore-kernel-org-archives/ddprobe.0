Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239A530EF77
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760428794; cv=none; b=PkMv2fZoEjtU5fZFD0MF0Sv8ggY+VIGl8PXUUeICrcOjcF7sRqm63rd0SsZ9KuEZQR2MRLWzbMeDF/meFdqGbEaqRbLOpp96Qof1f2lDojlTAr+MWwPgTUd5fe2HnvmUxWjy5bpic4DSXr7jZGSQx6qsNw9CcwhtoBwJ7sadcQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760428794; c=relaxed/simple;
	bh=7/3A6pjUQYDngRvbJJqCAPYL6tYW2aFUu7HLNlMsuT4=;
	h=To:Subject:From:Message-Id:Date; b=tWWYgt/k7J2FKdlkZbQ72RUyXQSWydnInF50OaY40NeX9gJ2BN58etN1eytgUDs5kMClfmQMPc6Vn+8Ma2SZdwqhav1MPRgQeuwezGmUehxEpPa7J/NXYgTQccpEvPpRYIumQpc3T5DEsLY8QNZk0P6uBBbgOv7ij5j9N1bbwlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGNd8Gta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGNd8Gta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CDDC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760428793;
	bh=7/3A6pjUQYDngRvbJJqCAPYL6tYW2aFUu7HLNlMsuT4=;
	h=To:Subject:From:Date:From;
	b=MGNd8GtalQoIWGKJD60ZFqwVvc5ZFCJh78GRjYn19Nf9jkufAA4pK0sgrsp1P6QWp
	 vI0u9tljVibF0P9Bhi1TSunF8AVpD3q+xLTNRQ2IFdTU2mT2Jl/gvOfSqV8NThUboX
	 QqKbvLFTc4uzmD5tgCGIrAhYhaIxGYeemuYu5M15/OoDGIUSPNmTToLiIBzKdYyiXt
	 dYrTgZPDaGWKofdzS3yaIQBBjNrWnnobJ/ulyscVemM1yT4/6IXo/jSwK2N87I1Gd8
	 PZ2070JaHftahxKYga73WoWvjyAEW8KnNptCT6G3xDuDE/Inztm8FP6Pd0jTXi4qMQ
	 C0nvHiQig81Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B6CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042879360.20798.7022142180529894711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e4c3d58b86759bf4d7c97c378c62c69618e7d79c8de65099095c74c0c3ab63
Date: Tue, 14 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760428793
