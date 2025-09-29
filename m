Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF5F2505AF
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759129195; cv=none; b=PtPlt7AENM7otkmaqlRLBc2op8f/0rG2sFTYO7sRoWCuLBuW0Vqx0vrGkr+avD6jyvhdF+tRSzOnkuynS93PmvYeAGXU6Vt8zRiNbFOHSq1jjYT4CZE9lTcQMiirCbR1SiK227120CFkFPm6nxIA8av++26KC6bZnvxMyi0/860=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759129195; c=relaxed/simple;
	bh=wLBpej99s6y1daDAVca8ajP1m0oNXt1gHjfi+DX7lSg=;
	h=To:Subject:From:Message-Id:Date; b=ig6Oqm6qCkB7W00WGDGQQvaMdG3xYuWw3wmhkZYfsBh+eI3MWKhr1pTr0mRgQViRMKzIyYJvgLMhvTICDo4P8W4n9hTpJCqOEq2i4uCgQ3VpkEEtQDgl3o4uaPUdLwtxZptf3ffLcBaDdQ8CwY4rnhmhk+bJSWmTSpZmf9DQ/s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMpRf2Kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMpRf2Kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C48C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759129193;
	bh=wLBpej99s6y1daDAVca8ajP1m0oNXt1gHjfi+DX7lSg=;
	h=To:Subject:From:Date:From;
	b=lMpRf2KxLP6KmU8DzodPSqZnbvYiIQs7NiresjlXK1HGsx5zeAsLSRQynCi6VwbNi
	 ZdAo7TJEuO4WVSHMPzZ/vxit4bxYGhWVYpefwM0xgN2sOYbVzgKaFv509urCKWg8w2
	 fjLP26WVIZ5Ko2198HlwcF10Sh28jrC/9ZMBS7eGB1jyRka0g+irDIMOfbLuH/pGJJ
	 bbCO6+CuwpynAN2wXxsWBDgUh0evGCP4EGs84fLAh5rsC4Sku2eECJiBaF7ZVAqN5w
	 NEAnUYsLIE7oCRliwXPlQPcDHCA7YWclJZYFHsvktiCvvGRxgcUka+ssJbWZ6qFWc6
	 fugG9GuayPuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95698CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912919360.1618.16847043478165429489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea19dd6da2b42f35d08f61d5b345ff1dd16c2b518e289f8863ba442bc5a002fb
Date: Mon, 29 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759129193
