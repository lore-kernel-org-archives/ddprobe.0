Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEA9156967
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717155864; cv=none; b=j/8Quq5ITIm/NMRpc5AfxN06rvM/opVmd2/CpyTpUx9bK2t4T2S4XIFM/ooOVgBobO636CpKfDwI3FKX6b9+I2i+i+aItp7ON7SmLiJ4g3i897wEHzGn5KD/bc3xp80nrFZYJH/BK9f58SsvHJw1gqRVcKqP91yTnjUp/a6tguw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717155864; c=relaxed/simple;
	bh=WzAdIheP/XV/TBb75JYcSklRCIDgDRQQWJCCjBZLJ4k=;
	h=To:Subject:From:Message-Id:Date; b=DctvE6n3zUi4C14qUn1C/22OMXUvPjn8QPkCf0CZN5pcubYe/0oUmuUZZJ3NMrye72ltzU5wA52li2uLiVFU+24u7jzoxSgOBlBMSwi7Xs5R5FHx7/vnm8mld3zCCSSKySfy0dwT0UgX57HNuLW+naqYncuPR9TfQP+aR+fdk3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiyaYFPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiyaYFPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07DB2C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717155864;
	bh=WzAdIheP/XV/TBb75JYcSklRCIDgDRQQWJCCjBZLJ4k=;
	h=To:Subject:From:Date:From;
	b=GiyaYFPFTZWfCps4oKkM1GEVvl10JRtClGfGV3NUX8Z9YCDm9NUEjZzQwWtdKVxkK
	 EEoHAkarnNmnE1No3uHwHGlrUIYeUxHBLrGIKh8hjpt6vaPYyU59mH53A9BFDFhHow
	 rmoVQKQqT3BdruINGoGPPGSBGjLBxMBvbEPCWFpysBkfKUjWDp5/BnPyLomO2PJInA
	 H858uI6O/KRCxG9iQ0yWnzOvnEa3AtlARBkB57JHdFBm0Wn4MgaZLbJuUz23dsADUV
	 SLu3765yX6/shR8KGPovq6gU139133lwBxhcZ11mXVuc1lM+l2BglM/nO928ItzYYi
	 VyMmZwz7Us+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3260C25B7C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715586291.7346.1491191273696370676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97eb0c072b1209023af73cc2b93121ad5a6ca845b7fb895755018ba63cc48fb0
Date: Fri, 31 May 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717155862
