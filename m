Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D723A6B82
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777971454; cv=none; b=aZPo//MoW+vZztZQ7smtTJi7RW0QUttB2yyPuLe/zQYi9au6MJWdJXuQsoLiuyg9J6gnTmf299yW7JAPn5aimEzsRmUF5cb3BkM0wmOliq7/1j1YcyMZHIPe6Zqofso8Vlk+Y60a9v11HLSwDp+slLlOyWCmwCtK2YYKo4r67BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777971454; c=relaxed/simple;
	bh=wHwB5aTBwghTipCPdVnuCHwaZlA65pdgqB0HlaP4gRs=;
	h=To:Subject:From:Message-Id:Date; b=jaIum9jk1f/baUqO3SNZlvYgiuSGMeTFYnoMZrbhAkgVpHsjV0c10fIhH4JEr5/e4fMWSMjgVIGPCWbjDs2LJ1gIcdI+HpNnmwJL4jWicBILjyls2FoyhvrcWuYhAXlYr+3uBuEaOD5wXN1ImENJfLvPJtqn2eTAHMhA1dHDzaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvQvzIIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvQvzIIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE905C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777971453;
	bh=wHwB5aTBwghTipCPdVnuCHwaZlA65pdgqB0HlaP4gRs=;
	h=To:Subject:From:Date:From;
	b=tvQvzIIpr7YrSDqYkHw8enKJFU3NtU7UgU51l6opFp6xoNyTISExeeVayBTXGS3CC
	 FBN3vXXmjuNw0exs/gctXnMOiz63hBAJLAQksW/H8z2Z5vZS+xEOAIfn5V9iKWzHGY
	 ne1KjHavDaOEBqEkBJF3Dv7htOJxi7V2hh7PKP63Bh+BFW/nDIMhvkK0T2UhQ/pQxw
	 rPhy5DLuEC7/jLaX/wVTCUVcRfDqT5zaGHHAkSZQ/TDY70Pj+cjqZ2y4WfUMQU5XZw
	 WTGiUXZpoJqNq2amV3vbkH2QEIPK2J3yD3aAcbxCtMXP/yPAyMvfr/RWK5St/AWrck
	 kJiSHFnR4/CTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEBCCD3430
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797145368.15987.5868440478486130548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfff3f3efd42af5de3d59961b859bd919e4cd7db55e28eff60fccac094dafd0
Date: Tue, 05 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777971453
