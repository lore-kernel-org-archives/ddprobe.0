Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F97C2EA
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779064234; cv=none; b=PR7oJ8wfrnHdzHdbpGjUzHBaThtsUoCkQwOI7EaLV6kd6iC7InjY6TLLV5CkGl4gMqRBgikk+um5WfyrWwwmvP0h+qmJmLp5rF2mRo4SY2RmsOCe27AeTVc2QcmqE4FztfqVN8EWdGKLjHPl0EBQzxklEzPz0w1tm5/QWPj/HQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779064234; c=relaxed/simple;
	bh=Mha+N93s5JhCx1s+w3pVG4jIEkM61jWwiKr+nUuugSQ=;
	h=To:Subject:From:Message-Id:Date; b=iMrvlr3zs0bNZjQGDsQQhA5Pw78zBArL/503s5+EIosD/HiFRidRbpPB9TsNrpD51IvSqHHM4/1KFQmThvnqXZznrLVezEgq/u9TqsopXaryNya66Tm1wllOFfSay3+n3pBiS/4WthUBWyFT2NoDHZZQCVOgtXD95NWEnGoCim0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyB0GAYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyB0GAYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBABC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779064233;
	bh=Mha+N93s5JhCx1s+w3pVG4jIEkM61jWwiKr+nUuugSQ=;
	h=To:Subject:From:Date:From;
	b=eyB0GAYpmYp+FAmsN9sZgYmCBes10N0mun9PdPTGgMHwXijUgtVPU3OTJgYdwcqbf
	 muGqsfHtywz8Hs/M5UpD8fFIC2MxVyLU9fk298xYSsFIfVFbPwifET/2ZiiQMh/FbH
	 BJND+aBp6xp/34Y3NfXp7oA8ni8iXPGlcCD3csc+EszbJHgVaqyS6Yd46myShFU8CU
	 FFoNLwTjjqTyuWul5kMrWpERA6XqMAy+rlzz5xFUD1L3+CDVjIwyKgyZfCaquNi8Ti
	 CjSL6NlfC7Qxnx6gqbQVst6aUnK1A8T2aXPMk57aeoYNL2L/wKVDtmgjPyZfnMxDqK
	 jcqjalTh0uuMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADACDCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177906423370.2719.14489056888422332588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab0ac15fcde4c7e97556e6af3918eb48a62578e8262fdb12890bc1597ea9bb2
Date: Mon, 18 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779064233
