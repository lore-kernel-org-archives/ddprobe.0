Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326E82111
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744369795; cv=none; b=PecTSurW5YKY1MND0CB0FxOkEOedM4j9Q29ByJnjQlOd+qEuEWqNdu91PQNjSitgORV/gVLLqAHCWkrDCQ/qK2wna8kgbzFwb8ZIxj/V8na18nX2xczNy0HRSPHJYq6Z8cg+mLIKY8o3VNh2JdOr/ux9+AptiJJgSUXDhjV+OxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744369795; c=relaxed/simple;
	bh=IDt9SrL9R5ATlNwTUH0yvE5HuYiQVhD9KlaqylAGU+Y=;
	h=To:Subject:From:Message-Id:Date; b=cU/Cf+rNQc3IPVKrEksfuBfWJusrTfEnlMbw29tD+3nXO3HP2jDOWkrIjLcdx2uYHTspRH1rGaP1lQBMHurxZ8M1jmgkQ7ig9WMJADHwtzR2DFT0xP422C9G+baMthZpAfoIrrEq6AUi4sB1dLwUxnuacWDdR0zMypplrhTrxE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scuO0ptG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scuO0ptG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A037FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744369793;
	bh=IDt9SrL9R5ATlNwTUH0yvE5HuYiQVhD9KlaqylAGU+Y=;
	h=To:Subject:From:Date:From;
	b=scuO0ptGbj3i5KxZv6BxzfaD8aI6HgGkrAH2BUMC4iLRVT0ZcV8zqghecBS8eB98n
	 GH7RnJ4zn40l8EwerJspYL4e9uEIuR/5OlOqTlXoJCjPx7yXupbkg1c12sXo1+Vd4s
	 Z0R3ce2cZEqc0x/j4ABF54uFQhYjYVz3ZI383ytmOe73DqYlHhUDxoqRnoPwsg/3kP
	 UQ2gRNUIi3oioR8f3JyOn74KJfESkQQxlGTJIvg06m/pabbiyY5aY5VixuVzVkCr+H
	 jumFgThbczJ/8vET1vUNDiTgsZDcgxGpKBAOOOCDqxDoEba0rH7riUIGIOmqYopAem
	 xy2+rg67k9zKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90389C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436979358.3980.5830213268179558988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ab794f83ac1c23a30519c81feeb63a9a75a623199f3e4d75274a62385b4d95
Date: Fri, 11 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744369793
