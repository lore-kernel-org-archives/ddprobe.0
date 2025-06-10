Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAF51779B8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749516594; cv=none; b=QCI/Jc5kxJMhAZE/y4QXZFajRUEBxXR3fh0dIKwL0CHG4NNJZan6LryEMzgZMPcTfqumBwqh3tQDWCNM6LFo/2zoMQ2RJpmrQii1DBfjyLbPKs8anRinrB2hwswZXJa4uPCOxz5CNsT3A6fY4hPBoQvqcrqPPp1pF1ZKkZbR27M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749516594; c=relaxed/simple;
	bh=MVdvt8h9YC1gknjEMiERthXxaUQAujVda39aecy4AWU=;
	h=To:Subject:From:Message-Id:Date; b=RA6CPJurirQ3w6nmg5JxyFzQhP5y+dO5YDpkKYBJEKsmUWEdYCF3wnEV7z8GK9zOKsqS/8h76k4eulxqN7WuUrFUxcJ0FpFQ0gCDQiUB+g5NmrvEOrn1GTbSVXtSYbFK591lrRvzEjR7NY79fwhWX/ArezLhf2hbef1jQgRIHW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+jhprEw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+jhprEw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D2C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749516593;
	bh=MVdvt8h9YC1gknjEMiERthXxaUQAujVda39aecy4AWU=;
	h=To:Subject:From:Date:From;
	b=D+jhprEwaw2Fy/svSRY3FrVZDony2rQiRmmBUHqte0Z0QZVrlkEP1KR2v6apye74b
	 CVnW2Hc177nkQuuHfiC8aW84lj+RE0GaePhK12Ud3LXKOR4Wr0gM59VTL2WkYvXpmm
	 gmujWD+Pkeva32L+WUMf/3h8oLj7iYInXILW4CVfchAzds2ce8GzxNf3CK8l4xYQ7M
	 5tuthzQtqu9P+RO9iDnZ+vv0YagXjpFV76aMwVvrzV/nI1SyNg/hLU5GFYOINyQ2MF
	 e8Ccvr4c/16zhmrU9znbzbqba6GlVHh8p5HzLFU5/HEZR2G5O0gPdDyIjy2WvpltOm
	 RtRm+jzfA/SNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9410BC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951659357.30550.16416649176431285942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1a2e1d37635a44c9a66a69d5cfba80798b7e0fca6f37b1b6c330d30ef0ad68
Date: Tue, 10 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749516593
