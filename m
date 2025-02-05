Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CF9219A67
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738796754; cv=none; b=JLx83S3b/VurPXNGBAvXf4paXdsPkkI8zBzf1gAI/iYCxe9muBdKFX6uSE3IcQWTirOeAVUU8cUq2mRF2ERFaFw9igt4y8ovQ4zH6wVHjif6yV4/8NG7gQBbYnWTiahaJBieIoJ4yMvJ3bte+DX8UKp6IagTeIA2Vlx+xVK4CXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738796754; c=relaxed/simple;
	bh=VE3dzEJtcjc0qESGKqrVsZrQYt140nmoWwx7hepQ1t8=;
	h=To:Subject:From:Message-Id:Date; b=Y5CyqiKzGojfx2k1F99fkKKrjXsW2DNvrX9L3z3eHLC72+U/fnDviaW3cptGyH3p6PO8ADMCCcTGjHoSXpPRrUQtOqqGjO54if9KHkADZRayIOUcllstSKjn0R/wLVt4Oydxysnf98wp+5R/hOBlMX/FQL6t16rvwlE21pCUwKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgYUEW87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgYUEW87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB075C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738796753;
	bh=VE3dzEJtcjc0qESGKqrVsZrQYt140nmoWwx7hepQ1t8=;
	h=To:Subject:From:Date:From;
	b=rgYUEW87/PVJC1TWt/snbjzV1fMkKQ2rXeD3i1UmXHg4Mt2xpP05qo4DOidSdOKsu
	 h2yjIfg9aIzFjhj25Fr7dfz1g+IJ/3lGADw+AxMxRd28EVMaPcvkWNLtxP6zddlTwx
	 YaCY1YtFWacsEZCXY5ImubCdQ2GMN4aoD6lunY0YpX3s/cukTOVUmPmcad5R+kDB3E
	 QVS52xj2v3Xs+W9wVNnTcfwUICkUCkgeeugkfz0XRzAMAKPCFXnpxZhGGii6PdsgUh
	 eWNyRYpA0SDUcwbb4PNvCLVkXX0wLlSE7AdqWIvBUjuqC+BpLNedIyOXV+wCWbTK24
	 ToR78kdLwY3Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94998C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879675359.29918.1905505175926213590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d750e7924ddd28708f0b920cd47670d81591cb669023be11ad7b47124b8ef30b
Date: Wed, 05 Feb 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738796753
