Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D6F1A0AFF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719267203; cv=none; b=BF/ysRJ4J8BwbzXeziRUJdIaPLlkvohtJuCMF9C7By7VHkKiQv1abnn8VQUAUbgQsF0ga0d7fiI4DVqdbGVaOZhD0TWSzBKf7cVqsY6CeQfu01Xw0Tc7TjCXdQfIfJQ+34phoc6fpTjIMWupSSD+V2cVwoYRHQymU3eu9I6Wbwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719267203; c=relaxed/simple;
	bh=2hKDFr77t3g2dgW6Q3fzanP6oM69UcSY13N1dqCg9w4=;
	h=To:Subject:From:Message-Id:Date; b=MPFF5plR2HHE9GIlAQEBTYH9sb6gDQiac3dnZAouQFfrfROu6GNnmfkHM4G+DfpREBezzn7J9xYd+VSYEYnnlT7ZkbG1zFsjXHYEydtC4u9KxBVbkRtPO/X3vQnDslIGTsZA8n4Zyj+D1uDRM5sSTpBE3MfTnQu9JBAgIg/dzo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyiSipAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyiSipAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7671C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719267202;
	bh=2hKDFr77t3g2dgW6Q3fzanP6oM69UcSY13N1dqCg9w4=;
	h=To:Subject:From:Date:From;
	b=JyiSipAdIA/Jh0TJLrZkzmfu01B712+H0D5vsy5lSy3GB+4VATCsx453sQFR0EXS2
	 IWzeo53V77ImrxbqBkQ6mxSRdvHU1K2feKC/hb+Wcl7yyvjRjRS/ydpEClwRJ+9iCe
	 ZiZfYZYiywj0hYV9yr736ibrJGSnCz3+2E9TsjhwjC/KAv7vbSbembWP+VldyVGndW
	 tyFJSI/SMabmhfp3eRQjyjA2+cJvaz9rR13enlLkwa6uZazqSCO5Tb8SpvWBJzL6vv
	 Qgfa6iBQ2lwsDH9AYPj1hhgTU2gaZ0+GUDJ4XqBpBQiR/rn8rTGPs3S4hlegcSUCgw
	 sAaJGi88KkyYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD762C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 22:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171926720276.25962.16435278801874549966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782d8b856fef3e2148bb85cf533f71e12ee73c4fe6153b121223d48a49078c4a
Date: Mon, 24 Jun 2024 22:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719267202
