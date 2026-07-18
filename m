Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E1C2248BE
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784348914; cv=none; b=lRTFcpsdZqeaLdCHgHwyFVtBcoWypmfmxrpayoh+gbOA/+9f/+mrPrQdih/qnXUdS45Kj5pQwdJsGYeGxSqkp1wOvs53Lhcln1ZmQ3Ox49st9Xy2cbKQ3cQmbCj7ccOkeXpW6bzH2ETfGyNLe7SrsBIjjdtGvywi9TPdwkkZ5ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784348914; c=relaxed/simple;
	bh=t32w4/DQM2CP14YMVhUobATCVBNwvwfBZ4Xaa2C2Z1k=;
	h=To:Subject:From:Message-Id:Date; b=JNY57z2/b0cbxx083N8RyA5y4MG9EL0kNkRZAPLihabXOLE6r8lhnPpCN8sWyEgb6vtEi2fqBom+2mpDtL3RLXzLdW12vA2m9AZR4mfQcUTAo52m/iD3RMPAfQ3fuX4gPvSpJIJ0QOoP5D5BfBmyFjFtdshm7d85W6YTmYqCEWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4kyXeEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4kyXeEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2406C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784348913;
	bh=t32w4/DQM2CP14YMVhUobATCVBNwvwfBZ4Xaa2C2Z1k=;
	h=To:Subject:From:Date:From;
	b=n4kyXeEHMLECjcsA9v5SigfGh5328xR0Jv5CILANyoZlyEpVx+UpphfNJfGTWUh/W
	 YPkuLe8QcO7iYgb80g5n0djkuvYnEtkZ06YwFC8eOcWPq6TjdYZ717QU9BMD9Abuzj
	 +DSnGzkILtd9g5mq7xPOlib3Jmcl4LWDGjII2CDw7tMpDOXh7855YbfDjnloll4UdK
	 cBR+ZgL5WVWW3GB08/dm1P08Ml+1gicoJ42eWcyswE6HjWtBfeZ3oh320lbirvnhBX
	 8RySIKkIvevXCGTXKgc7Zk3euzFkqSDPQBNDxZeAc+BkRDtIMOFx5/RntuiDbE4h8m
	 OKOxPvk+Px/NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0EC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434891368.22700.15812508353543715928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e8abd804612d4760b531ca120643e2b7049689ae2596f447038929164ebfff
Date: Sat, 18 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784348913
