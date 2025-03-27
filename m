Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E44A21
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743077994; cv=none; b=r2hCcT17MiPPz7h2T2NcUThYYkT9VW02nHzRyygVAo0M+Afdi6qMTprEY1kHy7aIFCmsBBo4v+N3FhUgA5+y0UwFs4qvBHYVJ5R1yiC1uG5vQ2RMAPM+kBrlvGaNM7kcwnLPAZGDmFLQYXPrHmco6s8rP47PrFidEDz/QHX2/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743077994; c=relaxed/simple;
	bh=yhxVotocnkeeyHGzi0nMcz1hrbQAdCEWwDM97wEQ2Yk=;
	h=To:Subject:From:Message-Id:Date; b=J2uGMAMvfVO+7Wi1M/emx2F97MpI5EJd4afCI8PHfEgb4dfeJIb898kYYjCyRqs9DUiPy0uXhCreg5cKGSeUvUcyXRIoxuCnWSyGm0gDBZOlVWX8yaYeaRLqc451+4a5NQLDJJkaKPQZjRFt2BM8RCDqZoKzEr+yOjZMZLwZLy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onkoFTWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onkoFTWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63BCC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743077993;
	bh=yhxVotocnkeeyHGzi0nMcz1hrbQAdCEWwDM97wEQ2Yk=;
	h=To:Subject:From:Date:From;
	b=onkoFTWwX0sh00joNPnivjz31e4ZYy4hMegls62Ld9VDemGaXAF9HelxT7275yb8d
	 wwrkb2FjXoYyxijflK3wMkcVqhfvoVoaW+U08BtC/wIm48ChjEvvWlowVzyNWisvIz
	 2Yfd/v9U1LMrH6C7QZMpAInCxYXQd9H0f2qPQlQB5OCSV3JjxhVsovHvH1UhrTxgaG
	 ZVZqFyIbTkOT7i+Kzj1PYs9xSmfaPZUuZrlHlVObVDlTJLZaw35itQmGzg2DMNwW6n
	 OXum3b84XVXWDahHerJ7Hj1lOg96OJyuNlOjekNCZCHjQXwSpLE0AiN1v4ZF33jl47
	 PqSBdnUk+QY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6197C36010
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174307799367.26994.17527839636440488095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af908c31dc751c47cdc69a079b799978db8d215007e0f7b41a84fde8fa79d9eb
Date: Thu, 27 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743077993
