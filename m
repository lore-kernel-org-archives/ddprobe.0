Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23600A31
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733011554; cv=none; b=Or5c59H5VZtQVqulFWSnaB6vSgj8eCEUA9zulhRlCq//jzxYX+dCHdprWf1aq8f14FIMoAnqsbfdT9qOUHt5X+f3cnmwybnhXPmmEtNGnt6AuYKf4HAKsxD69XAxsJ01/Gh1v85ox+VW0R1CFcZ7t0WIhZIIzGm0QdqBqjm/gVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733011554; c=relaxed/simple;
	bh=qMmfMjIMhYUt5C1zGaVkAsS38JhDyXUUa0opqtimX5Q=;
	h=To:Subject:From:Message-Id:Date; b=LIC4/lvpOHdYJYK4cEibXKojBqzj+Ac35gNMnVL9sD4FuCPHHI4yeT/58BqhwcDHRXDMD4dnFpzBpIHlIVBZbWW4R4K/3ucSEHNxTAUbLfGQthjwAZYpW6YgB5mq0168BKeElhEeCzWOa/NKUol7v3fxYIwulVQGpWf5PpamrQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTeL3gB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTeL3gB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A695FC4CECC
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733011553;
	bh=qMmfMjIMhYUt5C1zGaVkAsS38JhDyXUUa0opqtimX5Q=;
	h=To:Subject:From:Date:From;
	b=cTeL3gB1yR66SSmEYFrG4c+KVBnHbjfM/Lfh8KcIaRDjDC5r6LvHY9yNmnOO/s7s+
	 vXIBbuiYxy9jAnGvprA4LaHErDuCd0j743hH/AzKYxXoo72BEWQ22gFZVsWfmz/T5o
	 3uNDJ4h+2p9/gnosMAyESOATwv6ghJdDCqHtHbQifgfE/Y9+iToxGzNMeMmc9IMGgY
	 kYseEB08DkfnkjV1faUA5/c0Sz+6Gz7nyKwbnw5T57mMjoS/lgVQdsYIGp3s1drpfh
	 il1Iy9TPpCaZ41eebqCJ6blPs8GevHl7q4whX7IphZe3/dI8PiyVjUw6Jar0P35Hpw
	 SDkXWuwfqrPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A7D73619
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173301155359.13363.11350429366285506963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db2c007b568ddfa957ac7f06a1fc707b4af8a9b83229fa8728ec46d02228d40
Date: Sun, 01 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733011553
