Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A56357D03
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787610634; cv=none; b=EGrbQ+7zil6nYZBP276Rh9KrPCFboPru/76WNmMq2WB+tGWpUFxDjfUXwWNniVciXfMIpg7QQzWUMJ9QnJ8SyU511FD3edwfdwwzcA/mydVbiS2SrYKIOn2DJeHjGcT9JgEVpC350xpZSzlcRpdolEbFjN6SvQxxWjdF5dNpyYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787610634; c=relaxed/simple;
	bh=U0dEjSjgl0vX6o4o7xz+D048Lc68tO04WAy6/bzweRs=;
	h=To:Subject:From:Message-Id:Date; b=CTUoHTC/5xbX0ZJdynsUW5rky+UuDhjx2zkz4W1UgAneqLGrvliSChfFI0aZc1DQdD1x6lffwV/pNN8W/5LBIUlyf3BTONcV1D7XXZERI29oom6hfeK3Q0W25yQ/g+S9PDMRPCJZmVCDxOpP1MTSBYCkzCRLKzalfjU1spcmimk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxBLs5Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxBLs5Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA20C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787610633;
	bh=U0dEjSjgl0vX6o4o7xz+D048Lc68tO04WAy6/bzweRs=;
	h=To:Subject:From:Date:From;
	b=HxBLs5Ik1jRk3XxPrbGvX3epXPxcWH1gDXBqTfv9erb8v2yFbLCv9dGuO1PpoGKcZ
	 t7lL56i+Ra4hEuvahHQNLbTqRdX1ItG4h5eegGzVq+c+yA9CuyiQKWKLTp72qsX0Zi
	 QohgOb3HCCIIrPGzfBUcLoSijSFRKifzOULmhT9s/tbneJCFku853y9JNgPJLO+k0S
	 XewYCyxZYMz2D71Eyi+LitV4fKSolKgLc1Qpt/0xADH3mBd5MupMVybQ0svF7+Ikiw
	 ou846Nn2+zm1O3uQIZ3+ylZ7xBreI4ZnOaI+gtK+2hyQGFUkj2aXkXirUHVu/GtoIG
	 IkQuEDPriVx6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACEAC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761063368.20707.15738014326582584924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a01e3609048e4ea7b89809acf1a9d66972be0d81010aa856cae0125900a1c13
Date: Mon, 24 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787610633
