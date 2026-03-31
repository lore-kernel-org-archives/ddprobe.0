Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9D42EE262
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774969494; cv=none; b=CazegEkZ1iWkR2GwsSGa5JQkenJf+m41Zz3a1Qaci0Qi+avQIzZ0gTyHWWZglLqYFRypeDy+iu/w8vRg139gl6aIpI0solK7BR5Y+ptAwyc8iDfs8FQMnOjZf1NbyLj3y50lBYzP05qhHJ3Rwk0pbtPFEWShnrsMAUmU2OXpP6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774969494; c=relaxed/simple;
	bh=+snlG3Fw9gty/juw/dVmIeVPflrz6qcW3ZAmD86cQhc=;
	h=To:Subject:From:Message-Id:Date; b=llBLCPGdRm17VysUp4Mva12ecxITEYFRJc5XoHDM/HM7GdKWgWd7UQzopve/VQlqXrMvCzZEjWh+uURAGm9cCzH9quFtWENdlU41a3VcRDEKiR12vGxHQwsgNmdtUpwhptHCwSLSg/oCvuyppjvRrjMx8xKG6cexGLrRSJRgNBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jM7FeW0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jM7FeW0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E7C19424
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774969493;
	bh=+snlG3Fw9gty/juw/dVmIeVPflrz6qcW3ZAmD86cQhc=;
	h=To:Subject:From:Date:From;
	b=jM7FeW0zbOwLRLxga1zcH78n/VHKtlVlc16H+ckfwjyim8MQKebXHFfGZivzxKo9w
	 unFIqfoUZv54bn31/UwhHZfuCQBYYBXDOlsT2SFMOgidvO8jZgT0LoAxiENfHaYXWV
	 rS4wUhkJqdN5BO77p7jx9NmtdMMyUGGaQ+MM/enJgO2U1p6dYYcNYwVW6I837H8KiQ
	 5FjBuTlxLfhOmEYtV4xJgFxox3XQ6Crg1Y+ykE2086HH/Lwipi4W5fUuQQfPcRTByL
	 1soEcazz5MTaeUvyhRdshiureupyu+p7nPZ10aO1ETyZu417S2n8Nq/+4MSkWCMLrM
	 mcdhr+Biovzsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96921109B47B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496949360.18791.17072523516792345816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb12270db86110f70fc7351efe9c639b5615e315afa4ae8a33f3320163696f8
Date: Tue, 31 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774969493
