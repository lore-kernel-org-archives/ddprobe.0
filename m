Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B11713AF2
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781387794; cv=none; b=mliF/L9bXq2ctotf+TxBnK/LIgqbJslIuEplj8oxeQFig53vP9U5A+7FfmVxia0FvkYQS5xO14diArRLvCvK5r1VqBV/wfxWA2U1cAVNHz4MVyH593wPaYpO9HHWvLjVi+2+bfFPjaGgf+epRiqLnkzEO4lX8FmoAApPMZFWMk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781387794; c=relaxed/simple;
	bh=JXzvOTe0LB6mateRZqWTmvQo9+fQ2Z5ClJR1KyUCopg=;
	h=To:Subject:From:Message-Id:Date; b=O4TBNIWpRCM/l5uQ6njczAHybNEjzbCFbvhiZwUfyGKboF8Ow4Tb0WUjplFemANvQQ138oFik7alfa4uXB1ObxVm+WJyym0QmR1VYeYv6baFJoUzHL9s/x+REjFpYnxe143r3PWTltAjYjEAhZkiG0HJdBcVPDQbFHzhNcKlrvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xgfjjd0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xgfjjd0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE492C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781387793;
	bh=JXzvOTe0LB6mateRZqWTmvQo9+fQ2Z5ClJR1KyUCopg=;
	h=To:Subject:From:Date:From;
	b=Xgfjjd0VJEmvug22y8/fIndFVKANndWueEdEUHgxFqWI0fvkpsPMw4cNSyFNHCbZP
	 V7KRMYg+Wt/Mg55Ez1si0tV+ws9AFwbJbSDfsQARr7z76tynA3/qoWqSt4+dSrHlLp
	 d4RonxvdhI7xGamwk0151jGxWNweR48s1t+xx8QEOLYI/Vl6Ehd0AvUQ0rHL20ss28
	 swEOSZI+BhR67Cl5U4KcKCOne+V2tCMcoNnjNHkeGdQ0mGAdlxCyHDkLTAz64WHP1b
	 ETMyYZ9qt9WP5HvWrkSG6ZvP+EYuoaWvejvlfdv+mPF6RxEpOoRkHBJI52WjqTZD9z
	 Nk//JDDfZ50ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7BDCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138779368.4805.16735229644697388842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb329723a96da7680e606feffc4955f4b12e0eb68d19649ed3a0933a4c423f6
Date: Sat, 13 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781387793
