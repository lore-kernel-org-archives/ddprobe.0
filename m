Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15345375ACD
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772523894; cv=none; b=t0PEMaDUI9TkKSED4vsQSffPffR0JOYeK56BAY7BleSJjlMP4tRZPCaGLZp3UeHzIyfTJU2A/qRv1sHdbw6rvZSwgihFpw/V7U1NlT9l+9hV4LwiOwW8A9nHQQauMsaP39LiSYiod7Hb70MfbiapNCVowgAFpPT/sApoDPmAkuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772523894; c=relaxed/simple;
	bh=9dwIg7S1DTfRZGQrxf109zu5ln3GNAbUyIvKILxrBfU=;
	h=To:Subject:From:Message-Id:Date; b=VZPlsgYquYxY7EWXH8YS/Ee8S0GGwTkcHINQqf3r1vZ+ucGGn9B9zeXbgSfop+RUXmM62ALSyX+Wt63aIzp1LqruK9nno/Ldy+bsXmjY7dJL3BHU04eHOVixROrArVRtYQXQAMI3So00oQyl/eEcC23AER3dAePmxdpt5k6TCp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l4LZnlwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l4LZnlwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A869AC2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772523893;
	bh=9dwIg7S1DTfRZGQrxf109zu5ln3GNAbUyIvKILxrBfU=;
	h=To:Subject:From:Date:From;
	b=l4LZnlwRzgO4XUa3nHdh/LbX+GdYQl3lG+IyCXqXlyem5YQf2/Uk6o/PlESUDc2rq
	 uoPHCTH/kVDZAZ9LUV84CWZM5W14zI7fLp7EnUA9I3s4MkdtGN+3TMFierdUxoKUZb
	 uCgBZI56tiI7JzXWI/XyZPPTL8ktgtOdgdSlJBVIkih/pZd5Ujgpz1liT429jJqshX
	 GOcJn0fgVKaOxycI8Y4Ns1q5MivrmraV59iMEntS+DtJHQS2DEZJI6m94NiWcQtnmO
	 DvaWYbqXKXaCUZ6gllmW1qduVR5nYdNaCF5b+NGjB+Y+S532zmgwZ1RYgOBdOWP0cd
	 rERqAoTrCn9Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92646E67A8D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252389358.17343.323810814261261898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6197feda9aedb32c0148d484c2457efd270266910dc33f980a5f5f057a87a08
Date: Tue, 03 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772523893
