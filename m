Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17CD0192B84
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734132954; cv=none; b=N72J1vMctIul5SsajDexY/G+E8xcwUaMUHFBg21R2O51532cYoEfuzKavih4pDO58Ec8EaJYQ4pU0fHEg5Scj5Ywu5s4kMQ+q7tZYTvwzoQeIPU/LHPz9DgxxZQNQG8XMgy5PVNgSQdEc0/3nZVvuhYviAMg1Lcnx2XyTIiUS58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734132954; c=relaxed/simple;
	bh=6R5NLmVHuNvJwKXlld5y3TwK+Oj+Pgqg81odEorNFO8=;
	h=To:Subject:From:Message-Id:Date; b=AySGu7wCRLlVKTAYHI6Hc+NGNiN2QyOxMx8wZqgXR1kIu0dvCHrD/bX2woHgW41CjWuM+OW1xjYq+iHTEmrtDkBF3lem+NuY+4J8ZzgHt/8oat51iXYJNsOeL7bqxsdE+TWZKXpxrRnv1YChu8uikP7C06/n5W5LS+PLVHLMaXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARzB354e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARzB354e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D0FC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734132953;
	bh=6R5NLmVHuNvJwKXlld5y3TwK+Oj+Pgqg81odEorNFO8=;
	h=To:Subject:From:Date:From;
	b=ARzB354eGHlgLfBX0HuAHvToDlSj6Oz1+NLdBEZsl2gPlA0gHV+9S71svqYZ0G5SP
	 F+tg+u6TQ6T9dxb6MMK9T1ahQdnAjTDyAz0X9yUSoYUEbFpIrRiin/MtxOdJeW0vhe
	 6P+xa+U1rNU/jDNH9VpFz5fzAuhd3uXwrijMs1Z8cmy4jEKaPCY+IlcqGqlV4eQU2F
	 dkan5M4oMXlCvVrn4LGe0TBWnc/l3Esm86Gp11rVTgzigM4Ev5YPu1Aa7x8+4Ndivk
	 EO6DAvmQ9n5dfvJh2fkfuEj8cTN+rLwgbkWCKt7mNm6HiKeDvr2sg9rQ0c3WK1uizd
	 nSofOb8HMuUBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95799E77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413295359.29399.17475239761365651742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f7de965cfa27bb27be4f869ede206ef3cb465f7a733d07a03cecde39e37354
Date: Fri, 13 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734132953
