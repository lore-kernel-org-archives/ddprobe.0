Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276A128F5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791433234; cv=none; b=U226sBjBgaMqMzQTSubPuUshC/CNy29oXwz8K8565du8hvs6a+vzonAoNuIHP/CcJwDKCffwX+RMKxCnO6rW97arGJMo7h7m9qH0Bas8wfp2rsNYxAW2wSMyT8e3ZH+kE2IsxdoMg6b77J930wjvaiyfdnVi2fucjgzTX1Bd8J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791433234; c=relaxed/simple;
	bh=3qnbBiocW7JU8tXIJpFTtbckdCV8gbq5nCiK3KCQgpU=;
	h=To:Subject:From:Message-Id:Date; b=KAnUN/BGvu0GNbAoZYwDQSb2wPpf1xS5+TKLErV8uIE0sTv0/cFCPLI6Hbv5j1IJ0a9fyxhoqK85P4MkNUCsB4Mi6pmcT3XVxXrUWX8PpUaVzp3Z7YIgf/r2iXEN57LIsVtMjxRvRFjlIgyPcXiG7W1PY8GDka9ud1I5lCCbLRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkMkK4fh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkMkK4fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AFDC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791433233;
	bh=3qnbBiocW7JU8tXIJpFTtbckdCV8gbq5nCiK3KCQgpU=;
	h=To:Subject:From:Date:From;
	b=FkMkK4fhIn4cujRbgC/winUmHyPTvL9Xo+2oKsWRygTSRVdcuxcvaDpQfWJldmquZ
	 95rdX6svdi4xmYGO2dOKeWzqdfEpn0I8KD5J5J4XIk7WYOy7jQDFzO2DcEtt8gInH9
	 w/9HCZbnhkO4gpne+C1k0hq6Hr+qegy8J7q81ojgc/ugWFs/vs0d5PO9ePgUaNT/cY
	 rQvlYDHlSGmkdpEpKDirdqJaUJO/22SM+L1G3ISVQnW+rV1XpsWFwltAuCR1FGekzQ
	 1lZ549mpsUMilP9voTZrr/SscR3/2LjGIPL55dseJ44D65BRMVWYsQpQfKdZY2c5nF
	 WclcU+PCJ4SnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEA5CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143323377.17800.11242141928427557934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54eb46a53a25a362cad7ffee2f31b75e0b98a5b5c42e51a540575a72bd1dc8e0
Date: Thu, 08 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791433233
