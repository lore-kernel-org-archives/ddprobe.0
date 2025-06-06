Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F0C10E0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749188994; cv=none; b=Ai2+CE8LWob78W0mwWQwoyRFOIruyrFxbiOM+Th4zjYZtQRLQXMr/vL5ZMUB8ThiOc3FYs+tuL/0s5dnpOXT3Y+6Km1T3ybcnnfY9zqhmastyryJ+P9y46LILU3jpJlF92qNzRSPRK0VSJqP9voT1V6yvWmmrcyaz09rQbytDu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749188994; c=relaxed/simple;
	bh=hy18yp/93APl7y6siO5HWeyU+w80mlEZrao+8nlL/DA=;
	h=To:Subject:From:Message-Id:Date; b=F3KOlS9TDJ+OOKBcM4gTNi8xYx+1kxBs6xjng4/tIFlTmSP12HPV1yimBdbfoIL+W4U7ScdpTY3Yq0mHv9IarVcmigjsydjrGqgpoNd+eJqYdNAFNs6dvtLwWlisd0Tp10abtZZf1KeTHbKqqEnh9FiFx1DD8QFhrSdw1UQT1E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYTkg9zI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYTkg9zI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A9C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749188993;
	bh=hy18yp/93APl7y6siO5HWeyU+w80mlEZrao+8nlL/DA=;
	h=To:Subject:From:Date:From;
	b=cYTkg9zI5Y6OqtiShbsLdqFcs1M4GjfAm9wWv4keN1j+4nwkU2ucBDxk3/GuCK2dx
	 fW5vit5wX9SpnhYDE6koxJKm3ksJTMxfR0nxyEFeF0DWZvNCEdSHmnU6vPDL5bTbTL
	 kEU3zNtq7VUKi5cG+CzJ/3lL7CaMooeH3+IqNKMukNkvX3dX6tXNkdeDdfT+4nfPwC
	 SrNz/734cAH9wnC85IWLUdWEU3CCqVGU3h2E3bjskFt4CHWM1Rdf2stWEl6Kh0UVv4
	 qgQpo0efZEqjLcV9ZV5/Szigplq9TfdWOxTFfS/1Bu1i0MOx7EFITrPfBjY4I2Vu3f
	 sBgF4pNQT/SrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB8C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918899357.24817.3508373373863415468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16568ef94f642a74e32892c767c5364cf9ad4fc359437c931b02c79581894aeb
Date: Fri, 06 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749188993
