Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C015340275
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761906594; cv=none; b=hdAa7yex/AV2VX5P7salF2uTgRdPkXKXhJinAkcT/e2n/zhs2h2mcvqER1Eo7ZBtK9eHTsKpLfKYr8ylDQ3D3EhJ7hGI+yEcl83r51sIzfmuOiViZ2KmF/ZvU9sPEF0SkSIb+agkbLe7UJ3StsIDX5J1JaQXh/jbm0ewFt1NynU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761906594; c=relaxed/simple;
	bh=BycwY1+DLE7YSjorMi0R2FqRT4um6nUxq8iGnDaaPmo=;
	h=To:Subject:From:Message-Id:Date; b=USpIIqmd8dantL/BulJCm1NcM4gmKjNYku28hsrAC4W+iIqZ8RfeIksW0LZQ5vZoaK9t14KLkwgGz8GpiL0Q2n5ADBRh/S7xdW2jrBxxlWmWPFaPg84pu5oqFmrt0pewcHSAKCGe/nCzAmHRNf7jS4bDlwQ8e6qF/2qy158GtRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM/huU0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM/huU0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79F6C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761906593;
	bh=BycwY1+DLE7YSjorMi0R2FqRT4um6nUxq8iGnDaaPmo=;
	h=To:Subject:From:Date:From;
	b=JM/huU0X1ftdZF+DNV5eSchjX8zK6+r+f0vZcY9gO8WO4L2wL4RPpza/JuYhjbG5K
	 nYzzOXpVmMrk4Cdzpa20pLFjAEeO9KhjlvqZ3+OhWd6Bh0RMfDl8X8EDtmNBa1yXex
	 BXL99m8XAaQ6HHK3Lu7XBwByiFXrtNILHgoWl/UfuEcx+JA/izzKITSAelbsxmwHpZ
	 zZ4I/QjMXgQOMs4SkaNY+FP9jT5eWIU2NRzK7Orj1CvuyW61h1xNwt5+h3egAzxIV6
	 8uOgV26aVPJM+EwodU9/kae0CuRGP9N42XNgDf0JO/96zY9IuRmQO9rYyI46g4Au1V
	 iBSmeOGItR2ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF79CCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190659358.19756.10298832500713522191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be31cf0cee766a8e06f1eb4b4aac3a93b44602a7cb9b135388ac758f0dedc489
Date: Fri, 31 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761906593
