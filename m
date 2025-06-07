Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE0582866
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749318594; cv=none; b=OiWq9aqq08O5crWlgaU1aNGFwpCzEmBkvnE4IYx0yGCQ6a37j/ve2+6lZsbLT4YUcMuhly3MvWOKJyEmVcNjzPFlv6SmuzIrvWkjSrFgyfReIY68KGewtlbmZ6vXgG/IMrcwx84eLdGZ+c5qAVJXOu5RnT2oSnOdMTwo8tvNHvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749318594; c=relaxed/simple;
	bh=EHgg1IMoCMGL32OQxk8GZLL6obsfHSDenTsnyLL9f7Y=;
	h=To:Subject:From:Message-Id:Date; b=lfazpyypeAiBksvamiUiTrYTptvGivjPcLCExhOBA5kHUtOAs3W+Yf074HjXVfna6HLFrVeMLtRJKwfw3K+SSfUEtOaqtzanweMnCHTQ37004RNUnadM97d0cbmTUhQOScYNjcAqNtQGZefqP3tp0RQu8dXfoks5KyUqktaB65c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+7XYu6Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+7XYu6Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A488EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749318593;
	bh=EHgg1IMoCMGL32OQxk8GZLL6obsfHSDenTsnyLL9f7Y=;
	h=To:Subject:From:Date:From;
	b=G+7XYu6Q+vzHRTnPZ8qCYrLRDLzmvKDIjN+4b3uvVgGXK6d7NrVBbvwsGrZKzK7PZ
	 9TxCdZdLHx7yspXUzvdvMI8qrsmyin6VpQYtmN0i9at69hQwGO2q09T4OapnqdzTeW
	 cbgcPLWxasahdlu/CoGfHgL6+taDqWu9pkski33eOa2DHy60cY9UFsYG41Dzi/ypzT
	 7L6FsShZD7WF+gNDePf330hHwS9KwgG3Ci+M3GinZw3nnv3kuYNvhyBCldtGzWBxoX
	 bgjvXPvWStBydgGZQaTnZa0Svbp7Yg8aerZHEDnn/yYD0ijp6vxmQPosiVcd2B3MAs
	 kUWX+EeMWdLeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB8C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931859357.8882.8100017942293399537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11843c4227faeff9e92e6b9e2f7fe75175dbd2848523851ce214bf91f26bb7f
Date: Sat, 07 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749318593
