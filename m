Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EA513DDAE
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760900994; cv=none; b=ck8hyWeiwLIzZcs3LhYVcGyQLIwCe+2n93TA8n/CY1IsZIaB4UUHSWTElYN4GAfNYy5Irvj27bpE9e5G6RjPvkt06BOLNLbZ/6grDjk6NdeR7ZBrq/dYiqnZPz7DrG6PF0PLzJ3CqhbnmEXVMP4EtbrBfHtnxv3VAPloiIJMev8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760900994; c=relaxed/simple;
	bh=IMC1dRUASCuf1aeW+YEyRtbalobfBlsUwYXyGdy9GiM=;
	h=To:Subject:From:Message-Id:Date; b=STiOwVUvbN3ukg8A3bOrKC6spCaMDyZXhh8wyhYrj2GKyvoCdLg4o3tJukwD8MoCLlpqFokHqakCeIy3XzC4nEn/7+FWqGzGQYmkLgDZ0l+N0Isb+qmpD/NBCO6Yf03QBPFuBParesK25XWqC9PBr9ZhDMWc8P41V9jVtR/d0Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwtUbWGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwtUbWGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ABFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760900993;
	bh=IMC1dRUASCuf1aeW+YEyRtbalobfBlsUwYXyGdy9GiM=;
	h=To:Subject:From:Date:From;
	b=CwtUbWGZ02an1WLqP+z1cRXw5GLhaE8JjxDInhLIKc54DHladFBn6BSeRLKUwX8/b
	 U+gmlZ1fddtCyuuG/CuiZ5k5pSmWvrOYDesgBPNOWKxSxk7FmamCrlM01O0b23GWLV
	 hZ1xMm3VcmGqrK6zgsb7TCwrGZ1du6EwU7Vy9VU71+xIESmaYuUfQpjKgkJV1vBWGf
	 kxQeYM4yREtq/bOCx76GfL3339yc8939r5IwBHbGl4M7zqITXro31vgLfMU98dzsQO
	 jjV6WF4SPy0r2/4BX4fHfX2Lrokl9I7DKyp9cFGBVkvT980A/nLPq4xiYheBDllMzt
	 eVVCCv/dCvZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB76CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090099358.7700.4044442142446952170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273a8cc73b1d687ff8ad21238cab5a43039f17853a7ba1872cbcdb4de0da1089
Date: Sun, 19 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760900993
