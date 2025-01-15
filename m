Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EECA29CE6
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736911554; cv=none; b=PTLR6UJ785a6oBi8vIDRPjrvX5i0vrR6sy6VqfS/YPG1QdbYEJE6n5R4j45lM27OqZLNofPVTQ2YjNIUVx9zHa81cL4IvPvxSM9y6cE8+0OHFB+FOjbLTd8ENE38IxiPYN+2NWmeor5Nm7sFyd1710ekK7ujmVP/JFhnqDag0DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736911554; c=relaxed/simple;
	bh=bMbeQmsz/UKKwrwg48i+FwDFr7WCzJk/EJ+OCmPsGK0=;
	h=To:Subject:From:Message-Id:Date; b=KkBJK4MP6jXuvrxgmHKvvvOzz6rXGXzJSoLkg2oFzU12sfxKQshgS3+c8082mssKTOEVe2CInSuhFfC/kw7UMWhF/4oJlhdPepF4Yt8N53WzwXm+aQAwoh7g8bDotI1xJTlWY7MdUgjZgQk2leY/zuQhOpNGJ/Efg7xT6Pamxac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C34t2Bhy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C34t2Bhy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B889BC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736911553;
	bh=bMbeQmsz/UKKwrwg48i+FwDFr7WCzJk/EJ+OCmPsGK0=;
	h=To:Subject:From:Date:From;
	b=C34t2Bhy04lrMAW4pEXXFcZRF0sQvjsJWym6CJxRGSKsHBNrmywrLFBti4T+UKzYP
	 r82mbiBr26idZBI8wyzkHAnfqoWN6vMKHpVusMZuDOqZKQOTW02oN4VXiARpNw/Zku
	 St+wv41P6Ix0otFsEQ9oBR9Y/8QYJ+dNPD2MvbAQJKeUx8AyvdCEP2f0qDRyzJzAox
	 cgF/EOsIDNMWR1GKHn3Uf0eHMgPTZ1/ekB4LAvr9pEDRtYMisWICtQFUELsEIv69y+
	 2aLCWOK2TarfUjKibZLlW2i1l2p64HDo/oPFdouTndrjIxiVjPDiEmrTTuYx1grnNv
	 jjaeY5twlsYiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E80C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691155361.2429.18325340812312331162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1061f92dfa0b10ea09878b35dd1bba0d35d9e8d28d0901e5938f64842b2aeb6
Date: Wed, 15 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736911553
