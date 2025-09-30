Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44BC239E6F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759230593; cv=none; b=i+RwtNXQ82wDq1mideXpiDMYprE8VuVWaT/YdmPfn0L0dlaGxgzpgt4nRbpqWsMoVMf/j2GxLpAAvlsH1qGI7zmylowC3ijSTGpNsFRlLWA2xjB7lg8vWS5J20VSLEqvcjbCiPHq8/k3w3FJsDLzeeCrNzQKZkbaYkFO+zjc18A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759230593; c=relaxed/simple;
	bh=T2NPLl/io8YNMY4JkLmZDzhKBbjfRHr2frKZalpaGLI=;
	h=To:Subject:From:Message-Id:Date; b=QovK0NKWrZ9w8BhbL7qirf3YnnzEELsh2FHwId4dcSp655cTIxrGRDKIvWtT7UsIvWJMrsEOyM1um9pds3adigHiR0b+/AKx0y3SCJNgtPj/CVIkMF5kWC4A1ZRjNEnhqBgYSD/3Ba1sDKME1Qr8qO3tR5X6YulrQhR6oZPMWeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8No5CPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8No5CPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFC3C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759230593;
	bh=T2NPLl/io8YNMY4JkLmZDzhKBbjfRHr2frKZalpaGLI=;
	h=To:Subject:From:Date:From;
	b=m8No5CPnLu4VRli/pfB29ppAG6H8LYP7d4eU9Uy3qQ6lxXU1aWjGfcD+NhHELEc/r
	 wQUpQFgh7gF9heU91YYlOupM0JyVZBHEOeu0/X0zh5Hmf8IOrD46qskwfv+RelReGI
	 IBhgxGE+HiWdqF1+UQihfhQq4QDcLJ75/VwWmTzmFIwUAJBlQKNyDLyTx8MoK+POGC
	 t8z57w2KGIsd7BRaA7zZKe5NJNMnxnr6Kja2B7nwOmyIQO7JZ5p7ElgwRVcnDfHghD
	 Fn+Co+VbK8If2yUbBp8GN7QTU1Wdg7mVgaLyWebqUlhdlSinr27ckVpCgLLgo5+YMN
	 geITfo1YI6wsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A68CCA471
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923059358.3749.15855164307815624677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee36ef68c1d35025ce82f5f3eacc908cc958ae81758ecefa11b0b96c9dae944a
Date: Tue, 30 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759230593
