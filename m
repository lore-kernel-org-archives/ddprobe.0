Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF93200AF
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719685463; cv=none; b=Z7q11eRZgXuBz8ZvlsHVS9iUamVxsyQXH3840Nq7vwGT7/Ny0n7T8wH3GgORKDSTJHE+fp7PyWjQ5r75PVLCvpSs8uprx4cV1m1mOcnW6fatfZltxAw+JKI3UJ0/1BvkqLwr0bv5EO+xvKqb2ngaecGsMhxkMDqMltfNOfurL+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719685463; c=relaxed/simple;
	bh=3vRG1mLrLJx0rOuKi7vEWfZPq6enkae+4+OLyBIRqLc=;
	h=To:Subject:From:Message-Id:Date; b=d8P6zgHL/eUoJC1KJRMWCTgxazQPVP91oFtcJC9CV8oH/U+vqWVKeXClFmSvvymHIu9vvSRRY4Oyqu0Cr77iWOiAaQW/kkkJO25b9wobaibai20qalxwYi0E+sjYo5jHn+bVx9NvV3la/pmKRjk8PQk9y1adyg7wDliX0Q6X/EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THaCq6G5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THaCq6G5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3EB5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719685462;
	bh=3vRG1mLrLJx0rOuKi7vEWfZPq6enkae+4+OLyBIRqLc=;
	h=To:Subject:From:Date:From;
	b=THaCq6G5nnv9HJFpACUi0uaji8WrCTMZyyrRVSGuxuZBEHm+6pHekUxNW9oL215VN
	 GNaF2vJhzU8c0bGtg5XTmMBv9Y8hNjosjZLo7a2ZDOuqDYFMKhpsRlf/f8xcOal9RJ
	 6OQ3W1oy+f7CsJllTloRzQmwVwaCBFxo2g7fdoiUu7YuWWEUzv9LzEmUlMmoHg6xKJ
	 OzUwChJPeqQIGfmBN11X+8AEoTu75DFeeZMuyzhUHH9FluX4lB/4R4d4u8HpsLwfOI
	 fP9remLMONYrvXTvdfuKTr3Kyw5SouBa4dKshwvMsANRZnTi5NFz9qyvlbfAzzHkm6
	 GZ721DnMrr5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1BB0C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968546279.20520.8848312901043377452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95515ae0526fba9ac9501de65ecd753e80118c2eb4cc9a862d0129dc96b095fd
Date: Sat, 29 Jun 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719685462
