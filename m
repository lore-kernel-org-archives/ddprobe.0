Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351EC2EBB9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761134394; cv=none; b=CjFKxIQleDbCfD121/QuN7tF10Y3kYVQyv48Ojol94Bkl07PKQa87GdTyCrCRdJsVrbp0z+Lh4Z25jFjF0uI7E82nPprsJ3i+k1M/9gAl3OzOsMmYr8NhWJ66Evc91J/E5w4hZu7kgmj4ct3Q1peB+JVJVz5U2penONSqO5kmlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761134394; c=relaxed/simple;
	bh=3aF86JgafeftnlSxvyKpFqSAz96Ixl7Lax2Bu7xlNeU=;
	h=To:Subject:From:Message-Id:Date; b=a5Tnpqy3a1eNOpdFnE+YZipYGmWp9p2gy4X95kgrsOEiIEH6rLQsmHQpJ+uoCsnieKCGdBcGz6DeIs3jaUf0JI49v2oj42JICquTwSHRkbmerUFJC7ZrVt56DXjYOdNQVXyVin2Dqhti4NJZVw7aEo0yCvUztpUkaGUUgG/G/BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwZZao0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwZZao0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F68C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761134393;
	bh=3aF86JgafeftnlSxvyKpFqSAz96Ixl7Lax2Bu7xlNeU=;
	h=To:Subject:From:Date:From;
	b=jwZZao0bufJWocKE5pg0+cdc1YZpR+gNnUedoAr/Jb0tM5fnU8x5IUUupKQfXK3PB
	 nTcMo/lp7SqUFuLni20vOIU5y1L+kXetVEEax17Jy/vbmWRwo0foeMC5ALBU0lXkPH
	 VQH5J8q/7sKNoprhTq3AGAMk27sP3Pli73iiKMTl9tToh1vW9DuzsF8im/KVUreum7
	 5fvT+sUsFnlHQv/ZPgQAVAO5ixvKtDCC1WuIdvcNAgI3/4BFTvcSpdiNr8Ei1GEx38
	 H0KFe1iyoZW99ecj5Q8p8lGSGeYvpvxK9PtHOurJWTeAaVPt/KCv6ZzxRuoiJ+izW9
	 H4p8aQB+nrPgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92650CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113439358.8425.14721589567002610608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcdb2e1d1755e5fccaa6edd3816f1025a270d9f17ef9a9a7908f478affbe5da
Date: Wed, 22 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761134393
