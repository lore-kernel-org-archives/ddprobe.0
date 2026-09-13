Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6886A3932DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789338634; cv=none; b=NCWlo2N2qDu6P73VJkIZmcxm/H235g0wUuZk23rKAq8eRk5T8L0GSXwE16ewjqUUG4XF5GCzzpnkNH1KsSKIrAVDwFoqsNXqHByi4y16RSvOUdAd61ocIsRQbeeuziOG+avFKobrLU82jNmEyJ5jDoloN51Ntbyht9z1QzwGnQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789338634; c=relaxed/simple;
	bh=/HfQmqi8ZGWieUTT+77smXTpav4Pl6yAJrO9lzpkDo0=;
	h=To:Subject:From:Message-Id:Date; b=hB5cO7e0+95r0UDWQeKSe9cTcWBO5GhcHSIpXsbEDcBOLR1BR2t+wBZyDytFeJmcZ76wYpFzNOfvfRsCmiD6itNpuymUC6Oho1PYAyzVOG/3hBxmSCzgtRknWdBQ3OnF5PavvQEFG55jjueG/zSJCL5jMA3qx/xSxpEbgP/bl3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNlU0Xgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNlU0Xgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7802C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789338633;
	bh=/HfQmqi8ZGWieUTT+77smXTpav4Pl6yAJrO9lzpkDo0=;
	h=To:Subject:From:Date:From;
	b=JNlU0XgnunEJ66Tmr5H2p8qrDbtqIEo3f6/DO2/7mhumVMWnscxqyU5S5ZWleJV05
	 JzhR0Tp0NTzp3RfYZMpeU2KjH3m+X/o7Od+BNn7eb3GDksu++pQknU94XS2JVGicmX
	 HsfPgv2RRfO/BkUipqNxf1QJUmAO4UOmNuhWD2G11pKNiAYfCHtt13SG7W2zatb5t5
	 6L30IYtwrsk4dbsys0RucK0jccJznJDeN5coTR/8YPRpzGkqMGj/yuTBywxkZRg5aF
	 Uq3678iCfwiJLrziP0v+Mudk9zo8yMtCLTEbaY1uf1GnSjYDbugo1we2KJB78bYpF+
	 IlivyxWj+74gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2246C88E69
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933863371.16650.12425895561589185764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea6ecbd00d2a33b2293233e8177fd51a37c7cdadb1b1ecbde41f86170b052d9
Date: Sun, 13 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789338633
