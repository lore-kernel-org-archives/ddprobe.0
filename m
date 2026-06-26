Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F0D13A3ED
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782517114; cv=none; b=Hixxkiwi8Px0W58Y4MNh3uust24uwiUTTz7r9dId6MK/cCfAHFuf/6SyiCiiBB7jsqT38quCvobnurt71C1bFMHiaVG8dTQCjUAyqqewKvCdfOWL4CfEoxgEty9SazQDTTFWyWfYVr8YUGuVxRJSpzGTqRWXjDsibv1nUDo5+ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782517114; c=relaxed/simple;
	bh=byMIRPRH+jBeVnUANgqDcNOO0KyJ5HuIgQuQL305n/o=;
	h=To:Subject:From:Message-Id:Date; b=Rb6NE2D9nOinJPfLQjiQ/WWoO0spoEMWTsSXqfykgCEPsxGZ2h8lMXi7ApRbVicdazPbs610yAXagngJ7O/Cdwz2GWMOZqTjGmLWzNnKUzB3TyAyGHm+NaW/RH+QJnzVER2Bp7wGzdHnhgH3zSUnP89rJ8xcYBaC0o79tby8bEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD0EoQ1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD0EoQ1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1C4C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782517113;
	bh=byMIRPRH+jBeVnUANgqDcNOO0KyJ5HuIgQuQL305n/o=;
	h=To:Subject:From:Date:From;
	b=rD0EoQ1AEu8eydUlfHXqfahNPjaoLbHohQUNuSCMC55HdwFkTGVfRzXkWDgogiowQ
	 GHtc2DreFxuZgDSNlBKJ3H/1/rbV0zoprzCHoMMrkibkpCTtiLZvJxR3tR8en9QiCU
	 oIXs98Bg8Gd8/6LB8cYhz2eGNF0IX4W4Wf34+de6HqXGgBQuNFTo/8sLQi/H8LbCSe
	 5Bbw/oLuLH0qxJw8izSfU5HR8O8gwxKXnkjbRV9DspIgpT/myx3i5is4jBkuCRifCY
	 S0rvopZK1oaXHte0dWB+WKyDRhITkn65trEUEOc1gwS1fuL9JeSNRnb7nv0dsCM6g0
	 JkdXAnHFelxAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B343CC43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178251711370.31853.1941442717897145146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e2a80be59a4531ac63e3b6d2858a500ca6b18054777a9aeeed2a3c192bcbf0
Date: Fri, 26 Jun 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782517113
