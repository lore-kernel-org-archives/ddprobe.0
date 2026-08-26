Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589012BDC0F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787713834; cv=none; b=JjwhsLF/+swxFGiAPo+e3NXyLvVyfvTVfo1UbnUwd0wWRpZxOb4YbJkMh0/CDQoe1yxwrt+2Bdv6hUAfgpuAHAw6myaD7okbmI39lXl798fJqizj+YK5NwTAcGMOO04cYTFN1TsIP+PY/lO5dMteZzhXneIpxYa4+ereZ0qD0hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787713834; c=relaxed/simple;
	bh=SqzPyDAr0MHMVUi07cBUjhesU+tSexU4C27ppX7ZTlk=;
	h=To:Subject:From:Message-Id:Date; b=MHfKWaD/DGWVNqdY3h+vo1MKI0uFY42VPJjPCNcOW1tc587dchGXJ+HT49a36h94UZ2ZD3l6A3v4vH19kYveZQufL5D6gbHj90tobdAPWVZ987dtR4vsQ2o2C2RYGbRvIXjUCFs5TGidRO5BOp/gqo/hfVV0VzB0WUI2Wsbn7cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnJaeyTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnJaeyTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CC0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787713833;
	bh=SqzPyDAr0MHMVUi07cBUjhesU+tSexU4C27ppX7ZTlk=;
	h=To:Subject:From:Date:From;
	b=qnJaeyTqr8DQmdHyZDfYtoy6TwB5xTD02Kjh9kd00NyM1TmBrAbNyVZ5pOax0Vxcf
	 pvN529QaUM0WYNLEgF24tAr6XgJp0y/GK8cSDpKdCbwARUgYnZFgdikS4no1/TWFPH
	 8+Hf7LJOq5fBgFCsYMfklMCRYFfGlFbUHFcb8vMIfqGgQ3eVVsOh+dM6LeulcSeSly
	 UBQ5R3U6r7/kLHLYCxYwOMQX0ATj9ApZ71MsUwmWaQrfpp+xkeSdO5yxJ4CRvkqFVK
	 JOT1CYWlm6fLWSUP0nVvcQzuRgN25Hoe4sQ7831x/uXb9Zm6ycwIfxck2wnjTczeUb
	 I3Fpfns+06b/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1219C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771383368.31114.15207944771950304629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab065f8f68148dc07616eeffdc44dcc59020a8da759dcd1c6dbfe0454d75be14
Date: Wed, 26 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787713833
