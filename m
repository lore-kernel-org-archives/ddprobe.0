Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9142D3A74
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757023194; cv=none; b=E6GgwCdbO/gIHfKfHhjb4w04rNyMa/0JaXPtiCQ8S7qXZtIokRNdIPgO04dIZgyQWGlgCKsvDUsQRrV9GEBe+wmoGwXNw24GoWhydySXGuO5PQxdyOHqmrweGQXa0Ovm8TUjxKKyLH7FuEspdkm2AeOCXLLSYdR8UXi6PiDaFw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757023194; c=relaxed/simple;
	bh=Udf1F1B4qZ9cZ/WKcZUUTE3IxcNPyeUsll726/BoDLE=;
	h=To:Subject:From:Message-Id:Date; b=HkvGHnSGuqIeczNRgRMDFBHbFY26M/PyY3g+wgOtQqckHVCpt0WkGq0PSZb8eR4CR4Y0VYNayMtpnMzq03iEpIeSeOLbWMX712p4LTP2YafXJ+FmqI+vPsvVDV5EG2N44LjnAy9zWcPrAdRB76OHGUBbWK3t2jirqYKTeZ1ZJjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5Y7WSKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5Y7WSKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A94C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757023193;
	bh=Udf1F1B4qZ9cZ/WKcZUUTE3IxcNPyeUsll726/BoDLE=;
	h=To:Subject:From:Date:From;
	b=e5Y7WSKMY3YDdrTM0vjCQ6L4t+RJSpbCWsfiaRZFfmcBusqgm1vCpHxd29qzb8BVK
	 IzAC8fN1szTfhFKvR52MuXUAEE17zhffhZcTq1m1JGeomCzXgfRqbWfGSCgIA1yIvI
	 tyz/CeZoRjbl7cLlFs+N4BskPoHfJoI+iDOuZ6det16lrwar7yWASkYyx9KxH40IrU
	 tk1hRX/PVEBZIXlJ534MXhiwWyKcd8T0VXSlmdS9qKZvvAUba6fvlzEfsdLN39uSfu
	 o3ZpYaH2N/V3zQeAvOpK6OFsJ7BblK3zQTsXuJRNoEpy0+IutnEJ9RkSO8mzx0NMGc
	 DOHuxZAspLcYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C6CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702319357.3331.3676081472948640284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8823824ae4cffd75def06508563d1cc464787c6326b5689947f79d3df72ac773
Date: Thu, 04 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757023193
