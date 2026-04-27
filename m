Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1828B3EE1DD
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777316854; cv=none; b=U/1yF6akZs8SY/ARuoKy1720FGeLDEqZit1xr41qig3zNaCE5lBrVYKrtdOZV/7HsdkVEyfFev4BJpNKu2JG1N6C9K5lKEhPjasj+GOm+ZdKN46tYtT7uWpRoU+2zCo4bn8VVJeMxRU3CiXdGVFbJq6nvODRRaMSGKh5oCPeO5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777316854; c=relaxed/simple;
	bh=XYNgQHZqz+wh0gK9NqPFIH+Fs6lhO2yZbumO8ZcC+lc=;
	h=To:Subject:From:Message-Id:Date; b=A/gEA1AaYiOhpVO/wYyW5xw+agyzcJw6QEGU5oDp1qfu0q5YjYOGBOoqx9lichRi0duaKtc/Jps5i04nvat5w+cVD1yQ+t0sckT6cGIhWOKYhfrtbUGaaJD2qNvLPaRknF5gv2+kfd1pxkaF9ZcuQiGId5zsnYJ3mBXgqX0j8CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZRuwlHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZRuwlHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1952C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777316853;
	bh=XYNgQHZqz+wh0gK9NqPFIH+Fs6lhO2yZbumO8ZcC+lc=;
	h=To:Subject:From:Date:From;
	b=PZRuwlHOitqBUyW76d8uoOG5qeVg7Z3dv6bp0d3R/twlcvSxQ6T5Z3epy+83TV8vW
	 cC+EwriVrXOMuK1zQdHM7LpUvU2+I8rXBwNTH7o4qyw+6+99mizkyyabNCGI4yPEhq
	 TsHEZljtPRCGzHOKBIxTFJ40yekO/jehVwNCfYcR0czJWHYSAtGTKwsMSdgP0l783c
	 aezmqIG0tSmb0EppKuCSwtqh7Z5OQsv8gCHp4o83O2h/idl0R7/YtkRTiBoZD/43Bm
	 HunPN2EgTxxCuWdJgsXv4mb1wuvc/nGGf3C2koD/5tRdYqsZQfTYX98HygqP5y7F8z
	 nOXP13mrGTM0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35FFFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731685372.5531.11809255071416458039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ade1d71783abe555cc3e26921629394d6917bf5de69d415eeaa5169c20a20b5
Date: Mon, 27 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777316853
