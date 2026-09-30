Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334653C276E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790754634; cv=none; b=tzEvTD8+wNbH5xWEnl5Kb+UEDXLvF5LGtHbizxHoQK7MdO3x0/ayqtquEtQLsmFvqNzqfGjtD317f6S9SmPJeVZzEgY30GWYf/d6nVbA6iDFZxlmuZIyVF79ixZg5DbqQ3DMtkGlpX5lJ/9pwvff1ZZCjmlwjKGqHGaV+7UQqYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790754634; c=relaxed/simple;
	bh=l5h3GjSaQbF6h2JlMEVQpXQ3o9oM57KiDjM04hMoInI=;
	h=To:Subject:From:Message-Id:Date; b=g6K/YW2t5dt4oE+MDFwFrGQ40uJwv2ROhp4NqES6lBweIW/Y3QdH+Ld+nNVmycTrv5JIxcLQXojy1Dk+2z7/YRllZoK8KyvxQ4v8RJgUwiYpcwWCEJJHNYYHwebCWH5VM9LT/E9He73281aXCydNaL691uKy0ijq2d9P0Acd0oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWq4U+aV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWq4U+aV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE03C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790754633;
	bh=l5h3GjSaQbF6h2JlMEVQpXQ3o9oM57KiDjM04hMoInI=;
	h=To:Subject:From:Date:From;
	b=gWq4U+aVxzk6VieSnoIpOxxKuwinIJiqY/vMHiojEldyNqVbou81RgDdS8KxlxGIY
	 iFjW5CwneiWV8NbFu5wO0FGaVDypQwyMp7JTnsObK68gOOlQa0dT/RLfmzKIyXKDpj
	 CNaIlC8n5cElu1Dp9q/LJPFxRt07ivz3xAWeLt3/YB1aTEJsrhAqMLUzOrU321/MC0
	 +u3nxsIxD1AL8spW0sxqnUlOynNmWtFJf1hu+Ou6/dcAvthfxHmTjBWkneW6vGR4hu
	 cDcNnxEKj1a8UquUW6PUr6f1nlbbUyhrFPrnPuSKHQmO5aKrISzF4EtxymmcQiVA+X
	 GwQsMag4Gy1NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EAFCA5FBE
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075463368.5290.3953307977098349953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c80218607cae7876783272bc8084e70de9330acbab1c82d4939084d21eca89e
Date: Wed, 30 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790754633
