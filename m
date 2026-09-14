Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE1449363B
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789407634; cv=none; b=hhTKJXxsXIrCG5xPVaEV7R+8A0mMOXxii2qHxwoQn1ArceNGwaAl8hFSel6k+4SCWd+PaR4ZbxRo8b1hmm9561BZePCrns4tKUxXE80PxeKgab63cAxA8z2+JX1xn6gm1mEe7PvuRefQNZgiC2szFNyA2yPQCkGvgGqqTUJsQjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789407634; c=relaxed/simple;
	bh=NUOFz4UklZtKxr6a2wIGvSgI3Ww+79n1ylaSiJ/gFkg=;
	h=To:Subject:From:Message-Id:Date; b=ujr7F+VWGOm7t/ApywFyw4sfTtBpbmy0ZGAlfsOSDxf0IRjzUJMawMixsAvxD7kO2doRLtkDPpm3H8kedyLFMBybh2Sin8MKArFPJOu7G3w15BinBC89kMJK21UYaMChLE2EfpIH4/WHhBIEgY4i7xT+RNBzzZht3iIVs3ZCY7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+or11p4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+or11p4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECB2C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789407633;
	bh=NUOFz4UklZtKxr6a2wIGvSgI3Ww+79n1ylaSiJ/gFkg=;
	h=To:Subject:From:Date:From;
	b=I+or11p4FTxNUISkYAJ4zzJ3mzcpMmhjsq2KgP2GX/EpZ/oO6sz/lRng2sFB50HnG
	 CE2yr0lJES/fWaKJY0w2PlYixo8fQOxmZxZdctLhcvTB4Ykcv5FJssMwwd4zLIXadw
	 g3PeB/Pe02/WWi8sp67GJr5t2pwfesmfShKmAS/vqv+majtERQ+27beFKX4FNYn3fP
	 Fzs6MjCelCBuKx72oPTqnKBwVG+K0eLPW85cw+frz7ey4auL8gNsV07/1l7QCxiLyG
	 gxXY/zuWjjd6Q1AnqB6F/RX0bCmYogVGiug2LY/tG+RalUQopvnf0/2a7HByA73Sbi
	 8Z+YY6nQp6JxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D0EC88E6F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178940763373.1147.1652133511975757045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2c2134e636159a7788102af81564aa9fe4fd777e6e83f2cb3257eecebaa9f1
Date: Mon, 14 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789407633
