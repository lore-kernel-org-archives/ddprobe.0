Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDCD282F38
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779310834; cv=none; b=uLGnuTr0LEojnuZDO3NjLxPbRCf4lmyZ2m4Uu1Dim9+dWFjpwcEPpb0nE3moe9GUSF+A95D9f0oc1zVreJ82QDMvBYY/95PxxiFwd/pFaiBnPj846VsoleAkPN/G7Loa+qEUKOdOAJSpuCay7m1NLHq2TGyHPGD6ZfbN8PPQ2CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779310834; c=relaxed/simple;
	bh=gyBCs7fJmPyfGnr4iMEGBueZU8WEVjJ2IGiNvn/0sM8=;
	h=To:Subject:From:Message-Id:Date; b=J36xQVE9Bv8nHwlCwjQzONm9zfkbOQnDEga+pphbeC3vCoGbEe04ypdqae/258hxq4aC+hfGq6ZQAnoqosCDpa/sxFHqi9u3lN92OJ0BmofyEkQJEyw3DEv1ZYo9nfOYYNe3CQyEWFtMoROUz8d0YheegqbeLActCtWN0e1XzYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKBbrGME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKBbrGME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EDEC2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779310833;
	bh=gyBCs7fJmPyfGnr4iMEGBueZU8WEVjJ2IGiNvn/0sM8=;
	h=To:Subject:From:Date:From;
	b=eKBbrGMEUyOTYBvSDQWHzXxU92dBnMWdfVP/nGLYn0fVcJBaoNA3BYO7CAhHAH/DA
	 rTNa2tLutLA+cijcuFP0/qA91Ig1rU4YvmPpl1QgbT1zjuo+Zs7u3R7U7hLaPvwAjR
	 LZEunSTfvUrwdtWSiIlsIpoi8lWXR2oHecY+mVXxmWvBvAbFkrJSlRp9qVg9xCWHLc
	 ERUQV2TAhpFDmHAyygMMKgCRalZXMhSpg3olwv/ylAczdsM9KT7fknM+PApdYZZDtm
	 rVZc2Rpyvvt/T1MR6+EfM/1HVnmyyp3zylEWbNjt/5xma3w3P4SOYbr+HwfsHY+8e6
	 M6XGQVvyHME+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5516CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931083373.14767.8148191460655021071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ffe678cdd960cb957fd500affcf7e9749265b641cd8bab624b81f6a24c785e1
Date: Wed, 20 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779310833
