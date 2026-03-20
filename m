Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAD1367F2F
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774041294; cv=none; b=VhNtTb5n844tKv/Fp+TbC0hsAhsbxlhAQkwAvBxfKaavAuXKqknmZWDhPynSorMh2D1KOMDk9ukT84YgJS05HjFwOLGa28YQtQ/UHOz7TwRqaGfZYUz+20wxj7wQFTeSYEbo/hbuP6DWqnm1z5chAELecQnXnNdL01VXc3PXv70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774041294; c=relaxed/simple;
	bh=VbMxLQdTZdgk4KGthL+e8WPMxcdEwiECzXjIdzDp1rw=;
	h=To:Subject:From:Message-Id:Date; b=DTSogOLcPiVKtvHU4ULKci8i+lSLlgHdV7CLEKIGip3CEfndt4wbldX787+zDcXLVyzB88sQlKYboD7nqZJ30mceEThyT0ctV6U6fReWFFZr25MNGRZBkNCzIauONzxrIHPOgBqDfDEMn9ZQnJ/N46xelWBqcYpvZ9+LFAyiTVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiZgoQnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiZgoQnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C24C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774041293;
	bh=VbMxLQdTZdgk4KGthL+e8WPMxcdEwiECzXjIdzDp1rw=;
	h=To:Subject:From:Date:From;
	b=MiZgoQnLmkrPQh9sRyn0/T6SqdLScjovZET8y8Z6nWBvwWxSNYV3TlVydMeqz2MPH
	 MjDYqFl7KRYpmj9RpkC/cMfgtSsKVXVEYp7o+nvArl7AspHoL6ohw38OkDvjwMRwXs
	 CYAN2TAMZJrlPepQx2RagwQFSzYvPWDoZg6u542IvGzNgDHr7N8S7XcVfEFYD0DPaK
	 iT5MPePyPCdHkskKP9wVHI1LPHHb0nigWXXwxZwhvwjgdK2gW70kjtRiXHWnljsWdm
	 4XimH2ZcgKICyH+9fO1i3stkXNMJqvyKUjCkUFzd4t06C4VLrc3tUdnrB17la8uxrA
	 RQ+ilg09Co5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F31099B30
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404129358.24021.660439014177339302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce89bd9a9972a824cd3ea6d43ecff2aa85f40cd4814effafc527cfc2f3db5ea
Date: Fri, 20 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774041293
