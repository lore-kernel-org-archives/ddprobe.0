Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AAA43AA8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746449394; cv=none; b=KhRaBKukw8V85R0P4IYVkpmDNKKsAKJmfSoyeXXHlfCAtORCbBK7obAwlOsgdRRTAcw6WtavUch/Jr4/uE2GKY1uBlLsM2S+74Herb7DxymRrSzvdsd1bEP9j3YDDlyaPZL/a3WivwuV4YYUfk4Jr9Gze58+O5h469i+Y+FnUys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746449394; c=relaxed/simple;
	bh=1gan8hJRc+RePs0Fu5KXb1P6r2PEoA3e8Ep++6Br7Yo=;
	h=To:Subject:From:Message-Id:Date; b=hG57l8VI42cq2P5oDZRkLJB2bsw7pQe6chzU0TPdD5RKLn9NRFVm0iv35Mbj3n30QK309F9ANDWajqV+99BG2lg6cMkBOGuVOqjm21o1U0zasqmA6PNzYn0sSa9HfD5ixdmzGn2+nSm5voZaHYJRWAbPMNyqzqZppg+20dO8fts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pETaETK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pETaETK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE40C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746449393;
	bh=1gan8hJRc+RePs0Fu5KXb1P6r2PEoA3e8Ep++6Br7Yo=;
	h=To:Subject:From:Date:From;
	b=pETaETK/fxGNCYXiQf6sjVAj1CQvl9mPtZJcvFP0/+ezYHOC3ivYLsZP3qrPLdCUi
	 8ePNEWLRk06W0QRXchH6/NnjvINcxG2fnpKFakxP7zIrxQr1rqezDcb3lIV8JpRV3G
	 pkwbWwV8ewo4RLoiTQ1JwYlfM+ioGF8ka0JdStuWTZDhK9F38ZHjKVnv/1T8oZ5ihW
	 YQzYSClkdhRESX0GyMKm3hFKL59Hx/VjFIwhbTtSmg9uGhpCSoGU3wg1o5G1FP1GQ0
	 wiP65SckknaY/zviBmAccNdC3enOtJ2W/Pho178lt+dOB3eAmPaAwCGZU102iPtmpf
	 WvXVWfoYCk4qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF4BC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644939357.17641.14023621854331769410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db720635405a712b8b3ec00e6d755e43ab951abdc6732f0b63389ceea8c42f9
Date: Mon, 05 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746449393
