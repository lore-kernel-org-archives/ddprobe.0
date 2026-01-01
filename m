Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19128125A0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767302634; cv=none; b=bfkEmXvMWLPyKOX1gQMZ6ntpZzPEbG4dPIZ6NxiGGuYVqt+0ZJVfsTv8+sG7vsLsbv1VMgW8Oy4y0UDrHmC2wK8jyI/XllbjtbPb4TbKS0BvhFzk4GMjIbragtFSx2+z3sK6BF/TVIY42jerYWgtovyOOiVhw/iyVGOiIYLHQag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767302634; c=relaxed/simple;
	bh=SWkZKqCf2hjnZr/CAlV5Y7hwOMr51NyzFi4+I0KUVHA=;
	h=To:Subject:From:Message-Id:Date; b=L7bvbHaxHXWSub3LlGqRlxX3kN/sgPnWZSUied6MSPpokF+7h/OO5JHMuf3U30F6cuRvNLGWnKjpbQycLrC14XtORq0eViBu+eC/cO+l135UZfgrcPfw2TitCftG8QlfiYlKq8eErnjfeiG2544cubcbrc3XXjkgzBR8AhfegNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5pqXqFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5pqXqFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A703DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767302633;
	bh=SWkZKqCf2hjnZr/CAlV5Y7hwOMr51NyzFi4+I0KUVHA=;
	h=To:Subject:From:Date:From;
	b=E5pqXqFUU7cPNb1+nIeRBn/3iqM+vtkhBEhPqAR7RIpKiGdy8DC+utUKBBqILGASp
	 EBLzbjvvVFTWevzDeUfdaSz+DCa+nTOvoGW5AvgAQ4FvGlhGUBM96WCaWleTn7PD0N
	 H6Q+mwZ1g3YGdt4b85if+pykPtVC5TdFOruZ3IUmD/6Psy6mfKBfpnf6VxdT95gF6K
	 YjA6Uf2jMZyasFkcdSYG4fj0v2m8z6OBOyt7spw6vB87XpMTGKGEMyWp7iuX/NzG1U
	 k5cu/xzXFY+F695SAEwTbnJEnEx45G18XzNBI6xMxjHUIdm+o43dXVDVAktbOhbBT9
	 85r5LhQpdy2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959ACEEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730263358.29998.9016984905520228900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717452b21edba02434001e250eed75825fb25b1daa213a6dfcccf7c75457ee06
Date: Thu, 01 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767302633
