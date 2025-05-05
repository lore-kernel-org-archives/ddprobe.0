Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B071A926
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746413394; cv=none; b=Opceo6jidHu/EO1b8iPeid7jithNGRSlB7WwBHTO03EVCKQG6IFro0edMzfpN7w0XPOSIHs2c4wGxxAmprTipKT22ZOGn6l0OhFap/phzIcXS+cas/yPPM9RW9Q2x9hxQvkDrT25LwX//YXj0Qd+9QzRte4ymp6i94XNJmTRda4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746413394; c=relaxed/simple;
	bh=MGya8y/oWNWKbbh17Ve4yhy+DV/WZDqB6pupuRzrgww=;
	h=To:Subject:From:Message-Id:Date; b=o3/rD8V0acojjd0nYPSkVMW/gtRXjI+wwDfl/2hV63x36zBq61bi1lhYpcNkiRbHiy+nZ6LW1HtXs6BbFZUUl4ViA7HGwan74JNwNNlEQ/wCACPZchK6T5VqaTg7iMCubwU4pU2IzHo/fMws3K+r4w0xhr5NMomT9hbNYBaoyPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vytm2GFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vytm2GFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E5FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746413393;
	bh=MGya8y/oWNWKbbh17Ve4yhy+DV/WZDqB6pupuRzrgww=;
	h=To:Subject:From:Date:From;
	b=Vytm2GFHEJVS67HsXAijmZbGMVuyr2WoN4cQzwSJtNJQoOCSbZN8+QCriHZPgurmL
	 sANovEzLUNvnxrYA1ViVhUduCtp7LMev6fb6VHekLR9RBGE9o4t+7hb6V567kCF2gc
	 PeJGP7HTSJvkFBaCPH1V3zwf3h+AU91/UESwjC7jkMJtBljtNcUetS+6ZQoo4JE+P9
	 TOqzgep7JZTKYG/pOJjFXD/Fe2gEMBlsma0G6YucbAgvgTbDmcnkMxHmClU6nQ3a0l
	 tOZp1DMbwR+weRgJy8J9EeFM3uKggqdLDDr05GD//LBv0/r77mzbK2I8MlqC3cfKpS
	 aqPuW1abr8NvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B8C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641339357.27818.12656089709897255306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079b17c98c97a9794647affc5258c9159dca77dfa6f81dedb453559dd2b2df50
Date: Mon, 05 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746413393
