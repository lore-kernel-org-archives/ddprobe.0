Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238F31EEA3C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749904194; cv=none; b=O2OzvqjkM4/WHlZVLD39sYyjXLUgqxaAeTu0VCbEUBCE85A30B6OglH5Rep8b06JmKbFfLXjwKxUCAKppgm8C7V78Z+7uyMdAXdnjmj6L526WqFJyezoIKooQeMbQYn7v3TJoxNrUybp+a4wyapDlt60TGLJJxibBcqSSTUbPvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749904194; c=relaxed/simple;
	bh=7A3ZFPbvPy19rcZ7yZet1C7PhuZjc8axoaUQblHLo5A=;
	h=To:Subject:From:Message-Id:Date; b=QWcjngngdxg2DWFXECeAuZb+SS3AXVs8l8TWqiJm0uMhjL694+ydfO9pyqCUGCo8dsSzpaZICcJ5nXaV6TxghWwsIUDwObNDDOzm5Ak7Fw3CG+gvt37MP9R1mEBeeNY/gxOA1FqSL7puiaM9nPSCk+cmIyeggb9IUWvPskHOsw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nbu5fLN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nbu5fLN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B103DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749904193;
	bh=7A3ZFPbvPy19rcZ7yZet1C7PhuZjc8axoaUQblHLo5A=;
	h=To:Subject:From:Date:From;
	b=Nbu5fLN/+cP64DDiTIvIf7SevyfPGL9skx48S3azMlVIn8Gh9ZFUnbkkYqFkmRyRi
	 aLugddwL++zTNoGZYxf4I+6hW4+nwpeENMuaLZm+8PfD4qgwDjuFjIT2ijzIqvJeKO
	 jQNVLwv5RZM8+exsCI5VPvMV771oIk97QZtHIfbf1S3lMQS/bjivxyxGRzZW8bzsJH
	 1D6cQWCPsn8x3epZhhLsktvjGa0fFUc7t4b/kR4tbfrcVY4XEuNC1vMCQkafxgC5E2
	 2FWng2WHkU7OyUrgenqr6ILzMEBLXM7/DAxp9Oi8cUch2vcnk1Hsven2dE3GXFgV6+
	 l4VqghK3aWgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988C1C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990419360.16036.9205788653546386556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234d5d21dedabaf568d36c955dada43dfc65d887906a690b06f86560a7ef319a
Date: Sat, 14 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749904193
