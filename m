Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1270B3D6C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706375897; cv=none; b=Lc4uQGheylCCtvR8X/+RSopqEJwPR0ikIpADMt2ynzRWsM0tl5IWOtHgj1OUY9YimC1am8e/9wFB+atzt1kvBeaWE/Wrks4sSlEJ3jJrWzGn8JnTXJTvC6Axkr8K6v8BAhQ6iNEQvad5jBKrVrrN2aFAx6e8k/horoKmxqGHkhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706375897; c=relaxed/simple;
	bh=Zbl6LGmta34Sub0Y4KwIIUrfScouHwY0DrtKmND8Gfw=;
	h=To:Subject:From:Message-Id:Date; b=d2AWU5ArEjU6MQlhKpCAgIOvHZdAQGuQ3U87FNkeJOYjY2zPJye6dMc1COeOugZa3OcuFERMDrkrVAnhSBNAxSMAjGt+aKhsbbjha3H1SA/YiqAnppmZLGQyOyKgnucN1JHRggF7wA6CDhizPL69h8lBgDuAhl4evbOalS5gVa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twIHS8PW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twIHS8PW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70ADEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706375896;
	bh=Zbl6LGmta34Sub0Y4KwIIUrfScouHwY0DrtKmND8Gfw=;
	h=To:Subject:From:Date:From;
	b=twIHS8PWm9mspd7nzoeirp2UVV9i2zqT7PpAWKlNl2mofj8Cop8N3paLBCa3vOIup
	 JMKajrqOx+2Vl2qoDhSY7NX/V7HHJqsfCvWv9gSWlsw/cr8GSwEDmsIcOiCDTM8EtP
	 PMo/lzGNuhxPr5qXCMY106c0VLb4KxK2ozNQx/ZusB3qkMoBto62HFsoJvmtHD1Duu
	 iLydCj5sQ2oQ6Fbf0t8rCN2w337Fre0VRbFfI7XlGqQQ11IwAvqacF/gF6l9iemiGQ
	 VJSXLEy2veSIXSLhQn6u+It7xwZ0D4vVKOCW6udvmL9/meVStpb0lCh78k/FP8tt+F
	 rB9UPbH8v5mHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A656C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170637589636.31753.9064586186859733172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced613c0a9e7201e3bf090f7b9a2a975f4dd3e8eef2b1c37e8f6765ae588eaca
Date: Sat, 27 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706375896
