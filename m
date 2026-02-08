Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CC929BDAB
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770562434; cv=none; b=O0eBfnwYt2InRBnj0nCfKpW1JAwkTgwNlTz65pfmD0+zXr+38zsPfIu9gxRMo6ruSNGJ3LR1Gpf3z3z7z1VZwQzSw6bMVSmyOuIJ5tnS7V0qTAuLQfZHmMcEA2V23+SM8HIOCnM1Iq4DxqTHIsMjLCdvhRc/HiRGn0ncWoDl/x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770562434; c=relaxed/simple;
	bh=A7cioSQyO8EeuwoTt66xSyMTcQejekdORiDwZPT0FzU=;
	h=To:Subject:From:Message-Id:Date; b=XwJ9fiG9crEpabpU0sLpYDmet5J1KKoqKSgKcPF/xMMRIMcziem5TgU56I0yGkDIIZj7CsLc4+CAldP7UK69CFZs5+2N5PQB47hMSBusw9n1bhT7jVUq4iS3Fr4qbh+ctcEsWOA14H3G3BQKaqrEgn4EAGefj11rMJHZVUBzsBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+9N3CtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+9N3CtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CCCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770562433;
	bh=A7cioSQyO8EeuwoTt66xSyMTcQejekdORiDwZPT0FzU=;
	h=To:Subject:From:Date:From;
	b=I+9N3CtW6/dJ2dfcQzzoQ35EjRVeXi06Zh0ygsHn9d5+fIuteDzDi4LMESuFQEaRA
	 H1otkz/A+7JN/NDsjaeLPSuQC3GGOqs0VSrEJLKpn+npx90RJ9Tb5wluIIpqLoDx68
	 nIqttmqCJowLtTheXSWxrhnFyUDmRXaojkHeSawyaaGVHi1F+BQmipwPlPMK1baszI
	 mDvoeYtrMAVueY9qJUraDBh+h0aAZsf4bXAf4sM8Zfq8kGbRaFdnHIlqz7a6rDEgSH
	 xjwaQNeWKHykrzORPRACzJ3HqHjr0NO1jC+hwEr1tggA5/7A4z2z624WIaZ3AoVj9j
	 liyEbtJatyq+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B4EF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056243358.23773.15128481768821130505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb3e39213714fe7377dced20dcdadd153720f40cefa6a27db3352b57a169bb5
Date: Sun, 08 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770562433
