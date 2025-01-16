Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D7886323
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737050153; cv=none; b=TI4FMLVhgfV2f6UBVxIBvWHwGwkJfzfmC4vgRbcf7c12rErl9QibAuSJO3yHNCnqf2GJ91hR4XfRrOo67XPQpDAkwcIafzDm0ii8z51q5ALL4g++NauLCWsmvNsAcyTYpZ6MCV4AO7+BmV2y76ZB+i9xGC6lCMgUFPNQ0CDY+uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737050153; c=relaxed/simple;
	bh=eib6WRgEdO92oPRYCIfoG1SG4SZvWTMSaGu/Rcmi+nI=;
	h=To:Subject:From:Message-Id:Date; b=ef9xIUekWQWpdR5NdPMv2alBYJZd3WpLZHH0uqyyhxGpY/Qm44JZAFGD3JDVIRdpTse7qYMPRsKSt9nRMQT1XXOGRFFNaEiyGGnNgW+uj9yRNOdMglK4YQ2CQSDOzpAfzpjJBWrcgw9BLX/hvBR28j/lZ8jEyt3EmHg9kWqKZ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyqovtBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyqovtBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D56C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737050153;
	bh=eib6WRgEdO92oPRYCIfoG1SG4SZvWTMSaGu/Rcmi+nI=;
	h=To:Subject:From:Date:From;
	b=NyqovtBfJdxNKOeXOWq4XCnOtz/kcywyJm9OjnivIhcCKajIZxOHGi1+9Fj26wJJB
	 5hP8UxAB3gm27pkBRTg9T3Fxx9j19LUrVprsA4jp576IXXYbzZQw8d2baRsNK0rFVa
	 JZOucjWHGO5b0PdFvI1yy589npuzp8IH6uzBPq6w6WRLmdMNxIoCYrHTge3dlXmEqo
	 cQ9IV8N1//kfnwDO0RSzj4rNmxzpXbRDzaj/VmxR8BxDBiN8goehCgi30CrYDLLlls
	 3vWJ2JpzyhKwlrhdDVPYblJcklNOEpdJJegxSmKsKMnT3vAmlY4XgHmIpMl7SwULP1
	 ZHtTQlPPz3nzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D5BC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705015359.11132.9750489755155733905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b7d0b9b1cbf5c3ac9fe7a7dfa05b2d861bedd68adb42fc87d881ed2df19479
Date: Thu, 16 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737050153
