Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285CC4A29
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746365395; cv=none; b=NFJ5hzH84fNsGOJfgXztKGuaSfhCfRK6O08qlx+0jMKlvfeP557+7Eyqu4/p2Jr6SY+o+VvfdObgWRyhV9nUoFRGWj+yYyHALsr4FnLVz9va9JdfkyCIWLZJb2R2QG89j2rwQHqF2CUg8kWLZ1L1jUBIC6/tYEBbSUx7qtJ1REM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746365395; c=relaxed/simple;
	bh=qT+pjkS6LOKi0tcCblYSvI+YymYbbJSK85eqAR6MQ70=;
	h=To:Subject:From:Message-Id:Date; b=UjeJUMjk2PhDL4iNqfQQkW31E6cieG0aVDnvtFhmVf2gcMsXDzHnrSKy2q8wOekvxZ+YVwJFw2UZcjGHqVcw5KToGcw1ZgTI3u9EKBscuUn57LzWEg34VLLQiv3hhDAbzpP53ucA8qhnNqK9Vcs6jVWNFzEmEEEL33Z3c9vTg7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVDPMtPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVDPMtPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A277DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746365394;
	bh=qT+pjkS6LOKi0tcCblYSvI+YymYbbJSK85eqAR6MQ70=;
	h=To:Subject:From:Date:From;
	b=bVDPMtPHfpnDKvuOrhaeNIfb868WQArEmNKnKfxZvw53rnEMRLneGIAPzOpDItXf9
	 yKcg5PxEspR/TBVqDZ3jybv5QaEBiTQQTqGdkN1dpgYey7QKnqwp48BZE4LWa1/cnz
	 Vi5fTDXqMYFgi6KZhP4499DsUkHt/z3H8h36Mtt+0flJ8RXoyc1MrwVIC9dKp9x4t/
	 d9ckQFgTNWugz6OaGeDdw9pt9zUgbmY9utkyxZx7tnTcXt1u5vkxVeh8KYYH747Zln
	 Py0s2cqALm1u7d6g+6RoYl1RQLqPtD2ZmYbsSLwIkJAvdytvpxq1doErnEIXFUnIW6
	 s4PswsgLj+9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E632C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636539357.18695.14494596655054684989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c94af612d812867aaf22e83842780af8ad3e199cc948525f74b415b140434e
Date: Sun, 04 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746365393
