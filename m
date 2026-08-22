Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A1D224B1E
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787358034; cv=none; b=rhr1KFbLUJMx4m1dqZrMfi236pp1jqdJU8Fbsm3ryBSv2RW1zUZiaMRwEpSCzxD3uR9QhluB+6tHD+wzsDNnK0YEkMe2D9zjuv4ZbiPjvDfCSeuw0P4REMS6TAriiGI1Xo2xMQLA55txOTDQojlTGOmjTIrB4wJLBxUkJ1BYFcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787358034; c=relaxed/simple;
	bh=Wjb/GhSv4834MabLCFSpIWTk8nH8ueBcMEpoypAqi0M=;
	h=To:Subject:From:Message-Id:Date; b=WxuqTGM/rmmZWYK+bTqvdhvm5V1vS3Tt91FYFi9pQ6XNl851Aokf5kyYpNBc9l8+icR8pa4Eg9VJt0XvPwr5zOoZi58dp89hqbf4amtWDNyszhXDIiRNu4NU+ojsnUHGk2XMty75/xAy17MPIylehClVdeoR6Bhow24nXpVzUGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVQ8iG1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVQ8iG1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9261C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787358033;
	bh=Wjb/GhSv4834MabLCFSpIWTk8nH8ueBcMEpoypAqi0M=;
	h=To:Subject:From:Date:From;
	b=OVQ8iG1pxC0iMSNwG0KEtD5d3iFx4FBWB2VhLYa/YaM/BjnQ06I5glkoC0PzCB5IA
	 R2U8mbB8TGLSUjmig9JgsmxEf2gX9yO8UexAF0ri+KTQl+86oh0ICUCBbkhh6Oql+D
	 9Hq5NDe58+PCqmUrSuhXTIofrNzgprZYMWAKQ7lAVUcIr7vcBvQA+iyQ2IzPHQYh7t
	 LM7nPKNag68qg37fEWpE+75mG9jzTEr77GIJ3uj39k4rhJJiGCs6z6yqSwd0Iqe024
	 VZv8d/+EWDvd0/yFQ486LA0l8IOiEic0ZkhgO7s57eGY0I0pKnFo3hvhb3QZRjhimP
	 2DAIzoKtSKNjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD80C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735803369.2996.495386295093455201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bee1917df4ffb33331a31a1fdf6ad4a1164b4bc80e69807de41beeabcf90391
Date: Sat, 22 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787358033
