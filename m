Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAF585298
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718340503; cv=none; b=esHvROTe6DJHVc+KO9+RC69uxNC2/m/GjXO/x4bHOitExCLb4C9PVR45npmjSnVnUyszvA9A/93AENMpqkNfsS6Dbx4Gkiq0jO7CeeJsQfA8qAen0jm/kjD+sZ0Qm7i1GaMzSHs9sUTwy6hBRtRHZOXD3dl6eYK3zMnfhjLBYfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718340503; c=relaxed/simple;
	bh=sFJgrPYMOgtU6Y9kDw1HXh/smSYLP12XF/O9CZWGhA0=;
	h=To:Subject:From:Message-Id:Date; b=ZyCjNWi3YCf4Dn5YA1rquzBWZzzQ2lqkDV97AsGb1VDZBHaLItigHmuaNDxlFgjwxVbrn1HLNVRb6AZzPzyBQIBVzEbhY0sy7QURuE/9R5CP5kG4ITRixDOIzVbXTV0zQCniHu4Hy1CpCK6eh4FH5oh45TPNPAoXLF+z/55wltQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWZy5chx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWZy5chx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D131CC4AF1C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718340502;
	bh=sFJgrPYMOgtU6Y9kDw1HXh/smSYLP12XF/O9CZWGhA0=;
	h=To:Subject:From:Date:From;
	b=XWZy5chxEODWUwTZa5L0YAr1VlZcqkmFw+gaGnZAaapMAmuBQsF93rRrBZgz41qHT
	 ErdxaO5tf/o7KWR2L/rTvtoBvaJ5J/5KiF1Q9/U+MqRUUgfHED+qBm+SL8ZDL5MOa7
	 vUb8XPvmLiaVb7CsyGHusIs060A72y75C5obPRS/xFPmLWjZQ9wSXsbTSvruzaKILO
	 WHJ1HyMUkW1lwXDfU4/HSec52Mj4/yk5iBa73Kbgv66kLYG1P7MMYShibU53jKK47L
	 rcYms49UQCjPaGtShqSMoNFAqcRbBTpc1x9chch4hpl8gWRRHebNx5QqIfQZ9I9Nlm
	 WZgYXwVoaPezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0B4C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 04:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834050277.5530.8665865442373152036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f924f7df9e9dac820fb74e65c90865f4342e6c2bbe2ce0a7d0607f037f9db5
Date: Fri, 14 Jun 2024 04:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718340502
