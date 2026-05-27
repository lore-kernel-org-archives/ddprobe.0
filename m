Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4680822157B
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779858754; cv=none; b=IHP8NDS6TRw3qp6LxT/kt97siipLfl2rR5ewS6PVKp0lUx/oDJl6zYI8H9+NAv7ZnP8IAt5gk/u5YTVRzceUf7EaEetomQIgB5CwbrdLanUl1pQPqfEBr6RLgwrly+mMGY14/Y63+TdRSleosXbDNiDpYxGhhUlbzsHZ4cKkxO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779858754; c=relaxed/simple;
	bh=RwUXT95h1dyJzYYiqJmRxeQ0DPtFilx4XtOysyBzWVA=;
	h=To:Subject:From:Message-Id:Date; b=NmRqbzFp4m0NuJ9nRfp+NSd3zCisH+gJP0iJOSwrqSJ4MgO4RMjWXTBFIkUjsKyTNktUk7HZ/6ggtDTRkHDYNaT2XIXSV5OZU6PpRka+6YPXRTWvXmcOUt+2aRsHOoUYKkPsZoF/qvRTi4StIIpNNa6iVO3Zwavt83bHl7S2nP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iura+paq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iura+paq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92B3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779858753;
	bh=RwUXT95h1dyJzYYiqJmRxeQ0DPtFilx4XtOysyBzWVA=;
	h=To:Subject:From:Date:From;
	b=iura+paqfyl8TY8kD6r8RK4r3RvK5RhSovKnOAGrn5576+uNfY7bKqoJ5chlK7wqJ
	 OPGhCaVD6+eXjJwZxgMOTswEF6XvbjrKqSV43mQaXzHOvMnlPDVjjwCMumQL1Z5o6y
	 62b3h2NL+pyAdSjH1wVOXxJQlNzy5HmxxY55wFfdTAZ5ZYiKp+odlkzSglzIf/HolB
	 10rPm2Z09yjN7/PVxChbOzP0bYpuKaT6R9rQCzKvb+ecRejMNy0br7rQhJ+YUWClaY
	 AIcMeqqCx1v5RXYpVVNFrHna1j1nIJW5Ka9R7nkQhfbABxD9FmQtv6mDY1p5Bu8yZS
	 JZUgze+lCm5Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD85CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 05:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985875369.21681.6421000414098693764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0488daf04126c952373f566f3641f703a07b1ae6f4fd6d05a26e0b652870baec
Date: Wed, 27 May 2026 05:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779858753
