Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4841991CB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783504114; cv=none; b=SyfW72n+BL/H0Dknz3C0C2b9LxJwCfJcXIRUFYlK6vlYEqf4OcXlbLzOOvBjtHR1odrNU+KZhR60kPNWvaLTkqpkfVLzJGWPlsjBOmsI8V+fUtqk0SYnloB+MZOYJTRTLIkesEvAukREsR2hM/EzzvND/3yNNPKXVxQFceY2XA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783504114; c=relaxed/simple;
	bh=ETbl2FAp+2FLdh+n0zMeongylW4YCPiuSDuzZjqWtfE=;
	h=To:Subject:From:Message-Id:Date; b=kd56tZ2yuarw91fw5+v/KXIzU12O9qzqMp7+T6h7JS2JCQAWrWFwOMeEgBZGTT+hh+000Hh8hhMU9+sxnlqkiBfjr0ALnDq5gb5DikRbd67LGnquv+8Y1BtSoO6Qv8ee+MZRQb47te0XA56kIIIZLZDIqV83lX3Souh5vJABC2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRrwYk5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRrwYk5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF65BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783504113;
	bh=ETbl2FAp+2FLdh+n0zMeongylW4YCPiuSDuzZjqWtfE=;
	h=To:Subject:From:Date:From;
	b=TRrwYk5SRBeK+juRWTc/d+v5PkJ72+riDjzKzRix+Uf3UqkwQ7JA1qRjzNCPhbT6u
	 St4Z0NU9po3WPSSLF7GrWl4DEt/iGWRcLOanIhjZrOahCv2p+8Med8Sqp1fn+Es8OM
	 cERPeEOCfVlKHtkkaJIJSHMqDchppJ9FuujsfXDRvvENmW6HtnWU0ogRhr+LX5xgmH
	 cZ1ThXI9vStGooU4TlzbRya8OnDxPR7gvI5b6sqCx0k8ejXNxQyhYdIalg7FBkXbBK
	 f+xY3fK9VjaMKsN9uTgVMz9DtK+JJR1UFWLy1cAn9gvyLuesqs2t03Bz9xrE1KbBa4
	 Jns+QLU4JjFoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE928C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350411369.31851.13750297069865821536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d35550028c7a1b9dc8ec9cc629bcf0efb0ec71d9e96a8b0bd47caf2f5cc93acf
Date: Wed, 08 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783504113
