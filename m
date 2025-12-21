Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C8A1E521A
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766357634; cv=none; b=dos30ukUG/BA5pzOJRGT926M15p4xv9URMHgcQBtPGRXigAT5JATCmzP17qmyAFIhexSamp3Cd1iFmkr6xOrU7cUMfmpmRFaXaFE66rd+UdpbJwQMsKB15vFJmgtRrUuj7sh/eSr3xThP1zVAn9JEy/JBte5Al11IfZ7d/C/7D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766357634; c=relaxed/simple;
	bh=ELAopSKyiXNzvIUSCP0ZMRsPW5oz+8IW+iKzKbqFQYI=;
	h=To:Subject:From:Message-Id:Date; b=J/yRIw/aDhI14i6bguhCCtvd08HLw5aWrSKZ/9muLnT+A36O8BBGqGgQBDp50VEa7ISVCl6q1hMKBTYCydeZyFbjuCSRqxDo86yAPfmRIv4i6CNkRLPsvLqyMwfqTSoBgLqDB/RpgTc6kYgHR56UIC9/BgHLKhuEI10JO6FwukU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gafpaybU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gafpaybU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61F7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766357633;
	bh=ELAopSKyiXNzvIUSCP0ZMRsPW5oz+8IW+iKzKbqFQYI=;
	h=To:Subject:From:Date:From;
	b=gafpaybUKE5R0gz+6MghlitREGbEHQkNw0xmf4iq09ntdlxlSAd68R4jrF0W8pLJk
	 lKxxqRkujJ95ooc5NYsuht++QFWxDAf8ElrMNDCXzwYwCNGzGDcmZTpocjTatIVroH
	 OHo7ap96xTK9dhFiDnqdopj0BXlm465uoUL1oX3Nm9uWA1jGMgyXBOYcJ/pIVfhisi
	 Wj4ubEzfMMZvvWjeHSM6klwK7bGyNd2tMPbwajzMP4monbYfIhroQCqeiSlRmuQLX/
	 FRjQn1nhYAbt0VE+qNtC/RGcE4Ii00eL0NMol6sBz5d7AdZ1ECNuKrtLmJzNuCHAN5
	 vxN3dNLy8+x+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93019E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635763358.22940.5346524477727631505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc05051e7d26f216b8fdaab7d86257831ed44761076e6200e14853869efd6f17
Date: Sun, 21 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766357633
