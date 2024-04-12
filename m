Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAEF14F9E9
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712951963; cv=none; b=DSnGwaoquKaZsaIyYi+73CMOSzATO1Yv9Kx94KFUBIfud618/9fC40hJ6TlFNmSQ/Anqc9mEsxuBeoqugFn8inYI2m9NhDD1xdkn6UBkKZ4whm8icelaN0WvX/8QDz5wzzpxSAE/3hQLP9Z8AweFqR5uvtlMpoeNTMi2HkHIsp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712951963; c=relaxed/simple;
	bh=JeKy5HBgWXPQhVmYhECHxSmhEUgN1iBJd49Eb3iGpLw=;
	h=To:Subject:From:Message-Id:Date; b=oxisr/iQ9ipc022jial+B4xpjPHa5WJXTz4DA8NBjoog84zshOi/7Dg5I7Yp+WhtZDlRKEYZH2vLsQROkYMNwBguDeM1iGsbHfKGMGh9AA98yIW0LekfveZeutrbNmAB9jGvAynypo5IebYWA6gQ8hAzadGux0em1N+dk8+g/EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNmspS0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNmspS0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA494C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712951962;
	bh=JeKy5HBgWXPQhVmYhECHxSmhEUgN1iBJd49Eb3iGpLw=;
	h=To:Subject:From:Date:From;
	b=vNmspS0wy/nk3nij+tdQcJC2JXmeolHckpOquGCGIpUG+9kaTdrbtmxifQ+RQzRVA
	 Psq9InOMq/H4DWp8ZEO70A/0kKP9n2qIw0ZWoTU7YQ3IR72y8dn+KKUmsf9aWtz3Lt
	 FO2ie6ffkyxldYQLV2+QsegwIED5I4q0pHbv1o9tRySUxAoMZUsHaoLcqRWYZy7ovQ
	 uXle/SeRj7IGqB3cmnvW22U0SkDmQJvXFtuohI4p9f2Oj5RQn7n7HVP1Dbv502Zrmv
	 wtUq2LaV1lJz2kv1tmJmmoBKxGRo0UZyHVkIPOcNI6/YpYdHWbLffJyIDzPNbXoBQc
	 RnXBir25HBaeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93E9C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 19:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295196281.4538.13927930696168626595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dffbfe8ebd7920939834b237412cc930dc13ae536ac1933b2e15a85f1d0a19
Date: Fri, 12 Apr 2024 19:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712951962
