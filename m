Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2770F25C80E
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770639234; cv=none; b=gUuN+o5O0Lg77wtdovuk+2D7K3pKewDoVdEjXzXZPkmIvxRZt4vIYwDuVVAXn+R/jXggLOz/HtzXfXPQVIP85pKunHCnhs8UVODceG/939qUKB0vutzc6QuooJ9yd9iZ3BpsQFWHLN2nlmDqxFoy0DiFH6gXhTZQWQWCbdnNcYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770639234; c=relaxed/simple;
	bh=sUtiovoW5C85r7G0Hd5A8VF7zJ04uhaUyj8K6nfr9C0=;
	h=To:Subject:From:Message-Id:Date; b=mL4lprjIiJkcP+gmOyXVquF697D1mtG6obK5I/XRFmR2mACbyYt1Bk4Aoq7Hs8Q0RWVxbiJ6hzxkMIvApo+h+3NKLn4F3wbHcBjbHUnYk+uGSYIj+NSIj54kBielzjwI87p+m8ZJTBo+2xGrfGw2sVqh/emd4zM4+ZjCT8YYTwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6J/ZAt3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6J/ZAt3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AF1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770639233;
	bh=sUtiovoW5C85r7G0Hd5A8VF7zJ04uhaUyj8K6nfr9C0=;
	h=To:Subject:From:Date:From;
	b=N6J/ZAt3Tg8vOpFjxpWrF2Rwh4YTfYRScDYatJtRvO8BeO16CeoiyMImnio78SRiu
	 /d+N0eJd5Z1qB8k+fWScyraCj9gqGIq0+5cXvHIqJNHPmzUZuTXsCKE/RZpfhKZn62
	 A5vGSM3LAaoUj26zRHSavmmSg6q5vjo++BDgHYwBuhS3NiWNT4ryWAT9FLlgcJRlEv
	 fnmWW9zpuSwyh0YLf1kbY/0LQSOyRG5vpPaOq6SLjrNYwXQjgfEzc5RADJnI80iXH1
	 c+UVHZJOthda9LBH4+mJHRoM8ETgGJXFso1DrywovIUObVtasNt8qbpku9M+IKJpFe
	 rZ6AQJYiK5TcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB0AE81BA9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063923362.18803.6210488993514621823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75233a86e6e8f23700c93d54ebacb3ec0494fa5a45eebe87a4ac3df24f2e80b6
Date: Mon, 09 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770639233
