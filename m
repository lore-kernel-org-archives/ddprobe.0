Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CAB13AA4F
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712731697; cv=none; b=pqACOsiWr/JQ4iZz9i1gArDVYUfQFDs1rPBWSO/+ZEk4A9AzcE2RNCcZmFFlvu0uA/CFK/jmdJAxdGTsW6KTj4DzEqeVsHmWvzHphw7oLnJ56SvZmhW54qrxahGq9I24RoOF5+vVPRR9YK4oqyZfgLctGITP9J2nyDY8hjKX2Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712731697; c=relaxed/simple;
	bh=zRvMa1p18NbRtK8ttE8B9Ij/XIuhSsBaudbc/RIHL6Q=;
	h=To:Subject:From:Message-Id:Date; b=ofqKy83UCtRsH1ZZ10RLqAWAp3YweW6vpEaJUEtcFtT3GLn4tsy5dS3pe1SqHmeHcpwyqQsd8D9luebzjpPEiEv/anAolWFMhQRQ9RVesgr2pCDz4+gp+gzizm76ATANN7Uh3IJAfMw2oczYTUJLW/5vGnyUnF16bmBSYT+M/F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1G0+KhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1G0+KhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864D9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712731696;
	bh=zRvMa1p18NbRtK8ttE8B9Ij/XIuhSsBaudbc/RIHL6Q=;
	h=To:Subject:From:Date:From;
	b=V1G0+KhNVwf49s0WFDP6c/4IqN9dwXSkOnotVEWX3lr5snH4mIisMa8g4mq4KKler
	 DQ/62QE6KveUQ7+OXCDGJH9krLfYna+sRIEyjTzNVrvC3OVgYwXqF3XPSv8PESdIu+
	 /iViWWxfgjHf5lp4iDEUaPVrNz8pReefrhsyux7qfPM2nn1txlieslO3qm7mcR6MI9
	 9DPB137Kcy+GbB9hagLuZIv8sZCEWofI4ziaKFoMZM2LTyR7HxacTFM54vmW12Abe6
	 uZr8Qb5iSYvhxGKxtD/hEfY1LdZsf/khpmnA2O2j+rzxqCRYPpPJ2BbfK2VqNcZTAC
	 SRv7/dIubEz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76EB5CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273169645.12798.9363482156058598498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8405e0dc39a91118c61c7e0b6e79ed12bf1f13d08b5552cd969e6ee05cb8eb4
Date: Wed, 10 Apr 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712731696
