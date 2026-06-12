Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800D7332918
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781226994; cv=none; b=MSGKtBIOlafobPUjibUhPv5wEug6w8tea5/kKx0ek2O1HShWHG6QHe/fwLOSaM9ODcACst6CVx7DmMNTpGGLklzgDVatlYCSsdYSHh/cFnmzovurwHnMBBsu8PLl3trvqWlVVXidbdWT06kSn7Dg8Qi159ysazjFAr7XgyeUq8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781226994; c=relaxed/simple;
	bh=GewFkFQz05Oo4yZiCY1Q4SNuibogLUvfvWg+GNQoBiE=;
	h=To:Subject:From:Message-Id:Date; b=E2fKJriTGZV/jceBKF4tHlMS8S6xY6Jvm7OwlulqWdoRbnWf2inNv1c12A6rrQhlLcKFuXwTnnc+hg61DCpjr8xE2qXp8+zHjR1hejg96T39sMmjqZND1IGzoJqAW0LNOFGv6uEuEbnNsgh/o51IVpQXKwpZGUBUgAulkV5LfX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXMRbZFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXMRbZFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D96C4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781226993;
	bh=GewFkFQz05Oo4yZiCY1Q4SNuibogLUvfvWg+GNQoBiE=;
	h=To:Subject:From:Date:From;
	b=TXMRbZFwYZWTdvwwRJXWONCAwwNXNPKodwo9DQb0AsZtM9cqMZuO3WljeppwBTQCF
	 BEvnK7j+NtLu89ylcXCI6QYupDec80q9LtST2KMEi5k+0Sdt0yFfwyYE7yZnt6cpWJ
	 3iCBHVCVuZABcagf5OefzVuDPApRSwjHV7Mz3222f+KSWvBgEgbBSWhHYR1CLPvDUr
	 de4rz/R+k1S6zXMKD3vJTZE4VjAlYZW7FCb077ZdmmDRcMU9caCppYIE66vAhghPaM
	 7EWkQ2WzBpoyyvRWoGLktXmFwZc9cUiDzmZV8MTrACrpRbJ8XeU4TDBWMoG+1KiNcv
	 oig0T7GXHW8KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E2FCD98C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122699368.30786.17313414585805919727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fbab79537d698f9088e529817cae1591f12933ca6140871ee397b070a6d0d8
Date: Fri, 12 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781226993
