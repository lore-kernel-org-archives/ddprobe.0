Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC7636D4F4
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763941314; cv=none; b=ba7yMxXdw64ozGlhUQlDFBI9oebsI9nK9zZsMugp+T9tEJZej+cAol3h+glfDsD2M85fMoT6tb+qRRdxfYpE998xeCl2ytv4UDSGhC0HHg2B+64YtggGfKwB5ILtMHJW1kgBi3w7RKTl7kxQvkvu1kYsOhKYpLXtB+OArfplcg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763941314; c=relaxed/simple;
	bh=OcyAsvjddpV8YKdOoiydfucwvLAiw6bboEmQzCLl5mY=;
	h=To:Subject:From:Message-Id:Date; b=LFkAzvppIxcfdurAiWkeOI6CPuaOE9IyHQ6TMLAaS93rMg63ReLhAklPiC5rbtfe8P0aeCK6Peu5qvlowE92JDGdg/kvtWFqbai4KvqC0tDUzSdnEDvYYRp5hTW303Qo5dIR4Hk6uciN3/kuWeWYRLsr6qkq5GgZ4vgVzP+rGPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChOMEmp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChOMEmp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA695C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763941313;
	bh=OcyAsvjddpV8YKdOoiydfucwvLAiw6bboEmQzCLl5mY=;
	h=To:Subject:From:Date:From;
	b=ChOMEmp0+g+uyPOrgjzRwlqZWLlX7npja+2mTQ3NvPCpGwy3LABgPGOdiUqtEMYg+
	 avJYnQMsdJ0WI67Dj8vTu1pNCj8ym8knIYF12It0p8UsC+xAAhsOrgv9rSevMz+XOi
	 Ft7QXzCrOixpXcUxmJ/qFW7o6kMMetPk1ynF39evntKr61gtTsePGiiV4SQWLX3OMy
	 T2YJtHcoa2OjwMKP7p5TU9IjGfsIQUsMPymSSbstrJl3ma7CmgkgX78s8Bi+3uOnjZ
	 tvS1v1MPY6F3yq77El11ybU296Jn2AsrOx4/w8ckmIRhCQ5JQXNT4RiIwQXvcinH98
	 zOxR+j0y6S2Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91355CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394131358.27385.967601298779197519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5baea333393f3e29362497519f53073ca6f731e4ec0cb9bd8e8afb8b354776
Date: Sun, 23 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763941313
