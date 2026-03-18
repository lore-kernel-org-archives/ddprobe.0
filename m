Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065A53D9DAD
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773842094; cv=none; b=rXFCB06XofQIEWvNNF6zuct5H4NRFl2N8zTxFIsql7p37QxftIYD81WZGKuyv9oVZNwzARWnybR0dXP46ct+pLiEaHHyyGxp2a2jBITR99XOdgidjXXbtkbo17qFMsgnT76N8eDIU0Yx/OZV9EsOEErOSsAM9wzrU16lEYEuoDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773842094; c=relaxed/simple;
	bh=WTbUtAGv6CwT9okLhsQog29X8dNjxd4KFPrGw+6hvDU=;
	h=To:Subject:From:Message-Id:Date; b=SS2u7GO6uUMdpviDJPlMy+lKj6+78pFc90ROhX7M6z/KHou2URjmFB6N4ibDpvxcGc3f86ia+ZeYNe8+XltBtk40d4r4YD/BY56He8wrjCIZLQqmZXN9p4GSIK5oMXqlGfYpszQu2eYF1ohRwEC1GLQi3n8p7v7mICKhQE1ox3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6jb3rNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6jb3rNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF858C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773842093;
	bh=WTbUtAGv6CwT9okLhsQog29X8dNjxd4KFPrGw+6hvDU=;
	h=To:Subject:From:Date:From;
	b=i6jb3rNJ3H+1w/PJOWiM8r4IcEZsYb9AqT1MHacyahLObMGxQkkyzWZ8RZZ4WjUbN
	 ZUuwfYc3zi+tDI0p4CauKl3kekFVrbZ63BghmMY6UUx9C+dKBkISZixCNOdiMMYMYF
	 z6Z6tJEx8nV7CDdpynEBDsN3nB5gyXwYsWWqL4PVJrGN4LyGydN5J755hDTlTM6/kO
	 QnxiYuRF8TX3x9GrknKRNeBJiY16aIvY7b4ehTudB7qgwV7fmAzmHYiA3pisRcigG1
	 FUQ3z1y1x1ftycQa/02vtztUA6bCatnEJyHCPC/8h8A229gJrurCou+CA+9Juw7V21
	 hkoiAZcb4iz+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9378B103E181
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384209358.478.9035002493285571383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3241d1a8c59328675c3b4c5a219b1e77e936e6549538d32a4424bbb62f34b2cd
Date: Wed, 18 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773842093
