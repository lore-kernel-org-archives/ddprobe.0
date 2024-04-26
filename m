Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592BF13D244
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714133543; cv=none; b=pt7kFkWM6rzDv6IeElUfm7jsgk9d9mu4L6neGTeht40sCy+ZTNAOeufZAV71Ag1uzgFReKeLj+8tiGysVewdwKDcRyUOcuUyNQbNQQkH1YBFaEFZdgelWRur3A3Bj0bWWiM2chvOX+yoXrC+MwHgHYgp27v+Xt8UGnzDGwgPUo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714133543; c=relaxed/simple;
	bh=0ILuUeC7RlNG1nyvG1BwNKrm4f2Tl8BvPnOHycGv+M0=;
	h=To:Subject:From:Message-Id:Date; b=hpMf51EyPn8JKbpd5dXbSV4Oc6vJzVGnq7Hdt+Wg/nYsrMCYVbFM6HRob5JQidd9y7704FoyZeW8Na8jF3PlfW4cuyXkVL2lUohyezqBy5UQy5fNrQN8QOFgxeLTKKiA1yjEAO+3GWR1fp5rD/YL4iX5wTevwPZXeSPahtXS5hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvLG+NBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvLG+NBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC91FC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714133542;
	bh=0ILuUeC7RlNG1nyvG1BwNKrm4f2Tl8BvPnOHycGv+M0=;
	h=To:Subject:From:Date:From;
	b=mvLG+NBix9DWPl2wSfwFG79P+Aa9ql6WhRpcKJadtnQskOu3GZ0znYg7dGeXKEIVA
	 meIoUU0nuRUv0BiVLIlPT6/e3gXSbjTREpwSFdrno8AkMtUXQS0/BVaGtreXj/v4Zi
	 /gRvskXC45uSABqu93PXLAEA1uCLNB6rCLJAXkrGEe9Z/PNCvuYCG9nOuXyPdXlLnT
	 6D81fUIk40245OF8qgqfZNvcFWSD2ts8E6YeMLYEOaRjMNKS3D4ukJx3ELoYnzun2j
	 27ziuonx1SMw1yyGUwP1vo+hDG3Va+RMjdrxcz0WQY6bGahlIW1mIVmP1lyaDydwWr
	 /E+w5cP9L0N3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43B7C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413354279.28600.15474304839384984663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667b0ea28f1e07bf7a609604f413676ca9e1078e8f91fab664ad5fbdcf7cc21a
Date: Fri, 26 Apr 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714133542
