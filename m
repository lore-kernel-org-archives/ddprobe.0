Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2333235AC12
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779797554; cv=none; b=H8V0iXTzPYDrAsFWeAYX7C7mpgJ7X6VA94zxas+biDpM60PFdUcTbg5C9hv/fynUBrI0HRaj0I0A3m1yzei5xlnmUBVZ6pfeqgBfblN1AAIYlA+7lNYoAu2n89veZdGZr2y3UOM4elc+3Mttxpo699MxADI5Vi3JFo+m8TT290U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779797554; c=relaxed/simple;
	bh=BYGeGmdfLg3AgA3Vu2RrKnkvcZuoE5750eVookI2500=;
	h=To:Subject:From:Message-Id:Date; b=bRYHCYGHAEIis7bnqiFS8ciceuz6d2zegOZGbZ5giuETJdHUgUgAmT3gV8niF8JAcTm5E09iDkdlkmRwD42jcccS2ZPlJE4W60EYdUsJhrKttkEwFdglxYyDEo5+TNcvg5JZdwurivG8Yj8YpJlxBXF1p1fyOJc1RO4KkIX+iis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJZrOYRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJZrOYRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A9FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779797553;
	bh=BYGeGmdfLg3AgA3Vu2RrKnkvcZuoE5750eVookI2500=;
	h=To:Subject:From:Date:From;
	b=bJZrOYRCew3OCxF4YUbthCPueTzKblvOmHxfjWtfXPbJ7EpEYxUA7GKmLvGCznb8/
	 i64HRVfxYcaTldUj0S9slAWPvmvYrPHfMsrb4x3AHMkKgZLSubtLdvxJBecHS20SMO
	 A5MsxvzRYWZuvGu4qWbe+aQVl9TkB+69yz2eW2EjY54Z93jgu9XvMOe8Ndmq9VDUw4
	 NIbHj3tDistbh5DoGMLvs/ufriehEnINeYA02azVD+tqbFARAD2wBJm49JMtw1d0Cp
	 Xmov0tELj09XT0yOrcUWzuayjCGnAKcLcGr00WQKo8nYdozWDntJ5+pl9ZzbTBo0u9
	 uNBQ6s7Jrt1VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9298CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979755368.29123.15899978219643062332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3f503e65257e27c9fdf76c2be53997546e53ef38c8700939baced21ad2dad1b
Date: Tue, 26 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779797553
