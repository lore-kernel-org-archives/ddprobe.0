Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAD719F480
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749898194; cv=none; b=p30SM3WT6pcvYJYn1sKzGMv8PaLqEALroV97O6xHHsH38mP3ikce/gfB6nV3xXLOnZd9SzokGYyZh/Vm6rBKb3bvGjIx4YfRuU2B//uXQXRAzM8KAhBV0Bbk1ydzOYB+oocxmGSSo7OL2mf/K1/yVpcUuHePe1kkB3flumwM8GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749898194; c=relaxed/simple;
	bh=S0q5pN1KM7EjvTlEU40L4DyMTU+I+F9Jpw9znQSUlvc=;
	h=To:Subject:From:Message-Id:Date; b=eYzNVR298YVHiqOYI5vOZF8x47OOv74c8myVdG+1dcIpAftl8oEnRMk/2thcLjU/ORcqyr1o2yyQedC00MoFy77YQ+sfkNW2NFs2+cRaVNS07dBZbBYSWZolPWniG6R95r3zU2E6MHCoW2PNzl4xavXlTjqIfrSEAxGmeX+uWx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFhG+ksM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFhG+ksM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749898193;
	bh=S0q5pN1KM7EjvTlEU40L4DyMTU+I+F9Jpw9znQSUlvc=;
	h=To:Subject:From:Date:From;
	b=DFhG+ksMeCbC5wnIvDKkNbcA4yXURk0lMWDm7lyOvvUqk9JkQXAlpSoc0iZwdGsQS
	 smH6aqZGcnPhiGdXjgZiZBpN3GJllwgWvTcr+g2nTrely7h8ee9pDxi4GIROh2STVj
	 HZyrUehNrG5TN3g6hEczWmhsXomJAPVjJ5fdMdG7j4icnJHezI9yg/Juah+S77FPms
	 UuGGe3N+mts+slLKga802d03lzvU7BY7sTNBcdICFV5dkGqTZncbYCFdjsqHxmHAd6
	 QIHg9uolbmD8mCFmtV/cOP57fgW19h6xpozYFrbCrcB1yo8BX+nte+0K+z+67E2s0S
	 oyTZVPMhHqZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AFBC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174989819358.32482.17694417020030686462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2ae30b1c78e35f203af9d65e7d5706bc118f64e664979b5f400af93b0cfbc3
Date: Sat, 14 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749898193
