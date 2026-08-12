Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BE336C5A9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786541434; cv=none; b=EOx4XAohHZ9g4C70imF4JGTvP4rTEolVzsXLEDGhyKMPC5PgZGS8yoZfIJ0QTAShEacLL6wa9+oP4estyx3uy36343QTxPyfhZzLfx7WNs/n17ttRskXnAYnOqE5I+OgzWpNWeSrg/8/0ZVzD+1z2OBmlYONFVR6vy0Jb1A0VUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786541434; c=relaxed/simple;
	bh=X7SOuIo6QZXCTaB30htSnRqWSiBtOF10klHGWd8nczg=;
	h=To:Subject:From:Message-Id:Date; b=aW4Qs0/utoor/aw3WLTKQL0+uENL09xYovjEjcBuGjMHYf5ijFXq5IhaaFUsUiBgigF6/K3wouLbxbX4Wx/biBJKw9VKqqstI0dlYVUAAqGLaXukUzC7jfuksQlJmgU8Qsj18Qr6RBV+7AS1Nz6vMrAKQSmguH+55idzaDeul+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUXsGjQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUXsGjQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7270C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786541433;
	bh=X7SOuIo6QZXCTaB30htSnRqWSiBtOF10klHGWd8nczg=;
	h=To:Subject:From:Date:From;
	b=nUXsGjQTzapp4gFHk8MvRHbnbz//GX2UMSOV7/fDo93xhnvI5iyVvPGoLM3z3/H+C
	 5cUq/pVN1wGriS33qjl7Iu/ZW5sjcNc0g7kSZNXwEe/aIdNPat4U4mV1LO/LjzkWuv
	 tmjohZS5swRY2PHjO/WVd2vMJuiF4lh7IOMSGH+50ausOszPFzpurH3nDO3QzjgEfz
	 ZXKxwbKyDOdaDGtgI27hzLuymFDrBZAji8MaIMgymGjjr5in31l6REspaE+cwbs/hu
	 2XgT1xkc/PGfQpk/u6+NjmuawospigDX/0dO9cnAkuskclAqtNtIRR3gbJgqH8jAOC
	 WZy7fNYL/1gwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0375C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654143375.6140.8408109302719156604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e7be0de0d7f07812c8b5ad5ff5ef61c8ca35309dfb231cf12fa87e8452de61
Date: Wed, 12 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786541433
