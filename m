Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF4F2417C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750678793; cv=none; b=M4i7IK3VL9TqF7ukRleECfci3dK/nwHE6Q4R5RdE4pRe9GD/dXWQkuEiFVVahx9dobZ1QksuhCrVjiX4bdGhontHMOH0VyUM/jQcz+MhPmm06LgxqhHIG3I2qhH8LGy3+gVpxwlrAeVnojVDI9JjbWm+Aq/LqhoJFbQWO085slg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750678793; c=relaxed/simple;
	bh=pFsHMdNMt5f8WA7hcmlWKGItB4zxc9XpvgKDFwONasQ=;
	h=To:Subject:From:Message-Id:Date; b=GiAHw3dyJb3zHFhnJP1sOPkjks/xVcukzJI8+XWivXKniLt6unjYlJ+tIMk89Phs+KJwwpBmrmVa7BA8VX6nuPNzUKBRuHIng9nBweGQj7s20GO8GJTfNJXcFW0nBjBNKjzpA0XApt/gjrOPZUhByubMSgvW8e8AXDlgMnAOqu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AM92P24A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AM92P24A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A0C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750678793;
	bh=pFsHMdNMt5f8WA7hcmlWKGItB4zxc9XpvgKDFwONasQ=;
	h=To:Subject:From:Date:From;
	b=AM92P24AfgCuLbjvA9vma0BpsfzxnJmG/d41NZ2E6oSZJH8tHeRySmfm0mTYIgSUJ
	 DJHx3ykcfNyJQugK9/Aijxtz3Lk44EDQnuZUVtl2HdMmCeQZ+C/3nksoXFwRGYg0Ne
	 JcMBeHQmzI9G7HN51CRw3w1s3xFUsj1pahs1LVF1zeBDbLTQkLRSzKsdxy+/3ocOpF
	 DszQXqTsmwUVDjZkalNUmy21DjJQ8p+XjBrNJ4Fi6ikHC92T6KOBiR1ds3CaeBUI8Y
	 ssCmab9SAee/b5dzZLfhnW59sdlSDJquPdFsWz+mAWwqYHJpwwBbXVaBD8iMNQlniE
	 0WX6jE+u8QaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E980C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067879357.21407.2310434561410825309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926bc900e4647023bc5ac7cbfaaabba1e23e9264c31472fbcce90eb4e664bf96
Date: Mon, 23 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750678793
