Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F5B1E47C5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769434434; cv=none; b=l9EDe4PrkrdgdW7Q5C5Jzyg0OVw1jkr7AjKtZEY/DUdN8Cdc5RtfX9dkciChnb6mDfklsASTbKIuQADtIPUojRvrivkQlsYQjgkeIwPHU3r3xUHaTd1LqabBZ5FVrHwDFX6ebs9w59YyDLJGHhwBp4C9GnKM1MdehXWvrBOkJ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769434434; c=relaxed/simple;
	bh=zBerKz55EodugO14RG3iE21i01Nm1+XUPUntG7j27nE=;
	h=To:Subject:From:Message-Id:Date; b=WrreL9YwOfjz6RY5pTOiHCvocRCwcKz09Te2ErG2A5gAvBczh4b7cRBUYw/e9irKIdYIYV35zvQ2lkdf2E/V5xMMkeRuvp9j9dL7StVyMmFmCej05nAwbIbVMO4tLv9XGkMOiKnKOMLbGi0k+spLt/RyEw5G5ZEUFxMamWx4vNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zruo/HpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zruo/HpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A181EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769434433;
	bh=zBerKz55EodugO14RG3iE21i01Nm1+XUPUntG7j27nE=;
	h=To:Subject:From:Date:From;
	b=Zruo/HpHK1+OLSq1IzK5P+nH/ztszBgfQwjes3IVCyIyrs871Kdz7FhgcvDgSuzFF
	 k4tdzjqGMwMp1aeUBKh4gypi/7fbGLCxlWlfkuBl8bOM2Dm3hOcbLgqoM8Ry8J9/T4
	 eN7fJSLUjDngtHrkCKBBGZ9iAzAyc4F5pSCYnxtWA1hzyQwQ2F9yP0+xlcTQiZd+2I
	 sGm4IINqE/XTnXucg8H7UFV2yijYYvrf6Gcvluuo90Mh0ulwjAbuYEcqNPa0Kcq9qk
	 E3dF3sqzKbUzgtlLv5ngO+dbGcV7N8Ul3J8/4lTsz8YGjNOHoAF0HiZ6GYysbOb+WC
	 q3Q4MPy6owN+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92598D13C0E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943443359.11496.10063024104488000211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc665ca2f78399c8e86e0a61029fef6e5b0153eec9708956ae5c675f88d19823
Date: Mon, 26 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769434433
