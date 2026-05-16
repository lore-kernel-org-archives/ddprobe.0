Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1D238A728
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778926834; cv=none; b=NRgVkvVy+E4qb5d9Ea3tm7PErbhyaDdej1tm26vLlELaDjbKrWF+eZef/UXB6S/5YqSL7zewW1ikkvQNLoSSU7Gwt8HlD6ZHbz7L+mO2iVqy1WBKTgaghIrHSL0KeUxIEB4Uz9w87SLckGnRgrG90oKrsI2/hMmLpPXOlseqzPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778926834; c=relaxed/simple;
	bh=b5G3DhyRvi5e02qu/vR3NubLI0vCWUvh+tm7i/7SjAA=;
	h=To:Subject:From:Message-Id:Date; b=gCgSXBc2tCpEoCEjnL2JnFgIpVOKXf/emEzI7FAi1BCrMU5OxRbE81Haje72xk2oFqUZ7AvIEhbXAbB0Ka1AJtqWICkzpwmLQWFum8bBgjJsyHRJ3RscTjw4dPfMGam2QlO/plIc1rRc6im6Pt0u7YcZ8y6mnWgC+MPzL+j8NjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWyQV3dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWyQV3dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3828C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778926833;
	bh=b5G3DhyRvi5e02qu/vR3NubLI0vCWUvh+tm7i/7SjAA=;
	h=To:Subject:From:Date:From;
	b=NWyQV3dd6pYs9NwcxJFKXEJwhXk/X1aGwvsiMpUhXH++H7edLdh/x3YJaIWfsEc6A
	 AwKXKVURMq/OS4YqQ9KGJg6ZnXXaL0g/CqLjIoxymBXcoHcqc3arkkdvJf6/njvHWE
	 ju3QFeT0mlri3YtK9aSo/Pdlia/YBXOLYhi0Z+GAxPiwfmNpJm6vSdfDjNiYPSidOC
	 1AwO0a0uR9n1uKZSlgSYDpRjquarRvmKrISnJ8z06Ecvx7X/ZpO1futNOaSeAlvceG
	 zXvQsR4khv0o7kutFuJEw80cMe1ejDXLiuGIRgpAybOgXCN786nq4d3DdptrRpVrWK
	 86IgaaGziMaOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3470CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892683372.13367.7903287450512254957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b73ff5957b163ae26995aae91d6f38e602faad5341f7a497f993cec5e895e669
Date: Sat, 16 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778926833
