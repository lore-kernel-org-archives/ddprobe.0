Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49280331EBD
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785274834; cv=none; b=N2mcpayo5yfP5QPDpyCw4SCquGsiQ2fsVV0ljDyr71T5ula7Rh+NCufrUR46KlVAdR5SuCJoVAkYBFPZhrpFHvSXnPb2Z+DRJfjJxmUOhKGwcM1Un7BTAjj5f7g4uIc1mL31s0Yc8kzFyfNg1xdxWIDhFOqcyaF8TYgOdPxass4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785274834; c=relaxed/simple;
	bh=WAhuCWUCPdlVWU85EvWFzclzHHO88bqmV61Lev0AzK0=;
	h=To:Subject:From:Message-Id:Date; b=NUbc+VZAM86XQoN9jvy9vzo4Fl1u+oxK7IF7Ulb6IDlg1FJTT//0Hshkym9XKkZdtrKwJhqH2inDxrv0N1JqXJEJhCg+Q1O6a40NfVTUphILrXn+iV05btg1jqUm7arQ122YhvH7RyBP2uexXkeQrp6ko5tBibiYnSXTbPrRxNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaRI4Twa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaRI4Twa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9C4C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785274833;
	bh=WAhuCWUCPdlVWU85EvWFzclzHHO88bqmV61Lev0AzK0=;
	h=To:Subject:From:Date:From;
	b=AaRI4TwaI6kNwPP8oTo9zEHcnThfDutVbCYcGV6oGK/Kd8HTwthx/zJVIytM6E97n
	 ePiy0eZCR6/jt+baVwXm3dWQ7G+TO9zXHCQZLUHl8zi96sQnh5iAdvCEc43bk5ksKg
	 4nOF1z8K9wNJ0vLOVGejCINOClZ0MPTcNTbpGb1peg6qGlkEMDWwKT6QHMuo544Ddz
	 VNHamFC4XrciXQL6op8CIo/fubUeicSE2wGaXvxE7+SvXTuQ5odbbdUWdqCIZUDE9B
	 fgzAYkc3tYvvSAxyFGWjJi/g+fuEQFyZsvqg9l/S8Hd0eC20la2OJAPGg8Ktxm47Uq
	 TSQsu0xQeh+Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE568C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527483368.10878.11674643607867884350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5f176e03923f3253d39683556b45f1a1d882c82fa3a7eedf1b2cf601a0e22e
Date: Tue, 28 Jul 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785274833
