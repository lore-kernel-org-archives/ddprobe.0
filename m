Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B3318ED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774977294; cv=none; b=VNSAAd878eX1qQTDaAHRoaBRJwrI5Dix7ypOnXUqjSzgnJAtdw+S/G/UkL0B1YiL3Esw1QhqCC84RhQ9w0B3pK+yHiuLmU5/qVD36vRDqx3nrhJ5ht1bWMDuoRORuPgh/9K/phztUrlYgNC5w40JbgDFnW5qtcYQIS6EVqpdrq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774977294; c=relaxed/simple;
	bh=47VtEW4+rp402CyfFlA85b/Q/5erq6BfvomF6enyqFc=;
	h=To:Subject:From:Message-Id:Date; b=iYiBmfOKVq0lJVpYp4nJxakGU+nn5q3ssIVJUQM6FzKs2JPrFwI2qEzcz5ytsC0Q7p/2mvuwmnG3piAx8ItTntnrGHkxnKrTD+WYoulgzKj/WI602uXu9fffBVeMLavB06VlEbWVBKrwASZUJUMD1djNZrPplbskS3zMqF0QjTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhEYS0Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhEYS0Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F7EC2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774977293;
	bh=47VtEW4+rp402CyfFlA85b/Q/5erq6BfvomF6enyqFc=;
	h=To:Subject:From:Date:From;
	b=DhEYS0OyX8SC8hD/xd/GfOgQA7PjDSJ7Pg5QW/hwxiUD+P/h3VDWlDzMQMRU+tTE0
	 jHEimZ5OgxPHJCNH/mAc+abyFqEBjU4VDC72v8FBq+/SxNtzS29l/Nag4aoOVd4CBb
	 GJNqlcVNWTvYKrhbQkty6ywpBRd+MvJNY5B5FkIY+wVKOk2WGAeIDx0DqlWqD+6uzT
	 RuJlpJ1rWyLijmCfR/SZcBjqoy4CmN3jeC5z1/FrsYhVVnxEy+bxjQD4/Luv/wPde8
	 f/DoHuOPdE64mDLYxpTO/mjuSzHj3tkCplts1VruAn/K+othah5bSTns7IGEda6K9z
	 uwPLEu4hTWikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9741510F92E0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497729360.23011.1922708348820764098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a34528d262fa02df2b62aadd71184935d0723db769197a420a699de57df642d
Date: Tue, 31 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774977293
