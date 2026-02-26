Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F823D301B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772118294; cv=none; b=u6ubZb33/6HuxqIt4vINIGQe8ifoVDtNoTBKadfCVOrsZu7lhuGnlFNLwWBoHUaBvmu+kKZC/k+lzTGRmTeTsCAKJFQLbRWggL82OPlOZSUNF6T0Otq92/AKeYvExJDa2+m4Bc8+WLZoF8LSPQ3u31vDlqV4DW8J1sc+iTiCtWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772118294; c=relaxed/simple;
	bh=hJpMlUAnISnz8SbL9jiS5wiYvU4+TPwaaOzgEv8d+LA=;
	h=To:Subject:From:Message-Id:Date; b=ORL35Bj004SDfMv34VPUFEuMYFxtyILpb5g3v8fPHvqzjKaO/PybDHZZKVyKkrdFZTGebiozyC0MyQmg+10o1g8ZobSo4RXMEFbIIlfBAaZBGLgS769zEC/8f/HlhqIgy6soEkTec9f1MhVxxr5aeXzVSSr+VR1RBPUXsp9+HB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CC9hlgGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC9hlgGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CE9C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772118293;
	bh=hJpMlUAnISnz8SbL9jiS5wiYvU4+TPwaaOzgEv8d+LA=;
	h=To:Subject:From:Date:From;
	b=CC9hlgGfr/F/9C9mbJsOQztKZKD4FGqYKYnhkUBFDMnVjcsI5wDxVBsrLr4/iqGML
	 gC7dGulcVOCcc1WANyHpIBKpRp2vnY7H39BzZCEup7sT6nB8YE6Oc3Ho9+8GMXiVCS
	 ChZyNgfl9D6kJL0pbduuovdH/8plpWsvVjkAm15O+rbqZtSwvwFSijAMXKtgJSLe5K
	 4v5OlrGN+AwjAeZYglAO4Lv/j+/JJ5F/Yv1AkPXVB+tabzsl/3y+vXayQBDgI23x4T
	 dVWhtTvspeR8Gba9QtEMOEWc3aFD4KQfSnm8UhZ62OGsYQ+pNt5Y1nuQJP0zaHFihq
	 PNbtefZ/AzVig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEB1FD8FC4
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211829362.17408.8997940996609760514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643b0088e9862b92a00185a68c3accf9301ac705ce3cb842cc4833a0f8d15fe8
Date: Thu, 26 Feb 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772118293
