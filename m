Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570E4348C7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789859434; cv=none; b=ki6F9NaMjY09NAuHlKtSJBWr4eVwH147B+NW9IyC8amUA3aqXa+LAotMEUq8jXZJ+AvKHndJTSbMgbraaiJpBL+sYImg5eJUZ1U7fKZbn4cIBwZpcB0PqSSDpE0dz7kdNqtT5FzjNBXRF0HoyW2taYfLDe74cZxKXKF+U60Rpvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789859434; c=relaxed/simple;
	bh=zoqoeHZA4+t81CUdk483WllMTZcEPqJax2cEFmNPgIw=;
	h=To:Subject:From:Message-Id:Date; b=NCQb+kMn0d4rjXs0TEmD8Ds32LGVJiNxuwsBLsL7hpjfAATe5pZP1N1gJGLrhJMKxThqgFbQFs/Z0qSzejtzf29x8iMnHiUpisQkKUN2cYpi50rBoZWVk5S1/SS+9AoJNP6cfpvqs7nwSr7YyPM+xSqs0RWagTV/X+gtJUjb028=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3OEdWk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3OEdWk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A11C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789859433;
	bh=zoqoeHZA4+t81CUdk483WllMTZcEPqJax2cEFmNPgIw=;
	h=To:Subject:From:Date:From;
	b=t3OEdWk9doL8rZLlIHw7Lk/R8GwGt2fmD8hcaGLS/s2WJxCy8YFwiRyEwu4fDI1LS
	 Dm41xE+4QvjiwwsWfViSdDusnGk8QzEkH8etAZ9pxFn9JvCLl0ywmtE1YsXXdycd3C
	 RQlWCKVGeTUyh+caODsVdtLbwEXmEbLklgCLM3jaPyPn3qMs4gN5RryaG3oZst0vCM
	 wGIyfPezHDCYVd8aa/r3wiMMcClJ1UiEaM0e6GPDFW+N8GOfoDXqMGIyPNlhihx2ev
	 LlCU/ffbpreRrOBT3gUGu3j1BWIaDFTZxldtkhWry8JreMn/F+8KZQQRAjpDGCjzzc
	 vrWCebarb2opg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAAAC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985943368.30637.5078268005763837276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dd9ae01cb9c5fe72c060ccfe9f9d0fb53c5ca8c8372851083cb43a682850dd
Date: Sat, 19 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789859433
