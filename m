Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E44315F
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755146994; cv=none; b=a29EpSL+0O8edc6m8tiVYd0D1e1xGIfKIjQ9x2cVHH8Ct7nKadfhXsIqy6SgiG5UsecAn3kiTZ0jnxspoIxxop8EcW7xaBZ084oZ8hPB0Eo5x6zwotnHAF5BUsiSMsFnzJpi7B32dEUA/DoJQRlNOyvc6W9G65jxoww5+dGGcRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755146994; c=relaxed/simple;
	bh=aUnVRWSm419/dpfchdH2JVLcGWBiNN+38CIzBCHB4WQ=;
	h=To:Subject:From:Message-Id:Date; b=Px027Nih3EXR409SA56tPA5dgVK1NgttyL0ori2SEDQXqOkXyu3j1AKMC296UY3Bk93fO1axKXB2YkwujPDpoR+46JZLNvV1uLJUZKmTqqpxlaOPnsB7BNmDvpSjwCjZehE5tdPxH+3sncwt2xP1B5mstpQR78b9rVhz09zULnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0DBYj7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0DBYj7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A8C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755146993;
	bh=aUnVRWSm419/dpfchdH2JVLcGWBiNN+38CIzBCHB4WQ=;
	h=To:Subject:From:Date:From;
	b=W0DBYj7MrPcGSbBd3FQfNzInrK9b+5UdxxmKU22FPfbWrnQG6jISR/eeFa+TGR+P9
	 so1q+C+o1l/snEXdknPy3XBeSMc+BC5rU5WH8xftwlxzA6fWMpqET7CFtdb+ULQfrV
	 dLpeOCZhGzA8+gUb+Xs9aroahyXwUfJesXRbLasBYHwgO+d2u4G9PoeEz37Yd/GWJb
	 l1R2LemmKR6W/H7T8MYOxlfqVisxd0UDhodnFbeBF02uY16TQKPfQ3WFNHqfSymKZ4
	 bOeRBxifBrg0pyGFFvhzJhFNrYwYSLOiMA/1HkoApOTBiClX2+6reURz5Qhy+uvnD6
	 yMLB3IpOU2WDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB7CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175514699357.8458.2800950840957612470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65c6e05a6c0c3df8811cb66b8b98b7a1c00fdf68843cf336ce63012d78ce165
Date: Thu, 14 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755146993
