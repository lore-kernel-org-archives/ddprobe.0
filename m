Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F41E1FDA
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760362194; cv=none; b=l9R/147pP0n53/r0lZWZM1P8P6oYzXZCRcW3Gzxah4md+NbcA0O86Jrc5W/hEG/Y6RN5iJPSdFt81abwIgCju6yXu9iQjJI7GWBLl1os53bDckx4XlM9X2QTtBMdBzHcv8bnBg7dOwcYPSHpszqkIcL0lpRimVt6W7YE97hIBFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760362194; c=relaxed/simple;
	bh=d6U+27qzUO/vawOV7hHe4hF+eK4Cr8Sf0WLpkx3/43I=;
	h=To:Subject:From:Message-Id:Date; b=h5FzCBnj6GK3ZBJz3hTHKQnSfq8sDEQb6kLgLyg9f3JygmNL/sLj7eZ3ykE8RrmDB/HLQetX34D+0wwulaKLfsXFB59Ne9EqpVl1WmYdnXr3KgW+3dfs+QdNfgAae7/OdOOv+HbsG/kihXkEjmrz3O0aYc6sGzEI0VRKj5Fb10Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEjbAEaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEjbAEaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A353AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760362193;
	bh=d6U+27qzUO/vawOV7hHe4hF+eK4Cr8Sf0WLpkx3/43I=;
	h=To:Subject:From:Date:From;
	b=uEjbAEafY3vY/5MmYoOOGcCXW8qrLWmdnuIdYOTvSC/ttFHqBBQxOF5a0EGuinC4V
	 ycCpzwFGP13apdz7zhHmmOn3B2bxD7ClMKA2Bbw4GScjy5BnMcgOFQUW8UBbhOt+v0
	 9zKaJm7h7vE0QtzH18P0OBADJVk/7fJ+hh6FhPp+tCygI29jQMW2qeQk5QGdLwLG3g
	 2zewm9dxAegJAkoAZJunTjjcDJdXDJ2ZSENFTQLsab/kLdgd+yioTKyeJ/EvoHy0V7
	 j2/d/kWIQ16CnqTDlNW0RiwamJ7D5lP1CM2RAYZRYwa1VUZq1pCnKRDbFhictBqN1w
	 5yzZJhpffUkhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08ECCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036219357.28501.15165272176461401089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad329b569532c3986a2abfdbfab25172f53173f67292b0bd7e7b38d2f5052aa8
Date: Mon, 13 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760362193
