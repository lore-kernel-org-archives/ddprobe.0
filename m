Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6182AD0C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788298234; cv=none; b=kaBdSXEwxWU26DbGsEko7qKfTJ53K5m9VRC/Op55WJ0cCm9TP9ylqXeiUKq5ziXCKdwxDowpYdYKlB0irlyN+71/dYEHdW8f3SNg+7BS7GSf2s55oP5121DqUgedH1VSQ3kGDdtVjRHfgyE2XbvWEC4kS/bGq7g0Ox/LBA3Bng4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788298234; c=relaxed/simple;
	bh=JVVmsU/sMAx7OCnzrCtDbof6+deGQP555H0s9mmmFZw=;
	h=To:Subject:From:Message-Id:Date; b=EA/h4oko2Ce0IZt32RUABed1koZkVfLoM/nr/huSTdXzLNlSH9PtItQyu6F1DF5K8a/y7V0RMUCThVtE0gkD7wLSfYl22GEKzNQ0SeLbA6Mla2Ki4LP1fsOjnAN3OfeSZ/nbrlDABgLUWTJ2QGERgOnxxE53TMAcHPZX8iauGmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp0EfbM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp0EfbM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34F7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788298233;
	bh=JVVmsU/sMAx7OCnzrCtDbof6+deGQP555H0s9mmmFZw=;
	h=To:Subject:From:Date:From;
	b=lp0EfbM/U48llqDJL3Mm8BR7CsWdXSx8hlm2kEZIIY2stNnSI7F6bY17sLM6ZljqK
	 NkE7+88OrUAEzUm+h9Ergh8/PUzPyrFtlSGAWcijBrjfMBLSFUwadAw2GbqI2Q5Osy
	 zSP4aC5DSs/b8glLPT69Y3Trq46PDRGNb+LK9bRsOLDMHMky6HnScQJ50b94uNip8n
	 UINxd7y48NKjStS7aq4o37UsIG99jNprbLinPckmnoowZPyXuMxzbrAAGL7F74EkoS
	 B2rzQvGHadrYJ9+MTTADVQR9mGKk61mpr0g3xnZYhavBxXeet3PyJuwaZi7P2HacIq
	 nx1+TcQS25wmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BD3C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829823368.24077.10167170275541639479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf33818a81afa9be586f58b998f6164695f21ea072db79b40d5e7870b89ece41
Date: Tue, 01 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788298233
