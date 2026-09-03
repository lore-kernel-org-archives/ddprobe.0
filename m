Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014F125B091
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788409235; cv=none; b=ksLuMqGJ/qhmrh9za2cOHwr+shWxA6ITn5iguUQn9gAozLngx9pxZl4Mb4G+1NgsBozLJAuXcIIKsKRbn7wqhZX0fu1q8X5YtcLb1ulfHga5u8y7is29mvAYrWeQNrTHynrjhPwgmCXHhzR/Wwe2v4sb17x3F5g6oO91esGM6mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788409235; c=relaxed/simple;
	bh=fCDhGfN+VoA/YkvcBTi5w+r52A9qyq8sN7N/W5dZlnI=;
	h=To:Subject:From:Message-Id:Date; b=NPd44SqNi/vEVG+wXRNTykXRXEl5zd+gQcXj33D+G0ySp19lJVOsSWmJZSxXmBzddhnwwiuEk5xq0MWGKc9KBkIyITfdteMq+p0Ryteodb9TtwDcOPwE1XipEg2KZEHZNubu8eYJMpmxTqwc7KuvSpDbYvDILFMZHwB2d2Jh5Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg9MsFZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg9MsFZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA07C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788409233;
	bh=fCDhGfN+VoA/YkvcBTi5w+r52A9qyq8sN7N/W5dZlnI=;
	h=To:Subject:From:Date:From;
	b=fg9MsFZuOE9FFsZUHiH7uuQIV3chY6lgSLGI3ekIo0/aKpVXyIiALwZnVsSUCFdyM
	 blUYnTbGAjcWXvU6l3WYlnXvkhHDj4bM9RmaDmPEzAEeriQcSR5roWz9rUpNhciPkq
	 sTgWVgNMWMsbHt/HjylQbmTF/2agTrs1Cd+7YcSKqwolmfgy5T6jydclLMlKmFu7Jo
	 dJ4D1qJle/80mF4RNIGaB6K715M1bdJPUCsHVQ5GtgQAwsP6TcdQPOgSoRiCGGJA6o
	 vRECyRLA+KsCm+9rULIFREJypSKXiT9F22DtUHcgQXA+an0VPNGKcS1e9kVSEHLKNV
	 wtVAz9CuGVDMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE969C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840923370.12456.5979005104605362507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682b9e8b446b2d8cac50d30689557014e68df5f166f81431ffc432b3d5269b26
Date: Thu, 03 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788409233
