Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338530D419
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791339034; cv=none; b=VCrfVFucnU720oyHfJKIjOLjPLReE3D/oxdP0gWK/2tKvgBcWGElJ4UzYhEu5ONnduSohNY+h1TVQIYAN/GRbQ63oU7Wzs0yVpYK31tHVI70KFWHMusqSppY/qZIUWFjWBsgYwMnNGJG/RCAs9aXbq7t5/r2eZwh3GBZtWfQxhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791339034; c=relaxed/simple;
	bh=PP9DrXybhNwWYS0Kw4PjPNg74wHciuTn3FLy9QzbTvQ=;
	h=To:Subject:From:Message-Id:Date; b=g8dO/N8EXsKv4FOBUtB3/BQ3YW8EJVcT+/q8SXl1nfTkEYVHnd5jdikgXpi7xj7O0/b+x8icIJrDmyGOuDyMBXbmyZG8wZuNe8KKRsCKm5fcdpMqh8LJnKlTKd+R//pHUDLawun1RqzLlNnxfqV+JR2DH3bdkvOOiHgo5yserXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVHBap2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVHBap2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4917C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791339033;
	bh=PP9DrXybhNwWYS0Kw4PjPNg74wHciuTn3FLy9QzbTvQ=;
	h=To:Subject:From:Date:From;
	b=uVHBap2d7msRgDYyQLZv4vsuiM9Q5dhbDiMNrP6NPk2xCy4MdGkUxOCvsuO5lEjU7
	 0JLg86BclFL1706kqwHtjTZz03BN/WRoTgPniLjx6IERnScGkPXGBxp1QPt+gmPWET
	 fR9f8B3ZMJ9mCqKlR0Haem6nODF3sEXrw5e3uLZehtxK2fJUCuCr29rSCpah8eGtNP
	 wJHG1Z12u8+rZZEQg6o6/Up/6S4Y3ulEJYkLH68V1fa5D87BbEinXyiTmklXdLp0jM
	 wPH3t3dJTQTN2FFJJVk0xp0A/Ds8GDa751+tONhQPGXx3kJX95M9dgxy3M/A7XDQjQ
	 VjL2jfuZxScWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC89CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133903368.7456.2053579962717538404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa25daa678643eb7543c2a1acfbcbe992bf29e7f33f5fcf107d6d4aa8b58d493
Date: Wed, 07 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791339033
