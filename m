Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2FD36657B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780353874; cv=none; b=LS/M88IJQWyt6uG0tYsaeIXIbe4y0GecGfWtb5glwdFl0E/psmiyxzjYfcKDM1vgvajKNBouDC2UJnfjwCLQQcQdS0pqMGqzHHnJMiYiYGELFwEqAwMqEDqReeIzkPelJAcC1IdTC+iZrCi3dyIzOx2ToYRPNqieM3fC7AmRmWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780353874; c=relaxed/simple;
	bh=JrXOgWPUYklIuc0pb74RLpM1EeM96Vp8lGNfF/ZAisQ=;
	h=To:Subject:From:Message-Id:Date; b=lzwO902SnpwaNKqFHlU+iuXBCtKJRRjC/yV+dMuwW5Vb4q6DdigzX6UI5z5XCKCwny3LguaKGVfJMJbne9kFptkZZYRuotH0YzOExwFFYEzav+m7hMQzLdnZo34jNBvxryerrrqTEpog+FalqbDaLMsi07qEHtKwvxFF40+/SP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTtEmsYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTtEmsYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D180AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780353873;
	bh=JrXOgWPUYklIuc0pb74RLpM1EeM96Vp8lGNfF/ZAisQ=;
	h=To:Subject:From:Date:From;
	b=KTtEmsYboOJtMMl0q4FT/UhA376zSe7TE73FxvRslgVsKWfHWy0UcFr8Tv/8K5EUm
	 FzrATFGhNABVf7bWpsjzzXa7NbcQ5f+wmZZfokpmqck3wj28TyvhIa6/S5Et/8wyXp
	 mjcd6nHZXdCbguAtWaqfY2/Zq/hINL6aTm2hJR60TkfxBK8yGFuzFEvXDBB5UnBeOf
	 XkBuszdrZHIVKQfbTkgtznOU3fsbHvKlklx72cgyVrlYz56O7oChtf20fbiTx1Kzp+
	 dMcJU9VEBzTUbWUefkCxTynrFLgWuiZ65gPE8NOfM26/lu5LvfImD8XQyCBj+945Wr
	 PtZhqx0RvJY/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF62CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 22:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035387368.21506.7112209702093635857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7005792f5eb17ec93878c3fca927465e9c473bee4325f016eefb362d331dbd5
Date: Mon, 01 Jun 2026 22:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780353873
