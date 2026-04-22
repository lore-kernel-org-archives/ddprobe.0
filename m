Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BFC2BD0B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776818854; cv=none; b=K3cWy1rILNWSrkJ++DGCSRSiBJD2ztpm9Q5+M+w3j2ZkqIyBWt4tDGMGJBcakgv4uHgqd+QSXXB3i3HWyDD4M1dq3D0vUSDzq4/ngKrfz3zYQAKK7dTl554RAvF/B2dLRgdknPnI6TYAYOs5sYeGAiyx7pZFKI2hRur6qBkmpGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776818854; c=relaxed/simple;
	bh=GuC8ejTljDvuuSSZ78Cnt/RaRbKW5iYvvaKXvSIdXug=;
	h=To:Subject:From:Message-Id:Date; b=ioVz0RnKwUo+LNfy1jn4n7219I5+CucEipu7GMVhWNrwHFwPpuUIv0WtFzSlBzeD8pbjtVrQY3Sgqz5rTxZmp6k9033o5WP+i+yGl/1V1ADsGa9ryU9cbo5f/KCnv4h+5ZTcnYw/frtfQxHvdmR4E4v9751hfAph71MJil57GsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQ78KebN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQ78KebN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C033AC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776818853;
	bh=GuC8ejTljDvuuSSZ78Cnt/RaRbKW5iYvvaKXvSIdXug=;
	h=To:Subject:From:Date:From;
	b=DQ78KebN0WIPXV8ETr/hQGsTf5wyD+4kq3ztSMO8W7O8bQuK111QG8DcUzf2WKDBU
	 IrrYOsjguhemtqd3dQHz9sDINoL4wRmjlFminPnOREn24zZ/fdUad5A3+WFkfeJpkU
	 U57+BPDNDByfJAJjU2nwSeqSti8zpeV4+8ss9xNamB74IvMreOQu8Xi6A62HHnRo+D
	 j+LS2Kw11zSmJd8mes2x8SawMqG1a7S9qfhcEQFs2H4FzbuQ8Xd0hmj+46DTXC4urd
	 xEX4/x9Go5ZUn3bVIxW2MJ/4an0GhafofyF73Qf8JMLgQ56uMzjLIOQoB9NvCCpaUO
	 RobgKg4ryQkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C9F94CA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681885368.6848.7618547309107499636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8adda7288e7d1da39a3190b0b635345b27c438fafcfdbbf79bc744783daab0b
Date: Wed, 22 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776818853
