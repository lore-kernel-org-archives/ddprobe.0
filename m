Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F5B2EAD1B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762437594; cv=none; b=a8eE+EV498NvP9iktc+J1sR3MCkquBvj73/RMYjqKvo66JTRRqLvwylwI+bUfO9MToDndQJZsqglAQ+XRrnwI0rEjWaSf1qWIFyPdG5cpdJm8emg4Sa/4H3U8DsY5CUH1it8ztdv0W6/dr0fBDbiFwd0poLNSIgsvSp7nsE/YR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762437594; c=relaxed/simple;
	bh=vlh704OiDOv5qweMG/ba0my2JtoArNmEnkax/FthmIs=;
	h=To:Subject:From:Message-Id:Date; b=abPvHPJDfr1V6MvVDbnzKnHdQpoWD9V1L0e5wg06Ttvq6eDp8GgSq+wD+/nHylwcWyflido5VfP8k2+A7FlHb754pLuUVnmuoZPXMHzH85OmBDIu12LbcqMVWwMUirsD23kYcaWGuwgPSLTyl5pgwPD523rLfIKUlS5US8x0UWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALL9i/mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALL9i/mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7810C116D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762437593;
	bh=vlh704OiDOv5qweMG/ba0my2JtoArNmEnkax/FthmIs=;
	h=To:Subject:From:Date:From;
	b=ALL9i/mqdm2FDVPCogNkrwhEoChhlNAGIP436bsi0b0qkbzVWuLKn48LsNV7UtGAr
	 4WF3v7ULA/t3L2+T5Z5BQl9KERR1TQAtZEClw1o+9t1wwlE1uAZWsoHEmbtIxA7vk2
	 fPcoRFMjZJ/TKsfDmJfJMdHB44R/974FXh0eXlfQpPLUtJE0ahG303uUYemyHQbqbX
	 Kybm9AJ+KPF9Raikd3xPjp2DbzsD1Z9R5X3Lfz88qMH03ZW8PG3lCo+yTqYHMQ2lm8
	 YKWPhyUjVrXKCusgFUT/KBKVNIQpVpxEkvsv0dD/3K+/25oAe++KyvxWlgLu527WwR
	 nCXY/abC/QClg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97413CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243759360.5686.10087402555492910334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ec14f41f0707bcca59ecd5cccfe0cf796382f29441bab05823ab18dc04c58e
Date: Thu, 06 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762437593
