Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FD353381
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710370697; cv=none; b=eSuBTVNcqNcMAkhVvA3TEeWksifiDBkrZkxUTEpnU0TenpfF9tPz2en4+tIPFE0UuZrNAjFhbMzB0BdUsDFpeyqmsotIOuyYgLvBXqrk4SXGNRJ6NAMWEPoveyBw04tF+IX7rdJHKRuxMAzn8pgHqsP+ZfsXPts5TYEgfbK0G3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710370697; c=relaxed/simple;
	bh=KsBnsfGkjmfaXT58QNZhNqO1qCqWDyKYqmUnlI+AN+Y=;
	h=To:Subject:From:Message-Id:Date; b=JLim9OZjRF0OEQb84fSxPKsEYHrP2HghcMkQkAnTpEdsvi8CNAvRr1U/WVi8Dub9tb03Ck1bBcLkdm/1UkUcsw4n38YYpDIf7Gs9Oe1PN6FVpTsT6952e3kUYanmKgM/tmbUAGfcmGO0qaRgJewjyaDuc2Hz2+NhSbLiuGN3aa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piTCb4Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piTCb4Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E7D6C43394
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710370696;
	bh=KsBnsfGkjmfaXT58QNZhNqO1qCqWDyKYqmUnlI+AN+Y=;
	h=To:Subject:From:Date:From;
	b=piTCb4IkNFmkfVHzJR+JPZeIHA9Qp0HWGZkCRwWytvbRprYpWNcQHoW//Od1tuMWP
	 hboyf6jhFIjvuiCpHgnJvKrHGCJSPzL35WqrZ2prfaq2J1F+w6hhF6ueg82N1VtxlO
	 iNnKS+i6t4Z2sMBvXPH65l4BvNJ4/q42bS1Nv5k+ZY+jbIYUzjKR0qx0dfupFteDPa
	 Z0eD/srcmSuLpbodhY0yJT0sbt4N8RL4WVXv8L9m6ImhTj4DUtqqJ5ppZ79klp4Dyk
	 FT8n+/DB/bUny7/2GAR4XquITYi//R7XglTpSQxB0wDKhSWXQ9sJsNtYPahujc9Xvg
	 Prh2Bgiyd15mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658F4C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171037069640.11577.9093446097036395330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5f0df7260d7e8acd9057b32da527500e25c741b7c17266ad7466fe02c0a13e
Date: Wed, 13 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710370696
