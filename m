Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300B1BE6C
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730645154; cv=none; b=YcCp3BWdwW7LKiTZHCroL3tdMmH+TTlHVMS+0EO12ZUYoc1XCW7k1XPNWGcq5vmrn4GvOhPEZj+h5zpEvJTyoqWhudH4KqLLjWgvD/EEHE6jbHoPKSEAVWxBmi81HOHyGihdo2Nvh9byEea3zqn7scXjzXUGVSFBtVTY/bPfd5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730645154; c=relaxed/simple;
	bh=k1zIOmF9rtHUibSmEU2w3owgeHPkLfeZNAqm1iJc6Xg=;
	h=To:Subject:From:Message-Id:Date; b=FXC3TPaT4ilZfSa+8aZSQ2CwzzyLTX/VSTlQarsUcpdvaRNyL4F0irX35Tb8khpvy9Aw+wTFFwvA6rBH+rPqC8Y4FRz5j8PL2J60gRswArbv3yGCdR5SAbrf+RaIcEBWwjqTeiplC0TMTn9lp0rYVWMV4o/qNFBf3UT6+dAO13E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5GJxlln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5GJxlln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD8C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730645153;
	bh=k1zIOmF9rtHUibSmEU2w3owgeHPkLfeZNAqm1iJc6Xg=;
	h=To:Subject:From:Date:From;
	b=R5GJxllnWPs8zd+9zMQWZCrxq0pvWJvQyCeHstVrF2gE157ZTxQ0baVMnBdg8Et1G
	 eImrm7zXjKQ2e47AruP2Z0hZfi6i5bT9cMbb/f7kXcknSEjpso23ndu6dhiyylu+WL
	 +9h1LwsnZQ5hStlmVQMGEBzEliiGPgbWZFOLYI1iwjNLAZ3JKoEGWj4xPO/lLeRATP
	 hVeGsegs0MBgDBRaOsWJtn/P9DNYrkPzaClRQpL5+SABN3DWfdgNBDjWy0CYaZy6s5
	 wPsqdvH1YDJ+11m+BGA3/dlmnA2NfA7qswQVUpdz9RnQoE+OGkIGoqxWmBhHkKIolL
	 Of5fU+AXyzNSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959D3E6F09E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173064515358.18581.2981867789073879840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f6833457101e65d52736bcff96dba2ed6c9bbbabf5a7f61ac291a005a23949
Date: Sun, 03 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730645153
