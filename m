Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8AD2E36E9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754171994; cv=none; b=S5tZXfi2+sMAyXcMMl3ZjLGdjYx9Mgh+gWKrSgwmwoCTVUyQgoKdo/le/OaS8RF3SbF3UXadQjhZTKk4Z5HQ9pgn8hdR5T8eMePHfIuVlAwdpqyFYCiAtpddjEjCqrQFcd0o0zZnmNyYZUEDwANpLLtYcaWnrjcBE6W9gQhBKM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754171994; c=relaxed/simple;
	bh=y4JhJqJ5WucsVb+b/nvtV1VRj65pL62BbhUMBhws9oU=;
	h=To:Subject:From:Message-Id:Date; b=dmeAprEKFLRS7aog5k/UcwbQ8NzeL68/p6pA30X85uw0CmNJ3pD0Rir45T2mC3MQsFe0KRVMHlzGQP0X/3C7QcekKOg36S3eIezs0YTKC6FE6PuJweknBzDvA1q4qUZtIRh4k1g7HE7WgKNi5pEJogvL4vUgOrPUp0ZWlTizLaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLraPtLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLraPtLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B6C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754171993;
	bh=y4JhJqJ5WucsVb+b/nvtV1VRj65pL62BbhUMBhws9oU=;
	h=To:Subject:From:Date:From;
	b=aLraPtLkpVZmoLP52OT0SBMKlW2+7ImLxRQAURsIkrcLHMZ4OuElaVzAB76XRDuJh
	 8+V3q2jI9vuZ+TBa/NISYhEsNAmpNE2noAzM2tj/h9W/my6el/u6N+zkkxiVkhpbAf
	 JeEtrlqPFFWIIXby1FHBjdWdNiitzOVHxDUo6tdToa8XKNedlczb9W7t5Bu5u1TQMt
	 5vlAjT9W64DmIw2OjYKwl7F6G0V2+ylrqNA9DnFZlgaoUlpK0OP2Sn1ajRKvlyuhUL
	 4kSmrrHPOVjkvAg3C8O5UWkxi/1LMFgztyzU8X1T1ss//6W1uyTB+8rE7qMqHYlXFj
	 tyPTDPTC7fVNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DCC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417199358.4441.13016138660549734233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2011cad7e8e0463be7dd94118300868d5e6809208c1c4c4f52b892cb2962ec4a
Date: Sat, 02 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754171993
