Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAE33EE1C4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778171854; cv=none; b=DJPy4J4U+Xx7GAS/LMqfkTcVa9ZjRKmkBKBhQKKwEfNU1owNhMu03B76fmOimwITk9cYjsfenyWXykYgy31Dty8YWNPov0QFUZdBzZx/R5oumhYFiDn8eziC9RKN6jOmDffbJjlSvEeDXSWeN5y+wavfdpKDvd705JAizFofnsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778171854; c=relaxed/simple;
	bh=EdPUCt/tAuXJ/tZZub1+AXIA7xfSKspnT39cOwvpeNo=;
	h=To:Subject:From:Message-Id:Date; b=J3GqnKyG1qf0ul+kGAuIo8/sV4cNYlDiQbkIPLvNjVu3Ey2p24g8N6OT9NLdhiCGz+i7Kv7wKrGbc2lTx2Q4nKMBkgZqkReo19IlGfm7eKAHodewrbx5djMNff5oShytO4bmPse+t1NyBVTIJ5AXDJrNoF9npvoWqI1pwByfo24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXT/Iucr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXT/Iucr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5938C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778171853;
	bh=EdPUCt/tAuXJ/tZZub1+AXIA7xfSKspnT39cOwvpeNo=;
	h=To:Subject:From:Date:From;
	b=BXT/Iucrb4t7gC6BF9LX08vfJD7IEHsizY5YfPF221E65SqmBdpB+rO5IdjeYdDvO
	 INWl9hvNnnocitmLL4buZ/B2HfAgD4NyiSPvvyf6hqFseEXTCQPLW3nOSb/D7U9lns
	 lGZ8OhPVclbN9HrDztctyfMp9o0IIOWaQ4DQq5hiE6RRmejvFGMiZS5iGu7Ozfd7jH
	 K25kZI+e9AfdPbFJxQONcn4Ep4YZuRe+NEGcANRpfTEurIBfpeCpKfYri10aKJFtGX
	 pFfMbkC4mUVbNkEbXp0GWiwUfbkxfeqsA90lqd4HnTZqhv5oCdbJB29z1UnFGXSsB5
	 kWTqctuNwG5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4549CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177817185370.32301.12778940521423942039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c71a430240b524d5e17ae8c17e34c18fefe8349a49fd5b3a3306a0711f79243
Date: Thu, 07 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778171853
