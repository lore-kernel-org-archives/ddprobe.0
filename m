Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BEA329E44
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790955034; cv=none; b=LkfJYBAAq3MwSt4kJUShTUD2WCdwQS0uub+aTcbk9mLlrLQkbKGzSP4dW35GQnOhNUM6AaMmn2/jFbpA9fADiCjLgWUagB4eRkAZahawiO+aFycSvdmxPjNyD4zWogiWGRJoAMXPeW+Mxq0s8Hn/PyYS1FmN1dQ66874wURBUes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790955034; c=relaxed/simple;
	bh=QNanWspfWihsYYEISfDd4WVdpOXiPt3tG28ZyISOhMI=;
	h=To:Subject:From:Message-Id:Date; b=cj0g/f4+bcNgMWmJ4Y8pPOfnUCHxbtd+m/NVSwBL9mLGlvlYNf1y+6PfWE8jk4W3djNEcFNK0P7Jt/OSO1uy4RgH8dJmXY8mJ0tAQjQbuRI6fCJu2ZrlLxzVoVD1dfSy6a6MeOX4zXUCYhUvEAF/0/6a9K94AbNzaiVPmnZbrP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcS4J1P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcS4J1P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD369C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790955033;
	bh=QNanWspfWihsYYEISfDd4WVdpOXiPt3tG28ZyISOhMI=;
	h=To:Subject:From:Date:From;
	b=LcS4J1P0AYeMusXmqHs9t7g3GpwxYRAaSU4MY0H+JhtMQYLZ72Z90PHFqTe5kfhKD
	 twZSX4Xc3XaYCVQXomDqjdH9QKXksvYvDNf6MOJXPL7wFVg916bwAlAyNXUjNjU2Jl
	 PmdZcx6BArefnfboq415koV5kb6j+Cm7IBABG9gagQfI2fRU4VPDuxWWKqih/EkoUV
	 k2+CzmoF8aN04dL5r0wV3C3wVaVj73i/pqRGcCfMltNEqEWkwaJxzZE5LhvEeqOZIa
	 a8dzFMO8T9QsEl/NkYAj4w0dGXdJevnBd3xJH9f7tfsHWYkQdvQM452OQNZOJroEt4
	 0OAWVeWuO56Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB190CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095503369.17937.392433730299560640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c095654c4823fec4f26be7344d424d97ee5655348b4bc5dd17533531d1c174
Date: Fri, 02 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790955033
