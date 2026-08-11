Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACEB42E8C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786445436; cv=none; b=ThipQeyr/ljdcstph4uggi6IsmzUxgsDHGJGGoiSyIARmr4ZMgwaDykCzegfMR9LCMHN7yleaOJm6oY9EMAgF/N6Ij8Kht2FYGdXp61zpTaJviDP1+CJc0kArlRfUxDJFok0G+6cWcdOHRFx9P9XgPnbYFiogQDICb30No50T0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786445436; c=relaxed/simple;
	bh=tcYUImThhzMvwhjm/2xxL+KQgcuTtw2YMkdhk4QU6yg=;
	h=To:Subject:From:Message-Id:Date; b=BqQeCLyMqrc2m0EC4mmXbdHBVW+5b0N56ZjU/LzTNm2GNCZH6Hu+VOb3SX6d81JJl8615EH1LirOU6qo9QHog5zgoYGyN0L7RzbU7THRU5ctyYp6oRgccSgUV09ko92Qj79/UfeyYIQ8IB/NYNxT7FqThsVJSNUmGeYTYMg2By0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atcSteU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atcSteU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FB3C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786445433;
	bh=tcYUImThhzMvwhjm/2xxL+KQgcuTtw2YMkdhk4QU6yg=;
	h=To:Subject:From:Date:From;
	b=atcSteU3Q3DERKTnpW3og+Ch/0cEdn430/A44VekllluGBzVw2rhFZZJrrhkXBAZc
	 xy/ALz/UmeFMMhVmfFS7XOUXgxGUpoaJs+V/DO+XZrjf08SpYm5469WClHDw+0T+Xr
	 kH04keZnxSf/3B7sGreUAsjgx9k9THLN+ZiXHJ3v2ecjR/syc3Jxq+vtZMP/LLL/eE
	 asHLRmiQE1bM5qc+iBpTJbHouOXUG0VKimkV0l/WiMH2AIpOx23y2qNC2cdXxa07oD
	 T0W6zKqjPpnQY0ugGBME00+IGNkMVIegSJruWT67FGK91Z35V5+ldDOyIbqnalD5C6
	 3nlI4En38U2WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE245C5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644543370.26536.17276460672253456048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0f7ae900c38723f062d93fbcb082b192b6ffa7874548b5b79fc03ad8b51eb8
Date: Tue, 11 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786445433
