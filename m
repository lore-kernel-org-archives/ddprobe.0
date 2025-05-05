Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1A4339A1
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746421194; cv=none; b=AI2vrAfXiCtQPptRIYoyOXRlnc/mXJWStbshqTJyllVKepraV45VCNl2t/DXmG/98DG2XpdGk0APqo98AnxvCMAtZiCRLgGfLKCXXSJfU6gy+16IO+oDYPSEqcnfF2GMp40d/1SX7pmuoctJLHlriV2y9MBKablegB+8Lps86HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746421194; c=relaxed/simple;
	bh=NdY996YAGhLp2UGp14TwK9tUEgsAE4IKte2rkvA6Puo=;
	h=To:Subject:From:Message-Id:Date; b=BiCKUSLcQdmr49XP9D8WKGC05cMPxuAGno+Os0SiXVGiO1z9u+9LJIP4qN49NLMMbSnQy3BDiMkxCTOk/BvZu0QFs5bsC3KYfBaJ257yn0klejLD5Z3YKWnDxuM7KYR70MYezjm/L7H3wj2AAp5e+VsrpOFw0z49d++7ozKMvFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NisEScSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NisEScSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D005C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746421193;
	bh=NdY996YAGhLp2UGp14TwK9tUEgsAE4IKte2rkvA6Puo=;
	h=To:Subject:From:Date:From;
	b=NisEScSZmUOzuQKu6I5VV+Fsxf2huU1VdiHoeEau1/BdKswYomuUrpiVgqLDpsKO+
	 dSxd0p9/4DKxMTfqXYuUDvp7gjXOeIGnUriE0vzm2br32hu/ZYQZ3/+WDpZs9yFLfZ
	 X7YBcOAsdndTEWag6XvQVe2kJ9ngg2zGWeu2xWOW4cYB+n4c84raGtNcgkJ5AtBSo+
	 jGIRA7Gto2nOeq0/TmRJXVZFCT9Ff7lIT494lwQlcRvqeGJIjWnhU1KDsH/9lQToZj
	 qHlXMSCfe+Sgde8sYzOhaNMK4vN192nB9OqlyfEiNQYlpE9wD6r1KUH917DHXXkaLj
	 +u2brVh7VEYuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52BC369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642119357.11753.9985783524834982407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0bc2cc990cf8fc74805eab4e6eddf27392149880d7a1661d0c94f2507ffb3c
Date: Mon, 05 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746421193
