Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65199230BD5
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789839634; cv=none; b=OACmmC9Lu+r9eAvJwztUanINHe66J/lsT2gMuS41WJP6uM1Mdmm88TlFjXsfIB2a0qG8RlpJuNnBdQL3HEiRMKzT2dp7GwzWIzCDXdMEoY3MPU5bqB2RwD6YNWXk/fGaAza+lyK/Km0tHOhcyPETPa5jqHosNoWLbkqtCeLjtVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789839634; c=relaxed/simple;
	bh=UR3nHKePxdpbOQYLGfd3ojIDJQSfy8/eDKtl1uOqyh4=;
	h=To:Subject:From:Message-Id:Date; b=uFLTwzLhEIgDFnVUPisgeFyewbBJ6f/0xPFIQOW4a3M+MZny2lUayWxLUL0tU4XgXUVJACtWeQ9f2bUNy9n3+cRo1kX1fJuHbZ3jP3Xs15P3YomaFB9YGrEJk5yfDTmR4SkNkTdenl9Fx5XFu6cylPLGNmvBmiEhp7q6taYxIFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArGfKrRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArGfKrRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F16C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789839633;
	bh=UR3nHKePxdpbOQYLGfd3ojIDJQSfy8/eDKtl1uOqyh4=;
	h=To:Subject:From:Date:From;
	b=ArGfKrRybsyxcoJkTyY2aIK2PXVYrks/lCSL2nWAs6bPEsg03PzU+flWZHop7JLxK
	 IRdeoQgG96KHS+o1CEz+bnuLxVWZR8/nWAh+RrA84tvBFg0Qs2kblc4HeCj+VqJVYf
	 QO1Hu5ot2ETTk+HF9acvDqo0LJEUn9J5fkCNl/+IQJznsRSADRsJ6Wr4vG+O+YE26I
	 DtpDNKfpqaRmZ/RJdlIeXI+RvXN0PBIUFbpUPC5eX6WmmH2OdYmeH6EY3WiBJ70vBM
	 WQ6+O2hZg0pMDRjBd8yL7zXd43Kt1wamJU64eihVKXMVAA7nKZNSVh4cD8GFKuWa2G
	 lrcVkbp8YWjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF868C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983963368.4692.6481010690276787409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d545c6192f6e7f91620d3c1f6f832418a7bd0a3ee7d9fcf473e07b489622c2
Date: Sat, 19 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789839633
