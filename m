Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C69737EFE6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775599534; cv=none; b=M7hfcf2DY5o7QToa3avLHUpbhtybhEterICCn9dKQV/EBnCa3Vdi3yHqlSCxIcpbe5H34YLsrdNxaum/eSNKXRcM93IjJ1+VULTgemCobZUF8mkRittW7LT+iuUsZZPMonYAYv7qTM/Avlflx64FgtF2wXWg/eKYq4YAttpmoxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775599534; c=relaxed/simple;
	bh=PNgfo8ahEuhDuHCnpI1zYBS/PMNWnAkcc8em9RFkRy8=;
	h=To:Subject:From:Message-Id:Date; b=Y1xnSWa2g+2s92RLt3CllJkq7P4bjK5zp5ZSxuDH+fyUDSilIWV683GquJRY/ON8UxmZX0n2Y0+iyG5T8p7geFOT1SwMMUS0g8TBNik719TUValFhI4exn+MTbMB4zA29Z2mvXqKABG1+24HnYIdf2BH7DdQklnc/NxUEn2SwY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L62LajgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L62LajgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D114C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775599534;
	bh=PNgfo8ahEuhDuHCnpI1zYBS/PMNWnAkcc8em9RFkRy8=;
	h=To:Subject:From:Date:From;
	b=L62LajgMwiCp2hTh1hvgU2tVlkRmbBBkhqHtBp9rcq2R5sa/iHm6T+ECjXn0WgZQV
	 EOghEbJ2Yy6QUNEUCHmOQB47aTHVvLFq5i1++RxGTcRp97R/anJJPkoo9QV3zuEMoB
	 JpgVixJe+N5Ab4ax1SFqepshZ7zrpLrwmpOPqauo4+y/oeUt0o5pQ3mdZSnRw4XnIb
	 mEAIl+uTQGYiZX2cbKVrfscVc00N723l4NHuK62wDlS2mxTAjGhP6WNE0pDX7tEKEW
	 kmJW297XUNj2C6hBzbt/PXaFgLRCdwXsSL3nM4A8/kFlIeiIzLRX9qOHkWpA/8vPwZ
	 fgNA37/hzhlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE758EDB7D0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559953387.26191.14679634579361525084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdac666070119f983787f16de3e296cd825c834c8ee75a73b9e49ee48eddfa4
Date: Tue, 07 Apr 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775599533
