Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB764908BF
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792247434; cv=none; b=gdUDldtkM6MssoSvOexUKz0TBCJqQJQ9q5SlJFOYVWUXs/VLukQBqLGRjZNNZyXodiEp6TIwV/EgXMpb6tN5qj3QC8yO08vpWONVEMHhJes34Ou2RN29P/gApOyAYKIS2/8QcP3L+Ra8SLdPFmT4ONdCA1F+8nx56Le5KUa8RaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792247434; c=relaxed/simple;
	bh=/jIkgUutlNMJENGf5lkkn76v34LqXnIkeIS5lx9o5MI=;
	h=To:Subject:From:Message-Id:Date; b=Af0jhSbO5Ee16HI+Psk8NWHKGMkJSJ5ILJEW32eyOzb8C7RIt+BNZV/V8Fp0NUk3wrwsny69lfzi6Ly2iruvozOMiyttf7DdRZSBrjyYwdp+am7LSB6c9x2KsosmxOJxx+ZCy289RfFdsu8AGrsH8QIXEi0Gc9CFkIcvy1UaUHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nL42Gvyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nL42Gvyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37CAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792247433;
	bh=/jIkgUutlNMJENGf5lkkn76v34LqXnIkeIS5lx9o5MI=;
	h=To:Subject:From:Date:From;
	b=nL42GvyxJ7P/zjqo0hzami3+HHrkgnJGJP/MUXjeKrL90y7WMx3PpsrTNtw9BjQDi
	 /SdlY6mxG9hbV2tWoWJbTyaGa1zzS3di7UtYKsrSW7TF+ZYTGJoNUEJ8I5PNE41DwQ
	 D02pVocU1gG5SYmlVzqsRKUJxyKOr0WwbKUE7a0p+MowqqO5tsc4fmLrmtKql9sXAp
	 gSoJKBZ1hgEU6GQ+U1Ta/EKJ6H/4K4o0tUwAAYzttpSZqL+ufbrFmjd+xU3VNiMnuy
	 wfQOyBJz7SRDAb2dUyrKKUJoAgfxzK521O/ESdENwqB1lUDQCc2XjjrC3cgwpa/ZoV
	 uGYVtNnkkitqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B058FCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179224743370.28885.1095510411847601250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebcd2cfe1dbe08927aeb3931a4dcffc81d502694e73e6845a4744d46434f20c
Date: Sat, 17 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792247433
