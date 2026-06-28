Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A2A40D578
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782631114; cv=none; b=dqPD6TDZ2BxSXKHxdk6gDoxlj3LCDn+utPwbzABh3RzNt1YiSI2HiL4SAGtyYEL3M+l5+4PPYUaUMuUe74zQO931FqTgGqIKpIUNv552FThtLvTdsqqXaEhFvrJha+QHbW1o2E3YrUZIU/QwD6vQDcQuvUzYRDJirSMReth5v/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782631114; c=relaxed/simple;
	bh=d1e7239n3xi0GBz1Zerb2tYPgrWsQuVW8E2SpDT6W1A=;
	h=To:Subject:From:Message-Id:Date; b=I/+R+UjgTPWwk53mx/Um4RZhE5uJyb8g6glErVpwJ6EqoLkONndTF3kTvHszvUEiYN8BO7fqvMCnCEc10GdkCp9jLRB6fEo3x0GBe0+EMv4cnroHgiJzdpX4NQeZ4wgAOqBOyg/x8AaONqaLSPmwqhqgeZFg17/ggSqBFsP7maI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9wtsBfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9wtsBfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC086C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782631113;
	bh=d1e7239n3xi0GBz1Zerb2tYPgrWsQuVW8E2SpDT6W1A=;
	h=To:Subject:From:Date:From;
	b=F9wtsBfNXXX3pp5JKu+HDfne7KJjtcMRGvNrh+Ljo9aA/79Q/AjsJr8yEE/U1+41r
	 OgwOXl/QPEZzb3U6sCFj6lmee19L7CHZzKhkzZiJnFjmvv7aiNmKU/BFza70gBowGn
	 dDuJfBxg3tPEo31vDNOdDOaG9ybjr7iYHDG/qivJVBNMaXH93jtdIl2fiR9M3d5zft
	 YmHUK0iltuQrrzX5M0Sk6GEDMdnnU4xGX0Iy+aP+p6DqU3ULq7GaL8ZTz99DbuPWw7
	 643MhycIH/ksh7vMzXyedx1uHtfUIo/EFCZihAsCk4WfMAqSp4FmtmzTKi37T/16BB
	 5zYOOCWIPVZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDEBC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263111369.16839.2546365618797939761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713f358315d6f651b761095eef1ef374abf00145f7e2f876433559984b99a2a6
Date: Sun, 28 Jun 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782631113
