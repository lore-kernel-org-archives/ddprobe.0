Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7816BFCE
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764541374; cv=none; b=OVRaBoNVl8ouCgZMzadKzWfu+jMU9wAbGgbTkCqJAOjr0N60eFsV3CJlJ5OWvAKusisDcFFPQs4b+gi9+B1F8dh3G3rQgrrh+YCi3qV8miau2O87jrpWdLxH8fBp4F7caoKOMXl7sU4nU0MbmpPoFOhudQgk0kGHGUsrYQZyn0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764541374; c=relaxed/simple;
	bh=7Qn+5rJ/StWvMwg1CeN45SLaH6JGAnFfXKhJ6YqJCJY=;
	h=To:Subject:From:Message-Id:Date; b=sgX55InNuXayagDvCppUrJe/1ZQ4MleZBbk7KFU5ihJycd8Ruk0HSeQvyVWHHotW0tEhAN+GeYmszXmIBMV03SjqwuL/0hLtK3Y46P/lZsA0QvETCeOg4ogVnJwcowHztDOiU1Lp9EDi5nzZ/psm6O2K3Vg5ItFu56wzgb7TcRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ith6PP8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ith6PP8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4321C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764541373;
	bh=7Qn+5rJ/StWvMwg1CeN45SLaH6JGAnFfXKhJ6YqJCJY=;
	h=To:Subject:From:Date:From;
	b=ith6PP8xNKfI3EP2Va+JF/68bKsI/a1+ytUV7tg+VCZKBiPYafHAkVfnXZKhmQdNG
	 fRokg31ifjqLe8DEJ6QGNh+Drln7j0wSObBGABECtKXl33QEWvcuTVF2ONwLmJ+i8u
	 6wPrQ5r4nct2e/gADH1azeyFshBFI2qSqADtoOYL0ZI1ryiA20RmWZIEA8Sl/rfVDm
	 KLZQkXnZP0g4REbsDiTIfyaLB4Ob5+/I5g87SOBXUDLIjoBHSVSWa/xGba8LUe6L5I
	 bMTPMZMhYLvFCB8XXjWZ/ElfxdvoTn2VDvZQkZH5e6ev0CPPxnk/c2/X5cMCYsWX0B
	 o46wzaPSB527w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140BD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454137358.23732.3490562048258634351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d862e1b4f8082e46932660f98e1d61494c2ec07ee725809a2aea23c3626088f
Date: Sun, 30 Nov 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764541373
