Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A91DE3DC
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764724374; cv=none; b=MHjfB0OgU36TEBFkwxRDlqnGV6feALHn3LcyDp9lrFKE8rtbiFr2/IAQqo41XeHdFv/DUhba+6Whx54h4JiHwR+V517WvAmoHDwCumaEfWnjpKwNoX/8wACNjBgup8cQ4byDiGhh+fFVHwwobHOo8GYPSR+LhSI/DgQbEVuI0mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764724374; c=relaxed/simple;
	bh=sJ7Nq6kgmaXLgmq/YK/5msgFWCbkPZxCeEqXAyS9cFM=;
	h=To:Subject:From:Message-Id:Date; b=vCL9a1uSLlCMFN4uLPSwTrBKLbhVU9NgVqucdrGoF+hknskAioDdxtHpfNoEYV5e2pZd3JMvfU1z3G6gu5jwtlPg6JbcJN5YGTCp7G5JOhwaQEuLI65wwgrGUvj/ePay+3IDgamk+3C5k3TTsOSQEC9aQK8/6SZvtxJaXX/VZnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuEUJUK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuEUJUK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34AEC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764724373;
	bh=sJ7Nq6kgmaXLgmq/YK/5msgFWCbkPZxCeEqXAyS9cFM=;
	h=To:Subject:From:Date:From;
	b=DuEUJUK0egKR90XqDbv5YrWOCQHi9rqnVfoQEyCCzFfozN9lbHDunG7hHh2E4T3Hd
	 fjUS63MIuKE7ix8uzjk55hHOIo7PlY1Iv6MGnJHs5MI+7zj2VSsFyWzCm8YkkC2df6
	 HBRtNdhEpL0CQfYHzYroYXnk3+gElIXb2qt6NHtwv2JBayg2NRGszOOlll5iCPdfmz
	 TXxeeMIXWi4jqGhRGgVSfEMAkqSiEvyz0FrvVI/PSNlsq97BYCaRUQeUp6kMycZEYG
	 mQY5fgKNPI3UoPxGR4sebSasSgRD2jeEbBFTdp3fsSssq4S/SodJ8t8S8EK7mXcSC/
	 l3t+EzCeMLcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D4D1268B
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472437359.28760.2593218226939757961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73aec9b5606394e0d21a58830ebf5c86bd8eec30862f3653427a831cdfbe291
Date: Wed, 03 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764724373
