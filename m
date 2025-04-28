Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5AD268689
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745832594; cv=none; b=L7WGpHdUGY/FqqEiXLLhUyDQuiRuOQLWlFYLHSaSuRmRPoP+HarFVgZ6S3I2z6H4OYDdoyD+/DPIqB3imWVWpVCVmZBR3Kz9zTYb5Z+SFiyz/iZRBv154uCBQBVTyB09u7T4GNwOn0gsMkd92LXCatjtiW772idowBQejVlEkp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745832594; c=relaxed/simple;
	bh=LGW0fcemB5W3I2pObhdXtMDCLAh9Ht7zYpKCzJmKPFc=;
	h=To:Subject:From:Message-Id:Date; b=FTzlzPqsns24C1obio9DU/uKkWKCM5VJ5DdLgtutsAxGhoN6LBumorsI43Ay9UQRhG5LVdgzdrIOAA6ssWZztY0IFoVhog8H4e6rZxiT6LlY/0Qs31zf+2LgzwaK7ppTg5lFhxdi1xPd3HTt4412MYRtNrE6J4Im1lZt92R2b/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrcyytnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrcyytnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCF4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745832593;
	bh=LGW0fcemB5W3I2pObhdXtMDCLAh9Ht7zYpKCzJmKPFc=;
	h=To:Subject:From:Date:From;
	b=UrcyytnQutD3gVhSvy8quMia2MA2Uev+VDlanQYTfhq26WYICtPgB33omOXfC+3zY
	 dBzNQq6rJndfCX5No94Qbk2cHdIwvfbsooFXMxEx44KztmD+00Nlx7jrTLrnqtKYE8
	 BBOP8JrS+nKWD4DFh12Q1pfV6cvt91o0RVHGUur3EGBx+a1febCUDnD1BVganxQxbg
	 aleD9ck7zo2u9bYRkDqauYYM4hiCqC9EjVjdmgyD+k5GyMg2MVt56UqUifMe34G6PT
	 x9WX6fxWp0SNimNLl8yLp0IvMWdCfNEA+4mwawl0ovQhffHlCu273UeJvjhc6qoM7j
	 v1Q1JgyiZl+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1EC36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583259357.11568.9014849799920861962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6ade7c7c01d75526b19d135e28adf90d89a4d37f875e73dc0fe0966c201ba7
Date: Mon, 28 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745832593
