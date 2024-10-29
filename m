Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436A183CD1
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730236554; cv=none; b=U0FomxecR1Sbzl8luzSC6b6FPG9ciTQU12Xn9d2hNnLbozZ7QxqOO9XomduUswtBtnu67Xvvgh5iM2UYFjGUlvSL2nYKGVbaftjtYm7wvgt4UdMHH2rs8XCYI4qsWs8bCik1wgfzaG2eQrZbKqvCRQA0RMx+/GvrO2sU5HkZUAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730236554; c=relaxed/simple;
	bh=BaOcS3JqlbXQjYlzB3wibIauhuv5uk+ikXDZjlArpXE=;
	h=To:Subject:From:Message-Id:Date; b=q2mtnKIyVHNI0wctGDqTpR1tufs4r27kWZdap5EXTvZiPZk8xK8GZPsDqT8JDaB3HZ2mizxpHgYh2TvaWsTc+FEEjeyjWAhlj9ygbIQh5pF/p5PL5WoxJ3GhiMy/y/CXczwXbnTUboj0N/DGxrF+chR2Oykbzt0dDTtNUH3raxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec2YwAxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec2YwAxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1276C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730236553;
	bh=BaOcS3JqlbXQjYlzB3wibIauhuv5uk+ikXDZjlArpXE=;
	h=To:Subject:From:Date:From;
	b=Ec2YwAxi9iC+ciOFlXJ+JJTgE9kx2/bQMpJP6v0VVP8RvNgGNiaklaXvLfY4dekm0
	 T8r7zQO7tZs7lYKVjlEXfSgFXLYezy7DRe9ap1PpbcA0L3GjoBGrQ4BpFoCK2s2v01
	 9lh+NsR9mvmF5wdXzOAZshhEGQ5mrAcfcDkRpWsTDV7XH93a5oCPM9fWLaThez6Upe
	 HgaXsFOYJtq+NJXnD2JoVtnONl6YMpF5e0Wk8gGKyyc3lFvOuGGB6lfHQYxL3R5HJ9
	 M7AWGLyth2Ayugm4tKDKlJ9AKWSi6RU/aBhkiwVXdYMPs9L7nPpwh2YHjjnQ0ZxMYo
	 43uzAQcndiWAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6937D74941
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173023655366.5078.14650969537981281579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55903fe3e20c0fc407296e01831f5d717f931a465c5230e004a4582a8bb69b09
Date: Tue, 29 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730236553
