Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE14331A45
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505234; cv=none; b=nkHWcaHX49/E4PEM04Rg08TI080l7aDWrUCGtfqtaI1wV7Min/IxKKg3bm5ADUzyzCw5HpjFFMxF1VSsHV/w17Lb/EdIeiQt9k6YPAkwAlZfsSPHMScpyjuv/FfKRF+qcMLgUQNIyaanGDah3gOQYldznHquP3IBjcy4Bg+gruc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505234; c=relaxed/simple;
	bh=S271LA3qokvZBhGXB11pFMxk/+AvF6MeuQqHfQn0AZg=;
	h=To:Subject:From:Message-Id:Date; b=G/NensvPl5jmARXfYwEMET4dwnhm2i17I+GS/1CLnf+xPDZ16D1rbPXwlhA8WQktLgI76b9NHXVCNGciMw/JuBpx0u3Fq2U6Vb+wdSYncI5NxtxAf+/zyijVK9j3eX+0yYbX+UsGKBqtwxfehrGgMXcjwR+rzuqACVh6AdYt6kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r28Oh2uH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r28Oh2uH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FCFC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769505233;
	bh=S271LA3qokvZBhGXB11pFMxk/+AvF6MeuQqHfQn0AZg=;
	h=To:Subject:From:Date:From;
	b=r28Oh2uHm4Js8PG+IceVz/67rk9wcq6aHJK3praDiW7MD2aQDEjZQwoBanrVk1bX/
	 VsA6Ujq78LauOnQgK2I4uH/VLRVLptg6E5cO8lPJ7hnoaQPDfbLNadeJUk5nLnZ0pf
	 jOwpFnZ9YpFzI2v1/rVKqWnJy/NAAk8/sws5pApnjIquD6baxZcXaSFfBfBhGTs/6Y
	 IHpuTenrlEw2zijCjlAoL/uxvvKvN4Bze3zIn/pxUjU3PsGT2RqhBnFVvi9MWrartp
	 7gUNfiJyWUHMbeYNNojt+beLgWtGoCMSHHWeMkIvReAbRCGpDdR0XjQus/EcN8sc+X
	 fBT4zq+KV4WMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975C2CA6CB8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950523360.7337.521806550912166987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcfb6be4a924538d3fd0f368ffa475b4da5202b6fa697a50f9921397909cc935
Date: Tue, 27 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769505233
