Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980A2D8DD6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769924634; cv=none; b=nrrxRPNR2gf7VOGLoVQj9w5vVboZU9k6W/fbYQcx41ZS0ynCIK6cP3UC3eSHfeJcQqJXDL2Cfr+R6Qwmu+znUgGw95YLs0meFcKgXfYRyfaWYWK3GzSE0r1lLqWH6gii12S66pBiu3tBhxrDdYWZlB7QuHIjHJ47zkPldpBVz6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769924634; c=relaxed/simple;
	bh=rl7T6taX5OCoEXFt0HbCIna/gD7sKyM5bwkGasZpdM0=;
	h=To:Subject:From:Message-Id:Date; b=mcnmrVWWcwsepgfijtSetXLVPbgt5Fb6JHSOrcj8+ZokL805rL/9uo7sOqVjpw9bDICgwDAsRRNvHkg4OgZSjEydSrs5BaSGd2FGGSqEx4G/BbV5lwxhppo98aWvO/vP7JYRWhqXOSU6YXFdmQ50wxXjRCTstPr1V4QnZunZkrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRErNVhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRErNVhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DA7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769924633;
	bh=rl7T6taX5OCoEXFt0HbCIna/gD7sKyM5bwkGasZpdM0=;
	h=To:Subject:From:Date:From;
	b=SRErNVhU59YqNPYHLDcK7g1CdUvO0JuiTca4P347SHkvaIQ1zEW9Or5sN+JMaxAiI
	 UlHy3ywaX+Oukz99G1Aj7C2SnFtCurf9LNXV38Dm7Ztr8POqDp3lbAmmLxTAkBnL6V
	 FVr66fYaC4SE0FaU/6f+mWbLq6oaZ+xMUdUtrVrAMz+1CTa5WBURLp3LlGo+IoEIBH
	 pXmOzDt5RioRIYmXpwI5MfNrTftB99T3X/nomKBLTTSIP/nt23sQQ+NVZBeYz5twRp
	 cTyoFjP37rkvqyC+lykQfisUv7EGPCnyMayBOVFSyNyGQHEbHSWFH2KfmenV9b38xH
	 VFTcnMceVZd+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94257E7C711
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992463357.19089.3207307220946574797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f6f5e19ae1d7677402e470527b1a64e646b0e53b224a1f15d8d92212744a7e
Date: Sun, 01 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769924633
