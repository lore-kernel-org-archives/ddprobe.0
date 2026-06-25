Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A41135DA5B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782373054; cv=none; b=d7kYGeqL7z6Fs/U3IIW88Q7V5EYsUxpZAUogSuzqBgx1ZhR8+xc/W9DSyF6UhHhXIS+9Ora6G2Yic0zHVtKoqtdQpFyK0NShY9G2sO/x3BL9aaHr1EkvSBktm+mRTk2hX6TSxkgkRC/Q2hrqgTBMhCLHxfLL/So1ytE9omYgMas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782373054; c=relaxed/simple;
	bh=tec6qglP2GRNOs0eKZO7cNTv2nfVoYogR8rHBzHPBXc=;
	h=To:Subject:From:Message-Id:Date; b=rOXt+14iIP4jlz0YJ8RJ6JXSv7YYZTFGj9t+9pE7sk7Y0xC8qYOCrCPrgkXhQXUkfAFvMQuR3G36XZYQlOfwGBOOYSDLZtvWvKjIClncMXfrEnnDYVLEXNL34jppkBbj3gRS5R0oCpgzv/SHHyZ0xvgPv/v8cU7WV15H2sxWV90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cm3ACAQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cm3ACAQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7262C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782373053;
	bh=tec6qglP2GRNOs0eKZO7cNTv2nfVoYogR8rHBzHPBXc=;
	h=To:Subject:From:Date:From;
	b=Cm3ACAQOE+gcJNpmX5OEX5YwkfpLjwVOLTHuIYzGRtG0n62F397tu2st4FPUIfr4s
	 lHozgawZshn87humUDpGmw6wFu/k2JtuJUWIamKo8HbKt8LgBg/USd3Ns5mJYdz3R1
	 sKjeLhRXUj5h70a2UgE4W1lNobmqyekFjwQU83lIBrzG8mL4YQsCO992csfyT+/edJ
	 h4y5YrUhBt3pdnUPCGXBYBHOKr0KkKHQz+4/bTncGdu9puMtmNg3wrmH0bdmlJ78NZ
	 lM57nFe7JoJn2j4wLwINY1//qDQS3RImo0FukujIrWQg8P7vubl7N4pVzWYzZO6z62
	 vyOKdnMNVPlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6045CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237305373.3080.8032700901176000874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391e70d31c8097496425a2e48472cd2beb8f493835fdc35cbe5574dd28184fea
Date: Thu, 25 Jun 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782373053
