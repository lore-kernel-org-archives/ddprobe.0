Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1096335F160
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772796294; cv=none; b=jgGB5ed/Emze1rxLw/aE9jJ6+/+IyT2Zoqt6zx2eb89pvIwy5rLn4XnBJAIxwe90bDpeM57QT1YNiJomKnQK/w3nMrx1V5ZymDZslAL/E6WLM/IqeoJi/hK5baHbtdHzGJTwRhzYbLTAtR9XJSPe33ibP0LfkENcg+bELjvyqjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772796294; c=relaxed/simple;
	bh=KdZZnIa2gotVBUTnmb2r5Lmu09KbnuLdgL2f81bMGN8=;
	h=To:Subject:From:Message-Id:Date; b=nXSK9WsvDLEZIJ9aLedrh7KuMwK60ouRaUQSXNgS+jb6EBQJoHiTig/JAHWymY1GfFaUH2QPK+crwemgpoAt/MeFBhcJXNTrMU8sbUThcaL1MmNJRXZ6Ykurt/fg6N9CrUd5askFN5kw80dFutkdFTUziEdI+NSSd5TELdHUfuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OgBQ8uzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OgBQ8uzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665EC2BC86
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772796293;
	bh=KdZZnIa2gotVBUTnmb2r5Lmu09KbnuLdgL2f81bMGN8=;
	h=To:Subject:From:Date:From;
	b=OgBQ8uzd3OXpnefPlc7EUhpbcoDcZdvHe86hQGyQ43OSHapqkzOkMngdSP4giD0Y8
	 CrWewcOUka6w1LUDMy97+jgOqWGjltTGCz1hq03UiANq7DfR7D4axYZgn4G0i/pWwO
	 iM/Fp3CPmuU0NfOgIcNbaGpFkhS6ZwFsSbAjFrE8FrulZEfCGAOHqfL1gkCNzXMgXt
	 2bh6LkqjVOK4lrKVnGfoswoKJjfizHktUd6Ene6kkQK8pum99VEmQyPEl+N3KaOtD0
	 X1GOp57YCVlpCflQPrv0f9AGXYbSAS+ANao1cM2AEl3dwmJFEsub7wLG64loNdT3IL
	 pysSIclGxfgmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E64F01829
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279629359.10240.14388289703664090377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ab222d78c54b494419f5cc6d30a18c3971982ea421a59c6c5dcd354ef3e1a4
Date: Fri, 06 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772796293
