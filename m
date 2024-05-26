Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DCD8F45
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716714263; cv=none; b=H/mXm7ct03OF69ZfZNr9gpu0fCMnKW0wZiClJ8LPmZ9mtrocesFuLvif2VG5UpUnwwsUxxnBLyk3o7UH0r8KWkEICdKMmBNPK81MkXLe+VpEnhQmftJ2+UmeLEy8E6cyNePr5xs8gguZviFEIlLqpmC+GHhoddqz8OxuxnMvrsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716714263; c=relaxed/simple;
	bh=wD4J/5q9vCy/7C7tkpzMk1msTM3YfvXhZA0MYXy2y7s=;
	h=To:Subject:From:Message-Id:Date; b=ghsi3izhFTOiETHBx5VxBS+d875t0VkPDMLt25yGkEeSUXYvhssTOjeCU8OB0zSlEe3oDjw1/ZMf3AhjX9BJs3ujqog27LehCYl6+scuJcuo4ppbFTFOCRhS8cH+4mJhJdHM3SAR6soZqtJwzhsyq46BT7fbAYhbW4sfunFobmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JICsiH9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JICsiH9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716714262;
	bh=wD4J/5q9vCy/7C7tkpzMk1msTM3YfvXhZA0MYXy2y7s=;
	h=To:Subject:From:Date:From;
	b=JICsiH9XN+6YxH3Vc1OrA9fwQpFAgZSeGEbI+IOH7kOFvPVErA3HyVpsE3aEchs4H
	 osTzbNt2anQmkSXztVSBHIzt50wDWI4/jW3F7jw1DqjvYuHWvU3FoFFcLVhj4UBb9b
	 7xjNa0d32vjXp369I+cwjldIkNEYuas0xZzNO6gAgz5FrwQ2RNtlAKUAWADkpDLrIi
	 +vvj7SHAah389dk51wlw7y5BMOrE8WumROoguEvRFu6ns6cz/fM7qicoinnJGVJJxO
	 N34GbjDFFtEN+MgbZEQEcT9x2MbnBKIaiEhIO1DbuokHstMHGBN+WBERZniub18wl2
	 E0ka5+vffIuuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26A9C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671426278.27821.15305482260810790989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eceaf8fbaaeafe3427fb02abc3cd6a9405a1b97775da47115c44675848ee413b
Date: Sun, 26 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716714262
