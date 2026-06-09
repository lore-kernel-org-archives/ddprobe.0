Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B93F3DE43E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781041534; cv=none; b=uUdsQG9JoqJoKrsPslq2u0FzOhjuPN32Uv6ZIPJApeQT8HehU/X3QudTLaKL43Hrh9KI5Kbrt7qF8A/9h2/GzIVenGVmfLKtI8u7HS5sw1UDxNZXw5lR4PconGrK4+qvx0r1QA8Lsju0VrRl97H1/ECc2GETw9ai7ZrgZYQ8Xnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781041534; c=relaxed/simple;
	bh=sps0rvJeBtHttV17NLeRUMciCafk/HSPFTQG+uAQQak=;
	h=To:Subject:From:Message-Id:Date; b=bfbgRq9qGsDYvpLfQ/bnrJdHV1h+eT/SpPDnz0K8W58cAZnvW6JJY591TpUXFGYUfpSZalCjsQo0q6A4LwYOoZyzmCWKPLoFWBXW4EImHDa3VRRXHUXPCkK3EqATUVnTgPbRW6YEcENxV92yoCowRI3IOZHfOMEtw+MyC8MKHSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHCZbfCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHCZbfCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E67C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781041533;
	bh=sps0rvJeBtHttV17NLeRUMciCafk/HSPFTQG+uAQQak=;
	h=To:Subject:From:Date:From;
	b=DHCZbfClfL5JyArYpiwl5HMIAA0uqdDkINqVHESY7nJv85n0rQTydmYn+7Z49nyJZ
	 yysH0tLe/3AFrgb5w4cXUN3cv0hu1dGNVXfVkNyILNzacrg4Aflb6le2s2j/VLh+0s
	 aSA3zqFl6NqbBdHSlyllB7axOHJQ/l6QH7dl17+P/U1180AVgHMdneNwb0VEzZxjZ5
	 7zSjauO2GXcQai/MYuR6IgQCT1jOve5U7sf+iMLkWVhOLdwhpFn6dSr57qPfGsJB1N
	 Uchsi81ZUSzoo22lFabkv/14puolYQVkziE7Y2a+0WnLuWnYN7VPqPJkzVDC3lnvxX
	 VHjB1SP3qNEJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3FECD8CA8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104153369.31502.14635842260399127763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5741cfa2894e2dd03f076c6922573bfc290424f61119f927d4cc49febf5b0772
Date: Tue, 09 Jun 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781041533
