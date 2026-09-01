Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C063D75A6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788228635; cv=none; b=NzX7AUPRlIbCkmVqDvJdR6pLJemzK6ohPlI/sW8qATOpUS4rdGd8yO6c+V9J8QuziH/2IjzrdbubyMc0pRBajsYcsoKluo2lxJrZ3ueTqlCp22p3tgDN4rzpbowWW/K09+ZtrmGsJox2SMJXno3rlWdBxEUlJOOyhXhTlmmxNj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788228635; c=relaxed/simple;
	bh=7sSe0USRXur4SB3FhU8Ecs+cU5I974sw/PD2hSiDry0=;
	h=To:Subject:From:Message-Id:Date; b=lCoqFR3bVp9hCejrXD4KEkEFYV5hA+5nmHOwXcQa+4TGT0hfFxaLdw546OpgJe+g025Xmk4KfWEcYpZcz1rY8cpTckbRiAUCRumvuZea5ClKVLHxmPUp5IaCt4OnfxHgh605+bbACMzq2f0WDk1wIs+RregWrUmgkE3762Gvm/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzQIUD1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzQIUD1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBCAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788228633;
	bh=7sSe0USRXur4SB3FhU8Ecs+cU5I974sw/PD2hSiDry0=;
	h=To:Subject:From:Date:From;
	b=YzQIUD1n+HjKqUdsmEsN6yRYhWBu6nB72/yOW2AidnKaD0Dui2m3+o311ZphOsob5
	 4FE14iGWE3827cpFfg3p2PPHzOSBrdymycH212rLkhr6boyy8L12G7SbM25wVN46Rk
	 0s5F1d+yYWwpC6cV/KRi1hZQLG8ltUrGjvXVZA2vu5uVpljhcLlqecef5fgAm5pcUC
	 0XniRayy8WYURD1rPHPV//1N/Jkq8oph49To708Sy3V5GF8khgExRri0RWO8TAlaPM
	 nLhP0cWw0cz/Lwb9LuNSgEbrZCVckPE30oZnA4zbi0gjiIdb+RCsi52icXg/TYQIma
	 Lx5DSRMsDVfCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAABBC61DFD
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178822863369.2558.2916320922610691397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674a9ed01ef4947cd689b002cbf12dd6785805e4fb97e15dfef3e7880d15188c
Date: Tue, 01 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788228633
