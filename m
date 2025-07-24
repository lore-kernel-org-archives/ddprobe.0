Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E53207
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753321794; cv=none; b=AaryUAqLKn5szqea4V/SmnacerQcAzvOQ6+AcnyAnq/eHNTJbuaztnVspJrEo+LfIoovlnBIggemtW7tWwhPJ3k8ZdvTLa+i4crV6v5gK9gvuxQ6zxyC5fWyEv6tOzPWY+0oO22kpWzxKzmUgj4dGLpoFDQOBaK3GIqO/CsjlCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753321794; c=relaxed/simple;
	bh=E+CDuT9K0cccuNzHSb6XlX8nFeC/pnklNlsQpjf4nDw=;
	h=To:Subject:From:Message-Id:Date; b=HKHRUsmazyvVvn5wWFejM0dG2uqsRbu94hU8h8An4gL1XPlbgNiO+q3DAEx20vEXYmhJNcVpb5F/tGdLq84EYmvEPpzwFB4RDTRqV9O97IxBCbVqC4bkhVi8vLpsq74H8AMPYh8SY9jOkwwnhj6l/L7kO7WWprTmiP1qrTAGaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHm4KDzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHm4KDzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753321793;
	bh=E+CDuT9K0cccuNzHSb6XlX8nFeC/pnklNlsQpjf4nDw=;
	h=To:Subject:From:Date:From;
	b=dHm4KDzfsi9ViN0fB0q+p8E8Fy5Kc1V6h/MdkxdUzUdYqpmgOSYLp1/qOa+LXnsew
	 4f0tOBjTv+ObgzxuL8HOSmdI0iFcpXDdLJ6HsRl8LUvQWujO/2eP0BNu79dm8wT+lp
	 juykSEapAvWPfPL9oF0nf97fkmLcwP7m9CD/UgmkhcdvLJXCcB08Kz3Y6eBrHXQ4gp
	 mRIrBEA++Wub0tzmgL+rYk/CDU8wH3cjKU2WJD6HmQ7U6niq0z/MFs+lSN9t97+yGS
	 ejAM+yJCOIjABN50EXBrNJRjLKc3nZRtJS4EugJJjNX73+m0lfmhpBTM7JdVuO41pE
	 SrWZCSbhrkKLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BAC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332179357.18253.4600455916360643215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30170b9d3e87b2cd0b0e33633807bc6215b9fd57226a8cd910cca30f26a2acae
Date: Thu, 24 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753321793
