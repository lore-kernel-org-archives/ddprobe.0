Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C5A19AA46
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724753754; cv=none; b=luI6LoXiDYRi6iKRDm1KuDc+78yi7WBCzDc1fPONnxC8v59vLUkwtzchOvadASMtqSRRb7fOfF6Syg8xlpCt1LUCy0DJ2PrQVOMDOwTK0cybDquVy7dpeoTUncE2Jcw6jefLV2BJYE/UObq6XwGkXEzUV0zVBTMXMudFRbG2t+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724753754; c=relaxed/simple;
	bh=yLFKxUYaAJiOjNBlvxDn2DxYcIHBdAoWicroTgcBwtg=;
	h=To:Subject:From:Message-Id:Date; b=qOZ1yNpVegG+xE0AqwYvlGAKPmMdhhVI3XTni4Hfhgj+RWbvUobipCYy4Qu8phGLJQJF8YhcJU/Pq8zwrVsSsWYFoO0Q0Kl/WgRVV6jLnIc7dLVdVUzpPqI3dhYdNM+LtYc5zIrOfkCRRuRkXcJxqOIiypavg7AVNcho5RqtRlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq/bvmBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq/bvmBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECDEC8B7AF
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724753753;
	bh=yLFKxUYaAJiOjNBlvxDn2DxYcIHBdAoWicroTgcBwtg=;
	h=To:Subject:From:Date:From;
	b=Zq/bvmBceHHTBZy7o7nHLsQdsO/aVhglE0KehMT1jKmGf7chqJGtA92FJhJgGSaWm
	 5ojWorK1ipMjFGOqicfiVlCi/tEuJBkzOQm11OYxXc5KhxSVvzeUPhRKBAn+JXReAu
	 sucIrm1W1p0nQxnOzEZIVYsPMg1qGjNQwf1QUcZ3wyHI54qzcotSX2oZEvvmmWt+5T
	 Iq0azc89hL2f8aOI3w9pfkBtX+ABtMJeZ7ExcQ17hjxu79wheuAkGa+qBnImpN48m3
	 55f95qHb9hS/OoyRDWyq3ipNvOYnz/aijBRo+K2/mOXhNyI1K8AIw+HpQRaH6nbdOP
	 LliGJdI+Y5i7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B656C54735
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172475375362.1545.11662294262232806758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707aa52606657f38dd752d17cdcdcf4af6e9a18b3dd7043f384fde13abfb5c15
Date: Tue, 27 Aug 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724753753
