Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47CC79D2
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746183593; cv=none; b=oPexlD1MkLVOYDIyPvh5Ax+pzy+P0InAtRaEvlhdZTgPZejsCVUoakYlkgAdr4J+up6+f6vAivE3rPGEyXZcJgGBwqVS7S+ADJIB3O4mIlRHzSccpSUzLuaaL4Z/GsADLWTz8uEL1qlbiyN68+L+yIgyBecaRNgdpee65ruLyxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746183593; c=relaxed/simple;
	bh=TPlDxnLWgYJuCE78WyWgjbMKJ751QYRSk8v8/7/mm+I=;
	h=To:Subject:From:Message-Id:Date; b=hhONg6UA7irN4tt2KSnooS9x/55n9+8225eilrLCKKs99z8lzmJJ0kjeDxlXtfkpsOGHFUYx6FveP3pikVFGRU39pWVCAry9bElsS6aWLIQrl1jFyrurkwq02HFEN9VE1AEaQQWVaB9QHhBRDnwVqYHDWtUvf45kN9uVVzoUL7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqJ6rwEy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqJ6rwEy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDBAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746183593;
	bh=TPlDxnLWgYJuCE78WyWgjbMKJ751QYRSk8v8/7/mm+I=;
	h=To:Subject:From:Date:From;
	b=KqJ6rwEyfDgCrvchdzMi6iG5rldzSpOdNEk9gylmKg/XxLcWuOUYEM6re9OwjMMeT
	 biB3wmK7r6UWj4Qgc8K6BUOafKLQvXrQh+6lYrz70Cb5B18MGVQzH5u8Fi4v1k/ssI
	 Scbesje099ANdORkmHkvTaPKqiaRDGMtvBYzGOeuajoa7bIUlfZp1JYwdZZRuFX1dx
	 8vY/mPwkytkLNnk/M0q8mETjc3KRavRgMsvHCXoS/pUFu/XPk1nAUyBk6czNOaSe0h
	 Gdp9jLvNgZmnyMeCuCOASb50yoZkFeBjhTTDM+ZKn9rbkRudeONb/tdc7XI7w2zMK1
	 RODTvCguLRoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E292C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618359357.13796.4859159354597920585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b97565ca517340da367e54e6904652abd9256dd18a4769b29b848095b387e0
Date: Fri, 02 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746183593
