Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA6642048
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760920194; cv=none; b=M89fmbruJFF98z3CjCOr9bA52CTjxGqnstCIPqNmmBbvSCWGbBFyxl2FgqchXUO+2RxyRCcHC4OHQ/SF4uKqTptZ+o4ZIk4VcZVGXFcQNRG3vC0t6bxAoraIyg6bxtz0QSAqbNa2LFmpAu7U7Ka4pwW/jx/O7qY96/i/KDMnEVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760920194; c=relaxed/simple;
	bh=bEd+AxOej5uNHy1mIj6SMHlClJOX4pEFbwpgqiGrOic=;
	h=To:Subject:From:Message-Id:Date; b=ZWyncRcUkos+UL9C4uc/+gFD+XH8eWLA4FqLmofU2QS429RFEAFh++hgu6Khjb5s618jPGlX67yWPExMR8K0T9BMjIZ0zykYYeTwT6i7YnbdXv8aXLgteXtS2Wjl1h38d/8sbgAuZY2gSAWl/PU8r1LXbYA/8HSkeZp/1Vseeik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuaGcujN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuaGcujN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3848C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760920193;
	bh=bEd+AxOej5uNHy1mIj6SMHlClJOX4pEFbwpgqiGrOic=;
	h=To:Subject:From:Date:From;
	b=QuaGcujNjeQqVGHaCjdxzBMshh4+q1oc7jtxdOrZL3K8xi9o6ujPPX+DsX9Fsl6BF
	 2h0tnLbov8eot/WTpGXww/Fo53XnnX0KWIiZuq5PamH0C0clQLmiJu0E/mSvMvLIIV
	 MKpE9nJJxbGcVv1uXUGk7XI9fruD4SUaLLCYBGOh/dj4yq3NEhkZhEfBEfHiyaZ8w4
	 6GwWqGKY67zndh7GAHr9XfVbLabrR76E0qBfF5krKpFVMZoi4n7M8juT8xHehHKe3+
	 svTWn7q8qBvasy3fchJnK9CeT6PDeT8YAARvfscfmUG0FASoH8k6kaxXLvkro1zAFH
	 LON0ceVoYbcrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E5CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092019357.7342.5887266003664965863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6e60b78a506399d1f295c7c56ce5b68a5647741edc07d88c5a61502182d074
Date: Mon, 20 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760920193
