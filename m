Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39208286A7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763449314; cv=none; b=rvUfcnA0UUmbil8txMZmXTB6OySv1jJ1zHUWzyU+kKpLoZ6myp0Gj2qJcJ1cFA643Kqml5bHjmK/r2R4GSaEYVSKMI5aE4pG/3Mezx31/keiF5oawdshItlmKDYVJ/GGllLGML5DuCO9XrecH2WnY0ASjNTZkRKlfUFnXcaLfk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763449314; c=relaxed/simple;
	bh=HQ039K/a9t5n00bpvyOKFr+yZ9XDBtIuTKUG7lZxqlU=;
	h=To:Subject:From:Message-Id:Date; b=YuG0Nq4lWs7YCFKSbCvpwCkot7Hh1pRTUacz+979KUGlc2DUBWIg9OO5HGY5lUdZc77M3u5BwF7x+F0cDeTmhLhXbeRP3XcXr0gtBIFAduu/FYEHq+37rYesVTyhYtAQGtMtvnzV2WY7IZU54xd1TGkVGbcpYLA8ilF5hwjapNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZslN6EDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZslN6EDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA44BC19422
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763449313;
	bh=HQ039K/a9t5n00bpvyOKFr+yZ9XDBtIuTKUG7lZxqlU=;
	h=To:Subject:From:Date:From;
	b=ZslN6EDINN46NpfsTu76ySaK/TVIHVFapBccn1wYoyhCuY9bSu7/v1Cl1yYRmYUBF
	 LECT+lo7rtEESdQw/b8gn4HPBR47ZJsaRQIFW3r7dotlYqGFsazawnb66lAAMCjQP1
	 J2j3Psj+V3hdcOVDl3rC5B8fP/RVmLASa/l4uo+9f4y5md7s3xou/Ld6KVVJpfLa3N
	 nxaYLQ2vEz9FeKaKOtk692uNrkGr3fHnz2cbq0zDAjQUfR9TP+HMc2/vpyIQD3ASyd
	 dKs3QWOZg0JSGYib0IkvH5Nx5muyHB29ynBvdZlDOE5Yt6K4hyc2xtrBBgT5Ak+UaF
	 crYSwC13yoB1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAB5CEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344931363.31849.13684741028707920000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592c5c9774dc78650b4af6b4e9f0cb817d69ec3c37c2b7ba9c90b353d44e6e90
Date: Tue, 18 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763449313
