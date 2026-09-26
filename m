Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9993955D2
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790457634; cv=none; b=Mjuc38dv5auhoLslkPWGzeuUL5ie+ndKYsQMRC97qnuDsT1MOkkZ26BYUp3v2iq2ci3L4Gx2EN3bqOwH+gjMNpzbs5ITZ6Te8aL5PupDXo9eQrAMGjboM/IodqVv/KLMaRzgWFY+Y07x8XINa+5ZDD8N3jebaKSAYffezhceac4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790457634; c=relaxed/simple;
	bh=0+vact5eUFARp7olUD4FyouqwTEA2JkytcziGgQML0Q=;
	h=To:Subject:From:Message-Id:Date; b=j50s0Uh8HbXEtXoqZz4R4TWWVoDOBHMe6IzfwNAw31G1fNwGcJDxSSi8HHT6PSVji2PR7tVCYeD07S4HcRtGV1m+L7yYCiJkICMQt1yVWk9TQQ75idr6xiFjGpI+QaLo//2Xkq7kzwoQhO7KSi7+PCoXWEgBPejy2X4032lCPM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVf7IZhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVf7IZhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ADFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790457633;
	bh=0+vact5eUFARp7olUD4FyouqwTEA2JkytcziGgQML0Q=;
	h=To:Subject:From:Date:From;
	b=jVf7IZhZP7QNMZhlbAzzfZNnqFWWyc3U7pYVhWhpoHfb07yN8pZAhpGC7lB0sFzjE
	 7enJMs2WONwEsUJgs4n7DbsdogTHrIib6M54lMgarDHVOKiX+CHtDXG6zcOtSzgHbi
	 Twnru23pe1P6BNDHZ9VoQDu4rFHeZ/TTnsPTkn8jUD4oz5MggjHaJwc/M1SIa18yHf
	 5kjhutUJPx6Ua6B7m/eBxIuRhL0GTgb92KPo9cWCTgc7izG5ssRVSfulo/UYFXOi+y
	 rMSuDfN/eqTc9qRRiFTFcBZV0FNvZYRw2tdxx4UHl6ADz9C/qg2YYHLt8ZmvnkiMqF
	 rsPXSF+EytVgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3264C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045763369.16430.9594551970265271111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd90b932887d5dce73f7fc231ea30377aa73ff7459457c377ef7966bdf726375
Date: Sat, 26 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790457633
