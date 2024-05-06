Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10109157499
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715017943; cv=none; b=eWwAtOmnc+6s0ohDelYeR6DN1jCz5ZlAFuqMNLmVfjEh2zmlDbdZTP+o2GuKqo9edW+eyXffuBEVfHOgf5HOx6kKFRCAVfo9w2GvAOXJZNV3VigUf0rHV9lLRIL60eJn9lT+EmEe4alhwYg3XeTC3SUxDybjKGkOCXrPHUxvxxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715017943; c=relaxed/simple;
	bh=KMe5RitH7ttdH/X+FUq3FQrsvjrmuaw4v5lnhS17Yps=;
	h=To:Subject:From:Message-Id:Date; b=WYv4pHGFeIv5IxwYSUichd7dphjeGGJrCxageomJPy+3z2plIUnaSXBXZ95NzCp65Lo4RtYgYCujngVdi6L01zlK7k1j+cgwmt3HZ8+Qn1oDui2Gt+TkjNtJnNEXSOSTqbQ/verVSyYJkrei5H5OpLcU5Kt2Oqs/1grnk3RGhuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LduxbLRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LduxbLRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE7CC4AF65
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715017942;
	bh=KMe5RitH7ttdH/X+FUq3FQrsvjrmuaw4v5lnhS17Yps=;
	h=To:Subject:From:Date:From;
	b=LduxbLRBEHLaSwXObm3lu7LyBES2u6h/x5kSOUGSgHezhn8C+J61RjEpR2tZW7GST
	 /BcRhGYwpNX+nuaQ0urvMhO0EhMvA4JbF0NrSVC6Re+kqfO22uVOL/VEje+ppcGdds
	 ENgl9lcWoZeCrXqFhJ2jvE81kQ1nsKBxGwEKS/JFTPsSAPlg4ptIelhrOp/RaLZwhZ
	 Tfd5B7Iy2FUIktK/re4T3cFvf7VXRqs0ga+8c9nt5VaH2KtRPNZMV2TMrd4w2NEJ45
	 lPoBxmNI7qruD7N994nloQwnYyhae14QcM+HPwkZJZGlS2IYTyNholwZ0EEjtBxI8o
	 8dDePLyR8p0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E82C25B5F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171501794280.3200.14686410295950117232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0272e2b1c4420e0b812ab509ec95d5d1c055586b27c86ecafc785932a705b055
Date: Mon, 06 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715017942
