Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D79A1BBBE5
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759240194; cv=none; b=a76S/zJoCFJ72NbOuMEwZpIoU3IR6R87mOmnAmhZfknR+yVjXcBGBn2tke84eMSuHuGiTapHtRZfsnJ7JaUST4MaZ9kvfjjcCzRnuxPy7Er8l6mhDb3xVaizcvOP6zjBVvUufFD+DoDjUYXyucIlBXYA8d25OwPo2UXz2WZDz+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759240194; c=relaxed/simple;
	bh=gD/zowCfN9IuIvpiXLc5/UD6yUlZ78N19LemZ8Zor14=;
	h=To:Subject:From:Message-Id:Date; b=BEaMpU2RDCVSkfBag6WApYuFVJ3lz5vzOjXDJloz2EMYsoQZc2+EH7kR/u+8FQw/SiGDROaD8cZH3aXLokMqITZU3AgybW5AhQkzxvx0GDgHyAYVmQUhZ8LOikRYD1KpUJoUuZ63+bJ/XL1Vo76zLTzjH2GhdLVDKI/XOu7nPDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bt4DkSh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bt4DkSh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD258C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759240193;
	bh=gD/zowCfN9IuIvpiXLc5/UD6yUlZ78N19LemZ8Zor14=;
	h=To:Subject:From:Date:From;
	b=Bt4DkSh+V5pUd+rjfmFLIXBt5Cu+VB9+aqgLqiTxhWCZL2nxnooEI95XZHX8kRezG
	 7vyBr8VQbHeKhWJET6J/5WqPfCoTiVKK281q/X+G/7a0Ye40jwSUW1OH0rcAKIspgZ
	 Kb3nsxK0n8Hgu3vJ3rfJyHPUTyO6QGiT64DMmlGGfeTIYdw5LJ/LTuf+r/XST4C17t
	 6qFx4LYtA0sEpnkqvhIYalKQWSXdcg9mTn+Sm35vYSYdyvNdwAx3edB/LzrAHuQOEc
	 XaiCaYEi22Mu3BT8DXNgM/v/y2DC7YMf7L/Z2fzlEiP91sj+JG+RTi7loSucUhqMoQ
	 NVDA+zVfWSqWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ABECCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924019359.5173.757156224193433906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4776cb91660e4d9f51a9f8023942b8016b3a2274cb671b933368b8343954c3
Date: Tue, 30 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759240193
