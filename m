Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712A126ED4F
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789824634; cv=none; b=DDlxputa4rrkOPSr2o0F1nU+2t2sQKumGgb7Lu8hfcOAnuSo7EV/QTwHvQ0YxTXxHeYPlW0LsaD3TODqzAptseyu5cxiNSHRWl0S7h52ERTDC9SAmP6RNweNAI+7tnS82TK6u76TJV2/eydSIrCUJ1t5z4K5zzxldPom9N9mk5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789824634; c=relaxed/simple;
	bh=HYCtLMPHQV6VY9DST8W0mtjxko8SUMf4jQ1yc437p80=;
	h=To:Subject:From:Message-Id:Date; b=HYUfn8T151z71lk8LarBnkAOZTKu9YuH6fJlQgyyTXi71cEk0XSW5zUhsTCIEhquyMRPFW9rlWcFX9D6mtuHxkWrRSL/mUTGv5IdyTLluwd4eXr7Ki5UvitR929rueUWYX4DE/kq9PkmIdhWzAuuBi1EiPpOqn1Gn0q6TJmFUEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEFrHbbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEFrHbbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6413C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789824633;
	bh=HYCtLMPHQV6VY9DST8W0mtjxko8SUMf4jQ1yc437p80=;
	h=To:Subject:From:Date:From;
	b=UEFrHbbZvMw1IRLD1oky1daNS/8SR6ukSiBCM/jfwhTjTV4QoMWCNvz7ostRUetTz
	 v9aGlv2gItCsMb7Eze+O33VtpU8QzDTUzpw2C4NDiA8zZ5sMfoUV7pIUvky9Q5xbIh
	 kBi6BS8oAaSdlFw19ng8Rq1NG2uqGCTZ6F3Nn2yhnGssLb/xvjpykhdmRLQr8OIvBr
	 yWTNPKA505vIkv1WdVpQdXC5ropT42D5hZ9QaeAcjZj3Md1gVvWPyoLXCzG3hMAhuK
	 3mpjhefWCAX9xC3Aw5y6DbR32gBEykxlPlnGw0xptz+f+L8tMd7titrUBqgysRdVI/
	 613gK9mLji1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF974C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982463368.15354.18339883096070829763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2319e8eb1f99430eb15c4c168ddb7eeb1bd5e44541b8cfb7c87b841e86ad42e6
Date: Sat, 19 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789824633
