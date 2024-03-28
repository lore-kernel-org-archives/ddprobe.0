Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C0F81725
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711660697; cv=none; b=FHKg7lcYVTJgdgGl44gjZND9oyAJ67tlAyPN2Fi9lFYFw0Y9p/Zi938dBWDHN+mLaVNQjY3duBU6TcL+i+a21uCvbnmoDyeSE6/KS+P7Rie/+pdMysBR5kQR1CDjgnellE2Gy62h+zQj4BOKC7NbLfuEvYPHUtZs9aioyGeovtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711660697; c=relaxed/simple;
	bh=0dL0cJnyck4D6oHOMuvXkoh8u98eMd6YT8efoMHIoME=;
	h=To:Subject:From:Message-Id:Date; b=uBkoX0WzmkjL45XPD1UJxAv+UDqf8xewY2bFmsGRCdvYe2PREGWaWo4/tpAIi+LGs7oSk5+0V5oWQ5zL/36/57tH81MfKSRFnjeDCHl7zRBNRinU7RGtQgtCXl+u1B//tHWUjFSg6lHit5i2TMqnaj6RMzcGFP/XP25FzQZta44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMjF0IgQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMjF0IgQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763F2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711660696;
	bh=0dL0cJnyck4D6oHOMuvXkoh8u98eMd6YT8efoMHIoME=;
	h=To:Subject:From:Date:From;
	b=kMjF0IgQp0jykDjofwrTN7ZsVWH0UailrQLSclEE8xnIemLBln2quTmS2rjD5o4Ow
	 EGQDOBT+jd2tIVPX+cL58XtX5CzYBqjHn+lKBAxNDGl6z1BjwOgZzdZe5SYohKdhyJ
	 37Jdt2Y+vt3m9AKNAdwKUk5hFEPHh90YiwqGigxXHhRKgOuuqpfejRrNz2hPc9CpHT
	 REyOB3c5iXk30ddAjmQCZI349/S4Zxqwcw6KIOhBdweQmzrn2MpbsE/U5PI/92gros
	 fD+jQD2Yz2jW14ZzH2hfvPi3Z3R/PMJUEGCiDoFwf91Jtc2du/hyGzQUkGXXeJbqSS
	 AgrHdBrX1R2yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A2BCD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171166069640.14799.17621889173620449920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f43e7c4be282402b3b2455dd61eb7dcd234570e05adee5756f392cca87b82f
Date: Thu, 28 Mar 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711660696
