Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2822F5491
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778255254; cv=none; b=HSMbHqmLgcZWBfA0YRGVUoiYcc0TMjttAV04fpF2ERhxGuWT+MyGzLxxMt6YFuRVagPc/w7khdv5K23YD5UfSJRuucoZ6//XpL3ZYgJ6BR9HfaOm21PuCZPUKHHr+pIFuGlh8SVCdp/UANLh6P3OmKIzcDayltbk24JIWPuvd+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778255254; c=relaxed/simple;
	bh=MJVgLL9gfcFh0+t3oZFFYO5o+E1zdYWoyfcLFnvzMro=;
	h=To:Subject:From:Message-Id:Date; b=NchUy29bf2KGXJSUewZhr5ef6O9crhCjmiId1SvattlBxmU3So7ni6wwui/qT2B+S4cKjqDbB8XsTsml8YqJ6VzG4GPQKGwz5xBe78WcRTF0qsU1ngH06114koFuPOlpkGoks/K3iUYjQGTrxuPpyyco7LuUz81MvmhV4R9rV4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0oasoEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0oasoEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AD9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778255253;
	bh=MJVgLL9gfcFh0+t3oZFFYO5o+E1zdYWoyfcLFnvzMro=;
	h=To:Subject:From:Date:From;
	b=F0oasoEkSLTeB/EzALU6lBRfHvmk0H5L5JrS48UbQ2OJl/C28sw4ZE3jUobuMB8iW
	 qFEeDk+ajCkcvC6I4Y1G+TCVvR7CC+Ylk6chHeDqKk6ZzfVL8FLFH0cXIEBDgcW32f
	 YGUPryui0euh1v710JyEJ9EjlmC9GZNHkMMXVZUAfx2XFy3ZD1zXtP3i8YS9JQg4HR
	 AA+/w+hSYEtEweymLT5RyNMe/TwaMEDgTo3ZOoUEALjr/Q5w8vI7KCe4shTGkan9Bf
	 zLLDJxXUaZHTNCtgP3CIQhg6JoYq+X7y3UZz1PHXC0bkMPn9ZsTucY3Ptu4+ZLtAOC
	 nvAHEc2u5DhVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B982CCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825525374.7815.10648247796764774026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48481ae72555bcffa97832c9b39beab64a7dbd6dec9d818b7d6fc1bee7b12efe
Date: Fri, 08 May 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778255253
