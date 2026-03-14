Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D5A4F881
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773491094; cv=none; b=hRz35eX6thuwTHUSeuwveGo+YNEZCD1T1TGUH4k+HqsBAB1iXpdlDjsUOszdj7s+J1WCLibqwyYVcqqwdmsP10wBCle6+4q1hsM0vH4k8BTVxJWtuJoX689iZSln7nn1i9hfVil4PEEdgmh825NL8Od7Gc3MyJ2e3HI3ctDR8sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773491094; c=relaxed/simple;
	bh=WiI8tD89LRtehO95kQNhek5Tv7EeWCtC7D9Z+9w5XGI=;
	h=To:Subject:From:Message-Id:Date; b=E9bM7lXq5/im+sv7S7xHaxM+3aN4+ZdECUf/avzBzcc3Mf61bkJs9U5ZRt5dQSD0so7swkv1+IT2NhAiNpSUt90zButhwnVlChBr/5tzHryE8eYoQKxy/zWOyGOPYc3ISi8bsPMALoFdDn+ir1287/Wrp60lRx8AT+ytCxIlQxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lu1kgfiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu1kgfiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20DFC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773491093;
	bh=WiI8tD89LRtehO95kQNhek5Tv7EeWCtC7D9Z+9w5XGI=;
	h=To:Subject:From:Date:From;
	b=lu1kgfiu0ZrJRSbViZ+2W/EDu2rJIDPEoqQFB/EqppQNOmLYC3G6+Sg4MQa2Gk7I8
	 +hKSEVUK7Z1qAie6VqM0xYP8gp6RLsCV/pUKkibFBaW7cD4HJTImh95rpfZlhEnlXn
	 jekjDyZBo0lBg044Qz5pVcVnDxE/okbYgIeAvxcsLFhI3r6uSiVNN4wCXAOadULKZP
	 6op+Z7eGqsw+QqbtHaQYlmiLjF762sQgHhYB/1BajxM3VrFzYSutk0EO5s7PPxCaDg
	 rqiM5+Dzrtg5WvY3zKdFMCZKA5rrYAeJ5jNqoLZ8wfd5Z9cn8hmP5QvXnc0MRotXtL
	 d+JWJ3eNzjCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7F410706D7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349109358.29443.7703566030872439629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f42c061defb0d58817f6f7bf5d71f274a7216152494e22be1db2c9d7bfe6d2c
Date: Sat, 14 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773491093
