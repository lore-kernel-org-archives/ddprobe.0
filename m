Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5524812F585
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788673234; cv=none; b=LI0z+KrN4KyV9ovPjPLn7Q3cEfnHKdOWL4naWlZ+yhUo7v+NFN0uAXJCELNjHtJjYAdkXEpeqxZNrmdOgFcn2ONoZLH2t6WxzaQXL+i0A/XSWIS0DzswthhKujRrOc+yi4BXKehykcOu8ZyzU0cDuZmRfR/AkPtsoo7o1fXccpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788673234; c=relaxed/simple;
	bh=HaE4TL5d6En7ZZDmCcRpO6fJUJOBRiTotuV/ebkPveY=;
	h=To:Subject:From:Message-Id:Date; b=qp7nsRLpQQr6PtWnUs9JIx9OgpmpLn7SLLm3M4ait/7aWrsGpVzvHMl4eK/ExeaVhbb1+XRSCOiOtKMUQGooIxHYoGxQ5dgKKqPNfKpWptTvzbsx/vQvM2uvq1uBWRRV5i049btTrDgASyZe9lAucU5yZzpLTyRUOJw4T7oVeWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0GrC5La; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0GrC5La"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CE5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788673233;
	bh=HaE4TL5d6En7ZZDmCcRpO6fJUJOBRiTotuV/ebkPveY=;
	h=To:Subject:From:Date:From;
	b=a0GrC5LajoxTsUTqDtKZqKgQ4w4I08h+SZ7v0GgRLRv1yvw6lzwy9xuWK8EYZXpyP
	 9UzfbvbFxlOGQSH/W8RE1fm0ayjt7EgFS2VgJp7ebMskaWdePcya+mtHXH+4mEHf05
	 of8uJ2a3JUBjkcQu7tKYs+65NpR1nw2zW9XDgPzTx0UKNQXaRi4JoxMDix33iiQqrW
	 Ma+fEUnlj7xF4i8c0IOkNzf7utjyMyLAuHfgB+i8/WlnN17FO9izmP8rCQ5lCT/yJk
	 MkDAOgM0vZj7dZSqW+BdwuBq6i94nhhx+nm24EowJMDRW2ZTERnU9EisXHoFdsgELg
	 dAQliHZzybDow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB02C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867323369.16945.12765747725750487566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa18d3ae0aab63c6353112e1da0199c2ecf2bdbcd101e93f347d34ce6721d27
Date: Sun, 06 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788673233
