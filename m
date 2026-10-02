Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F824FDE70
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790961038; cv=none; b=cY11QFYe2uCmjfF8FAaRUEC5tMkY2QW5cLsG7vLlRVJOqbUjNHnbES9YTlH9n1cFo1d3rEXsxAJAT4mmvQo1UXVSiWmkxdJQEOq/OMqrUi5ygS/qlohLmyDEvthsHpHC4OMLxvtGEzDuWDWC2MeJ9gfBLfObt49up7lOxgI5OzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790961038; c=relaxed/simple;
	bh=NMXBXNlcHwEJlP+WDIb8JOc7IsJoXG4HqouTgVBi04g=;
	h=To:Subject:From:Message-Id:Date; b=WmLiYOOTveqo10+KE658Kt7msXPHhxMZVGSH5BQEML6H0wSju/bwjjVfkqbWdZsd6SldrDcxDvjIOX1IGJ+2Wv9RVzpuUrlI3w8DasTO738cSM0F4t9yEc47rJPxedQ2eOjYS4ZKu1QOF1BF32HwD1+uGC0VUpKzgkIcfN1blos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqeP0ZK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqeP0ZK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1B2C4AF0B
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790961033;
	bh=NMXBXNlcHwEJlP+WDIb8JOc7IsJoXG4HqouTgVBi04g=;
	h=To:Subject:From:Date:From;
	b=WqeP0ZK8k35e9vgzxXkr9jpQz0C1R+i+SkkVxeMxio+NloCoLmOl9WBIiALlVQacJ
	 HnWR88ZKcoCJmx9JlTq6HOuzhKJpnNyeW00+OTaLxAIDmHrburLS4St+1WtDyefdIL
	 oX6WgTyWw7DZAOh+4XPnzroEFHuRzR3wjiHBEQSXad72NazvmK4CziynJRSYwgeHth
	 wvy/LXfXgirvyKKN8udL4aCytZusHYKsSw7rVqoIKUYlxbXkAY+/kyX5KbvRYwtzGz
	 p5u2+H8Hzjhb6AWKkp+SuT23XsHGJ/Tl/Z3k1oPFLZxCg6NG56QZhNvLg/GD95kcgV
	 kN11GBnog+5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C2CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096103368.16476.15565389187762884533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6009b4342bea617083847634bf09972d178ad3380c49860cba8334c197b50dda
Date: Fri, 02 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790961033
