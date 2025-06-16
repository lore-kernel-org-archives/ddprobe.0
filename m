Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38019AD58
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750037394; cv=none; b=iTpL24QO5wWgvva0Fb3/SDWgcAJRpaf3bL/lkiLKocAv0DDGwv88/e4zpw+PdVioFD0DnqP/UJ4erAv4GVMR8AWrBjU2dGTq/fN3NofnZVDdkqRfV4PLwLKrOFM1ln6n9qALsl6CWBHwZNe0VRFIBpsWN+LMJviB1/qB+G2+Syo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750037394; c=relaxed/simple;
	bh=5C6QQ0x9CL6oc7qLNL2FjC9BxDrd7UIqxwAq1IDsdYg=;
	h=To:Subject:From:Message-Id:Date; b=bfSz+PZJHQALON5zeeul5ngdv+jYIp8Kx0V8unH76M5BgVfc4Sdnhzk2YXDt6UdrSfBz2cTaTKZZ4ZxXDceKxa+yaoxSv1R1mY4xK7UBaKC57fl3KJeMnVBVk0f0W5XokEK/Wm5mnqSflJQ5o9KnzFTa8YbW8geBv/ilcl4lTj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPT3e/BH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPT3e/BH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A979CC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750037393;
	bh=5C6QQ0x9CL6oc7qLNL2FjC9BxDrd7UIqxwAq1IDsdYg=;
	h=To:Subject:From:Date:From;
	b=oPT3e/BHLoKX+3ZnQDxOhdUf54geio1nBP5mUiRO3KkhdrLJitU/sN1+kO33/WhoN
	 rP8LHMLwONLaPmc5+W0hZyjsuocfATmUe4XLWz/OcWViEhsiLpqrxFuPXhAD6rJQNQ
	 CBc7oqfDTG+450J6C8SGM4wSrMR1iLdBQfg77Dzr6dK/3RUE2Jr4gm3jvTS4Y12M/v
	 AbZ9q752yiz+pbSuosbQUnmMeIQUDKz3HEXOSp4+L+mcctVI6vaBSiaDNHwg2kXWKG
	 1x5sZmnITmkyGu9kzWJNXA1wWfXvVUEl+mLuW+3E0QAMZEFRpCDAPseHDdgWJZqoPW
	 clFQlwWW6gtTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B1C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003739360.2862.4810498968152748407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bfce606a429b83b836c55f4263120ca5604901e69fac9a3f908f8b54470f93
Date: Mon, 16 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750037393
