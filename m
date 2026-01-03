Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB85208994
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767464034; cv=none; b=RQcXaYzCW3//ZYmKGdFrEIhPtFq8O0AHyqcKXLAQg0FgYtOCm/M7YqgWPRGZQUC8tUS9oRslbiURP44+7g0ufrvdUKPAHQpUzVpojl3ivY6z14wp1yyciEbheB65WlVLOFh+uZhG4WA7eqVlULVtivGbIVCMhAwSFsuWUKEwcu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767464034; c=relaxed/simple;
	bh=mWzoYyDOv+dXevqE3wLNNsuhEtcsa4knjWgDQAw1CDw=;
	h=To:Subject:From:Message-Id:Date; b=KGhov97U3aQ+SAix58/yu394CMGuPA681PsYPYLe/RnauPhjDuT+f+Ba+Sw1xCLVMHeeFIWDCiwKFvXf2xH2849T2KuvdW9YGRXNlU8HnkP6fpud5QU58E0SMgoHwphLqxYsOq14x9jyEe20993nNESADaIYUztG+wF47cdb4Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcg9Qb8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcg9Qb8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569CC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767464033;
	bh=mWzoYyDOv+dXevqE3wLNNsuhEtcsa4knjWgDQAw1CDw=;
	h=To:Subject:From:Date:From;
	b=fcg9Qb8FXncmFJZsZaW33BBQkyYqJ52av+2XZrJr+qZ6OkRNX4fD/f7UzctQzRikx
	 K9ghc5VF+ft2RhA3ZRGGE7w2esN/H65KCaJP8PRFOZp+HZkfoM2BMN17coEgQt/pnK
	 4hg6VXS5I+KKDBt951yENLTWPooq3/lJeWqHJnJas/LJO0BsASe9EVbwdQDviL1LOP
	 5fYma8eQbOxZnoSYRQhV+bsHt7cGWtPXN5xObJByUXEdr3A9xE7wBofg+LpRCLkJKE
	 4OEm3wquZYiajOKnrqWg2sLo9INabKyTBQrbEldCWBpG5+g8v78TZDiazdq8f4JbJK
	 6Rk8rxiG5VMDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94732FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746403357.16296.1544046445673152178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf9f40b0bedf22cca7e62d1ac4a6a358f48a5e89b713cf59f2893baa71a842d
Date: Sat, 03 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767464033
